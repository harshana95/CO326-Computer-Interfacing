import com.fazecast.jSerialComm.*;
import com.fazecast.jSerialComm.SerialPort;

import java.util.Iterator;

public class Main {
    static int NO_OF_DEVICES=0;
    static Device[] devices;
    static SerialPort comPort;
    public static void main(String[] args) {

        SerialPort[] SP = SerialPort.getCommPorts();

//        SerialPort comPort = SerialPort.getCommPorts()[0];
//        comPort.openPort();

        for (SerialPort sp : SP) {
            System.out.println(sp);
        }




//        FrameNoOfDevices.draw();



    }
}
