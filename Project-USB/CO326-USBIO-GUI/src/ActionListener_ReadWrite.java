import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class ActionListener_ReadWrite implements ActionListener {
    @Override
    public void actionPerformed(ActionEvent e) {
        int devID;
        for(devID=0;devID<Main.NO_OF_DEVICES;devID++){
            if(e.getSource()==FrameControlPanel.readWriteButton[devID])
                break;
        }

        if(Main.devices[devID].getType()== Device.deviceType.INPUT){
            System.out.println("DEBUG: Read from device "+devID);
            String data=((InputDevice)Main.devices[devID]).read();
            FrameControlPanel.byteValue[devID].setText(data);
        }
        else{
            System.out.println("DEBUG: Write to device "+devID);
            String data=FrameControlPanel.byteValue[devID].getText();
            ((OutputDevice)Main.devices[devID]).write(data);
        }
    }
}
