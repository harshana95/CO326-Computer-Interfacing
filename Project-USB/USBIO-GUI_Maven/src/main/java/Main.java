import com.fazecast.jSerialComm.*;
import com.fazecast.jSerialComm.SerialPort;

import java.util.Iterator;

public class Main {
    static int NO_OF_DEVICES=0;
    static Device[] devices;
    static SerialPort comPort;
    public static void main(String[] args) {

        initPort();



        FrameNoOfDevices.draw();



    }


    public static void initPort(){
        SerialPort[] SP = SerialPort.getCommPorts();


        for (SerialPort sp : SP) {
            System.out.println(sp);
        }

        comPort = SP[0];
        comPort.openPort();
    }
}
