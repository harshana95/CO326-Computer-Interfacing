public class Device {
    enum deviceType{
        INPUT,OUTPUT
    }
    public deviceType type;
    public String label;
    public byte val;

    Device(){

    }
    Device(deviceType type){
        this.type=type;
    }

    Device(deviceType type,String label){
        this.type=type;
        this.label=label;
    }

    public String getLabel(){
        return this.label;
    }

    public String getTypeString(){
        if(this.type==deviceType.INPUT)return "IN";
        else return "OUT";
    }

    public deviceType getType(){
        return this.type;
    }


    public int myDevID(){
        int devIdx;
        for(devIdx=0;devIdx<Main.NO_OF_DEVICES;devIdx++){
            if(Main.devices[devIdx]==this)
                break;
        }
        return devIdx;
    }


    public String read() {

        byte[] toWrite=new byte[2];
        toWrite[0]=Byte.parseByte("01010000",2);

        int devIdx=myDevID();

        toWrite[1]=Byte.parseByte(Integer.toBinaryString(devIdx));

        System.out.print("Ready to send: ");
        for(int b=0;b<toWrite.length;b++)System.out.print(Integer.toBinaryString((int)toWrite[b])+" ");
        System.out.println();

        Main.comPort.writeBytes(toWrite,2);

        byte[] readBytes=new byte[2];

        try{
            Main.comPort.readBytes(readBytes,2);
            System.out.println("DEBUG: Finished reading "+Integer.toBinaryString(readBytes[1])+" from "+devIdx);
        }
        catch (Exception e){
            System.out.println("DEBUG: ERROR reading from "+devIdx);
        }

        return Byte.toString(readBytes[1]);




    }


    public void write(String data){
        byte[] toWrite=new byte[3];
        toWrite[0]=Byte.parseByte("01010001",2);


        int devIdx=myDevID();

        toWrite[1]=Byte.parseByte(Integer.toBinaryString(devIdx));

        toWrite[2]=Byte.parseByte(data,2);

        System.out.print("Ready to send: ");
        for(int b=0;b<toWrite.length;b++)System.out.print(Integer.toBinaryString((int)toWrite[b])+" ");
        System.out.println();


        try{
            Main.comPort.writeBytes(toWrite,3);
            System.out.println("DEBUG: Finished writing "+data+" to "+devIdx);
        }
        catch (Exception e){
            System.out.println("DEBUG: ERROR writing "+data+" to "+devIdx);
        }
        return;
    }





}
