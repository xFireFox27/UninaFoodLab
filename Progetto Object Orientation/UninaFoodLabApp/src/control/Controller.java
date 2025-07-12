package control;
import java.awt.EventQueue;
import java.awt.Font;
import java.awt.FontFormatException;
import java.awt.GraphicsEnvironment;
import java.io.IOException;

import javax.swing.UIManager;

import boundary.LoginFrame;

public class Controller {
	
	public LoginFrame loginFrame;
	
	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		setLookAndFeel();
		Controller theController = new Controller();
	}
	
	public Controller() {
		loginFrame = new LoginFrame();
		loginFrame.setVisible(true);
	}
	
	
	
	
	
	
	private static void setLookAndFeel() {
	    try {
	        // Option 1: Cross-platform Look and Feel (recommended for consistency)
	        UIManager.setLookAndFeel(UIManager.getCrossPlatformLookAndFeelClassName());
	        
	        // Option 2: System Look and Feel (matches the OS but varies between systems)
	        // UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
	        
	        // Option 3: Nimbus Look and Feel (modern appearance)
	        // for (UIManager.LookAndFeelInfo info : UIManager.getInstalledLookAndFeels()) {
	        //     if ("Nimbus".equals(info.getName())) {
	        //         UIManager.setLookAndFeel(info.getClassName());
	        //         break;
	        //     }
	        // }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}

}
