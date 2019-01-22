import javax.swing.*;
import java.awt.*;

public class FrameNoOfDevices {
    static JSpinner jSpin;
    static JFrame frame;
    public static void draw(){
        frame=new JFrame("Welcome!");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setVisible(true);

        JPanel jp=new JPanel();
        jp.setLayout(new GridLayout(2,2));

        jp.add(new JLabel("No of devices:"),0,0);

        jSpin=new JSpinner();
        jp.add(jSpin,0,1);

        JButton jBut=new JButton("Okay");
        jBut.addActionListener(new ActionListener_NoOfDevicesOkay());
        jp.add(jBut,0,2);



        frame.setContentPane(jp);
        frame.pack();
        frame.setLocationRelativeTo(null);
        frame.setVisible(true);
    }

    public static void erase(){
        Main.devices=new Device[Main.NO_OF_DEVICES];
        FrameDeviceInfo.draw();
        frame.dispose();
    }
}
