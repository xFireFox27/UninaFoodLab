package control;
import java.awt.EventQueue;
import java.awt.Font;
import java.awt.FontFormatException;
import java.awt.GraphicsEnvironment;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.swing.UIManager;

import DAO.*;
import boundary.*;
import entity.*;

public class Controller {
	
	public LoginFrame loginFrame;
	public HomepageChef homepageChef;
	public CorsiFrame corsiFrame;
	public SessioniFrame sessioniFrame;
	public RicetteFrame ricetteFrame;
	private ChefDAO chefDao;
	private CorsoDAO corsoDao;
	private SessioniInPresenzaDAO sessioneDao;
	private RicettaDAO ricettaDao;
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
		
		loginFrame.setVisible(true);
	}
	
	
	public void LoginChef(String username, String password) {
		chefDao = new ChefDAO();
		try {
			chef = chefDao.creaChef(username, password);
		
			if (chef != null) {
				loginFrame.setVisible(false);
				homepageChef = new HomepageChef(this);
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
	
	
	public void ApriListaCorsi() {
		homepageChef.setVisible(false);
		corsiFrame = new CorsiFrame(this);
		corsiFrame.setVisible(true);
		getCorsiChef();
	}
	
	
	
	public List<Corso> getCorsiChef() {
	    if (corsoDao == null) {
	        corsoDao = new CorsoDAO();
	        }
	    try {
	        List<Corso> corsi = corsoDao.getCorsiByChef(chef);
	        return corsi;
	    } catch (SQLException e) {
	        e.printStackTrace();
	        corsiFrame.showErrorMessage("Errore nel recupero dei corsi dal database.");
	        return null;
	    }
	    
	}

	public void TornaHomepageFromCorsi() {
		corsiFrame.setVisible(false);
		homepageChef.setVisible(true);
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
			return chef.getNome();
		}
		return "Chef";
	}
	

	public void ApriGestioneSessioni(Corso corso) {
	    corsiFrame.setVisible(false);
	    sessioniFrame = new SessioniFrame(this, corso);
	    sessioniFrame.setVisible(true);
	}

	public void TornaCorsiFromSessioni() {
	    sessioniFrame.setVisible(false);
	    corsiFrame.setVisible(true);
	}

	public List<SessioneInPresenza> getSessioniByCorso(Corso corso) {
	    if (sessioneDao == null) {
	        sessioneDao = new SessioniInPresenzaDAO();
	    }
	    try {
	        return sessioneDao.getSessioniByCorso(corso);
	    } catch (SQLException e) {
	        e.printStackTrace();
	        return null;
	    }
	}

	public List<Ricetta> getAllRicette() {
	    if (ricettaDao == null) {
	        ricettaDao = new RicettaDAO();
	    }
	    try {
	        return ricettaDao.getAllRicette();
	    } catch (SQLException e) {
	        e.printStackTrace();
	        return null;
	    }
	}
	
	public void ApriGestioneRicette(SessioneInPresenza sessione) {
	    sessioniFrame.setVisible(false);
	    ricetteFrame = new RicetteFrame(this, sessione);
	    ricetteFrame.setVisible(true);
	}

	public void TornaSessioniFromRicette() {
	    ricetteFrame.setVisible(false);
	    sessioniFrame.setVisible(true);
	}



}

