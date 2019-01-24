import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class ActionListener_NoOfDevicesOkay implements ActionListener{

//    @Override
    public void actionPerformed(ActionEvent e) {
//SUREN
        Main.NO_OF_DEVICES= (Integer) FrameNoOfDevices.jSpin.getValue();
        FrameNoOfDevices.erase();
    }
}
