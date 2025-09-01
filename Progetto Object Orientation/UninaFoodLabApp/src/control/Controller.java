package control;
import java.awt.EventQueue;
import java.awt.Font;
import java.awt.FontFormatException;
import java.awt.GraphicsEnvironment;
import java.io.IOException;
import java.sql.SQLException;

import javax.swing.UIManager;

import DAO.*;
import boundary.*;
import entity.*;

public class Controller {
	
	public LoginFrame loginFrame;
	public HomepageChef homepageChef;
	private ChefDAO chefDao;
	
	
	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		setLookAndFeel();
		Controller theController = new Controller();
	}
	
	public Controller() {
		loginFrame = new LoginFrame(this);
		homepageChef = new HomepageChef(this);
		loginFrame.setVisible(true);
	}
	
	
	public Chef LoginChef(String username, String password) {
		chefDao = new ChefDAO();
		try {
			Chef chef = chefDao.creaChef(username, password);
		
			if (chef != null) {
				loginFrame.setVisible(false);
				homepageChef.setVisible(true);
				return chef;
			} else {
				loginFrame.showErrorMessage("Chef non trovato!");
				return null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			loginFrame.showErrorMessage("Errore di connessione al database.");
			return null;
		}
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
