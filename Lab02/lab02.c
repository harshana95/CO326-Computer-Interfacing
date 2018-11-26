#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/io.h>
#include <time.h>

#define IR_BIT 7
#define SWITCH_BIT 5

#define BASE 0x378 //Papallel prt base address
#define TRUE 1
#define FALSE 0
int dataPort=BASE;
int statusPort=BASE+1;
unsigned char status, data;
typedef int BOOL;


int intToSevenSegArr[10][7]={{1,1,1,1,1,1,0},{0,1,1,0,0,0,0},{1,1,0,1,1,0,1},{1,1,1,1,0,0,1},{0,1,1,0,0,1,1},{1,0,1,1,0,1,1},{1,0,1,1,1,1,1},{1,1,1,0,0,0,0},{1,1,1,1,1,1,1},{1,1,1,0,0,1,1}};
BOOL irDetected=FALSE;
BOOL switchPressed=FALSE;

#define WAIT 0
#define COMING 5
#define CAME 10
#define GOING -5
#define GONE -10

int stateVariable=WAIT;


unsigned char intToSevenSeg(int N){
	unsigned char ans=0;
	int i;
	for(i=0;i<7;i++){
		ans=ans<<1;
		ans+=intToSevenSegArr[N][i];
	}
	ans=ans<<1;
	return ans;
}


BOOL bitHigh(unsigned char c,int bitIndex){
	if((c&(1<<bitIndex))>0)return TRUE;
	else return FALSE;
}

char* boolPrint(BOOL b){
	if(b==TRUE) return "TRUE";
	else return "FALSE";

}

void main(int argC,char** argV){
	int people=0;
	if(TRUE){
		if(ioperm(BASE,1,1)){
			fprintf(stderr,"Access denied to %x,\n",BASE);
			exit(1);
		}
		else{
			printf("Access gained\n");
		}

		if(ioperm(statusPort,1,1)){
			fprintf(stderr,"Access denied to %x,\n",BASE);
			exit(1);
		}
		else{
			printf("Access gained\n");
		}
	}
	if(argV[1][0]=='t'){


                int num=atoi(argV[2]);
                int bit=atoi(argV[3]);

                printf("Num=%d, Bit=%d, BitVal=%s\n",num,bit,boolPrint(bitHigh(num,bit)));
		exit(0); 

	}
	while(TRUE){

		status=inb(statusPort);

		irDetected=bitHigh(status,IR_BIT);
		switchPressed=bitHigh(status,SWITCH_BIT);
		
		if(argV[1][0]=='p'){//print all parallel port bits
			printf("Parallel Input= %d%d%d%d%d%d%d%d\n",bitHigh(status,7),bitHigh(status,6),bitHigh(status,5),bitHigh(status,4),bitHigh(status,3),bitHigh(status,2),bitHigh(status,1),bitHigh(status,0));

		}
		else if(argV[1][0]=='c'){//check sensors
			printf("IR= %s : Switch=%s\n",boolPrint(irDetected),boolPrint(switchPressed));
			sleep(0.5);
		}

		
		else if(argV[1][0]=='d'){//door
			switch(stateVariable){
				case WAIT:
					if(switchPressed){
						printf("State change from WAIT to COMING\n");
						stateVariable=COMING;
					}
					else if(irDetected){
						printf("State change from WAIT to GOING\n");
						stateVariable=GOING;
					}
					break;
				case COMING:
					if(irDetected){
						printf("State change from COMING to CAME\n");
						people++;
						stateVariable=CAME;
					}
					break;
				case GOING:
					if(switchPressed){
						printf("State change from GOING to GONE\n");
						people--;
						stateVariable=GONE;
					}
					break;
				case CAME:
					if((!switchPressed)&(!irDetected)){
						printf("State change from CAME to WAIT\n");
						stateVariable=WAIT;
					}
					break;
				case GONE:
					if((!switchPressed)&(!irDetected)){
                                                printf("State change from GONE to WAIT\n");
                                                stateVariable=WAIT;
                                        }
                                        break;
  

			}
			if(people<0)people=0;
			unsigned char pss=intToSevenSeg(people);
			outb(pss,dataPort);
			printf("No of people=%d  ",people);
			printf("SSD Output= %d%d%d%d%d%d%d%d\n",bitHigh(pss,7),bitHigh(pss,6),bitHigh(pss,5),bitHigh(pss,4),bitHigh(pss,3),bitHigh(pss,2),bitHigh(pss,1),bitHigh(pss,0));

		}

	}


}
