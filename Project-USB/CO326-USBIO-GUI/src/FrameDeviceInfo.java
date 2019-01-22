import javax.swing.*;
import java.awt.*;

public class FrameDeviceInfo {
    static JFrame frame;
    static JTextField[] textFieldDeviceLabels;
    static JRadioButton[][] radioButtonsInOut;
    static ButtonGroup[] buttonGroupsInOut;

    public static void draw(){
        frame=new JFrame("Device info!");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setVisible(true);

        JPanel jp=new JPanel();
        jp.setLayout(new GridLayout(Main.NO_OF_DEVICES+1,4));
        textFieldDeviceLabels=new JTextField[Main.NO_OF_DEVICES];
        radioButtonsInOut=new JRadioButton[Main.NO_OF_DEVICES][2];
        buttonGroupsInOut=new ButtonGroup[Main.NO_OF_DEVICES];

        for(int d=0;d<Main.NO_OF_DEVICES;d++){
            System.out.println("DEBUG: Device"+d);
            jp.add(new JLabel("Dev "+d));
            textFieldDeviceLabels[d]=new JTextField("Device Label "+d);
            jp.add(textFieldDeviceLabels[d]);


            radioButtonsInOut[d][0]=new JRadioButton("in");
            radioButtonsInOut[d][1]=new JRadioButton("out");
            buttonGroupsInOut[d]=new ButtonGroup();
            buttonGroupsInOut[d].add(radioButtonsInOut[d][0]);
            buttonGroupsInOut[d].add(radioButtonsInOut[d][1]);

            jp.add(radioButtonsInOut[d][0]);
            jp.add(radioButtonsInOut[d][1]);
        }





        frame.setContentPane(jp);
        frame.pack();
        frame.setLocationRelativeTo(null);
        frame.setVisible(true);
    }
}
