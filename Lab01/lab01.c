#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/io.h>
#include <time.h>
#define BASE 0x378 //Papallel prt base address
#define TRUE 1
int dataPort=BASE;
int statusPort=BASE+1;
unsigned char status, data;

int intToSevenSegArr[10][7]={{1,1,1,1,1,1,0},{0,1,1,0,0,0,0},{1,1,0,1,1,0,1},{1,1,1,1,0,0,1},{0,1,1,0,0,1,1},{1,0,1,1,0,1,1},{1,0,1,1,1,1,1},{1,1,1,0,0,0,0},{1,1,1,1,1,1,1},{1,1,1,0,0,1,1}};

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

unsigned char intToBCD(int N){
	unsigned char ans=N%256;
	return ans;

}

void main(int argC,char** argV){
	
	if(ioperm(BASE,1,1)){
		fprintf(stderr,"Access denied to %x,\n",BASE);
		exit(1);
	}
	else{
		printf("Access gained\n");
	}
	
	if(argV[1][0]=='d'){
		unsigned char c=argV[2][0];
		unsigned char cc=c-'a';
		data=1<<cc;
//		data=~data;
		outb(data,dataPort);
		printf("Displaying char %c as digit %d in binary form %d%d%d%d%d%d%d%d\n",c,data,(data&0x80)>0,(data&0x40)>0,(data&0x20)>0,(data&0x10)>0,(data&0x08)>0,(data&0x04)>0,(data&0x02)>0,(data&0x01)>0);
		sleep(1000);
		exit(0);
	}

	
	while(TRUE){
		outb(255,dataPort);
		int i;
		for(i=0;i<10;i++){
			if(argV[1][0]=='s')	data=intToSevenSeg(i);
			else if(argV[1][0]=='b')data=intToBCD(i);
//			data=~data;
			outb(data,dataPort);
			printf("Displaying %d as %d%d%d%d%d%d%d%d\n",i,(data&0x80)>0,(data&0x40)>0,(data&0x20)>0,(data&0x10)>0,(data&0x08)>0,(data&0x04)>0,(data&0x02)>0,(data&0x01)>0);
			sleep(1);
		}

	}

}


