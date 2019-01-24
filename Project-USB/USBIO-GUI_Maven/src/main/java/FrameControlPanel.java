import javax.swing.*;
import java.awt.*;

public class FrameControlPanel extends JPanel{
    static JFrame frame;
    static JPanel panel;
    static JTextField[] byteValue;
    static JButton[] readWriteButton;
    public static void draw(){
        frame=new JFrame("CO327 Project -USB IO");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setVisible(true);

        panel=new FrameControlPanel();




        frame.setContentPane(panel);
        frame.pack();
        frame.setLocationRelativeTo(null);
        frame.setVisible(true);
    }

    FrameControlPanel(){
        this.setLayout(new GridLayout(Main.NO_OF_DEVICES,7));
        byteValue=new JTextField[Main.NO_OF_DEVICES];
        readWriteButton=new JButton[Main.NO_OF_DEVICES];
        for(int d=0;d<Main.NO_OF_DEVICES;d++){
            this.add(new JLabel("Dev "+d));
            this.add(new JLabel(Main.devices[d].getLabel()+"\t"));
            this.add(new JLabel(Main.devices[d].getTypeString()+"\t"));
            byteValue[d]=new JTextField();
            byteValue[d].setText("00000000");
            this.add(byteValue[d]);
            if(Main.devices[d].getType()== Device.deviceType.INPUT)
                readWriteButton[d]=new JButton("Read");
            else readWriteButton[d]=new JButton("Write");
            readWriteButton[d].addActionListener(new ActionListener_ReadWrite());
            this.add(readWriteButton[d]);
        }
    }
}
