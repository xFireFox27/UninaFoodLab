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
	private Chef chef;
	
	
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
	
	
	public void LoginChef(String username, String password) {
		chefDao = new ChefDAO();
		try {
			chef = chefDao.creaChef(username, password);
		
			if (chef != null) {
				loginFrame.setVisible(false);
				homepageChef.setVisible(true);
				return;
			} else {
				loginFrame.showErrorMessage("Credenziali errate. Chef non trovato!");
				return;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			loginFrame.showErrorMessage("Errore di connessione al database.");
			return;
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
	
	public String getNomeChefCorrente() {
	    if (chef != null) {
	        String nome = chef.getNome();
	        System.out.println("Debug - Nome chef: " + nome); // Debug
	        return nome != null && !nome.isEmpty() ? nome : "Chef";
	    }
	    return "Chef";
	}


}

