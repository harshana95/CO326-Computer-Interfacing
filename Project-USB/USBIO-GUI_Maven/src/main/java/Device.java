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




}
