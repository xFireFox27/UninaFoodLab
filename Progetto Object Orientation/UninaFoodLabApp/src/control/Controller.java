package control;

import java.awt.EventQueue;
import java.awt.Font;
import java.awt.FontFormatException;
import java.awt.GraphicsEnvironment;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import javax.swing.DefaultListModel;
import javax.swing.UIManager;
import javax.swing.JComboBox;

import DAO.*;
import boundary.*;
import entity.*;

public class Controller {
	
	public LoginFrame loginFrame;
	public HomepageChef homepageChef;
	public CorsiFrame corsiFrame;
	public SessioniFrame sessioniFrame;
	public RicetteFrame ricetteFrame;
	public InserimentoSessioneFrame inserimentoSessioneFrame;
	private ChefDAO chefDao;
	private CorsoDAO corsoDao;
	private SessioniInPresenzaDAO sessioneDao;
	private SessioneOnlineDAO sessioneOnlineDao;
	private RicettaDAO ricettaDao;
	private PreparaDAO preparaDao;
	private Chef chef;
	private NotificheFrame notificheFrame;
	private NotificaDAO notificaDao;
	private InvioNotificaFrame invioNotificaFrame;
	
	
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
	
	public void ApriNotifiche() {
		
		homepageChef.setVisible(false);
		notificheFrame = new NotificheFrame(this);
		notificheFrame.setVisible(true);
	}
	
	public List<Notifica> getNotificheChef(){
		if(notificaDao == null) {
			notificaDao = new NotificaDAO();
		}
		try {
			List<Notifica> notifiche = notificaDao.getNotificheByChef(chef);
			return notifiche;
		}
		catch (SQLException e) {
			e.printStackTrace();
			notificheFrame.showErrorMessage("Errore nel recupero delle notifiche dal database.");
			return null;
		}
	}
	
	public DefaultListModel<String> inizializzaListaNotifiche(List<Notifica> notifiche, DefaultListModel<String> listModel) {
		listModel.clear();
		if (notifiche == null || notifiche.isEmpty()){
			listModel.addElement("Non ci sono notifiche.");
		}
		else {
			for (Notifica notifica : notifiche) {
				String elemento = notifica.getOggetto() + " - " + "(" + notifica.getDataInvio().toString() + ")";
				listModel.addElement(elemento);
			}
		}
		return listModel;
	}
	
	public String mostraTestoNotifica(List<Notifica> notifiche, int index) {
		if(index >= 0 && index < notifiche.size() &&notifiche != null) {
			return notifiche.get(index).getTesto();
		}
		else {
			return "Il testo della notifica apparirà qui";
		}
	}
	
	public void ApriInvioNotifica() {
		invioNotificaFrame = new InvioNotificaFrame(this);
		invioNotificaFrame.setVisible(true);
	}
	
	public JComboBox<Corso> inizializzaComboBoxCorsi(List<Corso> corsi){
		JComboBox<Corso> comboBox = new JComboBox<>();
		if (corsi != null && !corsi.isEmpty()) {
			for (Corso corso : corsi) {
				comboBox.addItem(corso);
			}
		}
		return comboBox;
	}
	
	public void inviaNotificaUnCorso(String oggetto, String testo, Corso corso) {
	    if (notificaDao == null) {
	        notificaDao = new NotificaDAO();
	    }
	    try {
	        Notifica notifica = notificaDao.inviaNotificaAdUnCorso(chef, oggetto, testo, corso);
	        if (notifica != null) {
	            invioNotificaFrame.setVisible(false);
	            // Create a new list model for the refresh
	            DefaultListModel<String> listModel = new DefaultListModel<>();
	            List<Notifica> notificheAggiornate = getNotificheChef();
	            notificheFrame.refreshListaNotifiche(notificheAggiornate, listModel);
	        }
	        else {
	            invioNotificaFrame.showErrorMessage("Errore nell'invio della notifica.");
	        }
	    }
	    catch (SQLException e) {
	        e.printStackTrace();
	        invioNotificaFrame.showErrorMessage("Errore di connessione al database.");
	    }
	}

	public void inviaNotificaTuttiCorsi(String oggetto, String testo) {
	    if (notificaDao == null) {
	        notificaDao = new NotificaDAO();
	    }
	    try {
	        Notifica notifica = notificaDao.inviaNotificaATuttiICorsi(chef, oggetto, testo);
	        if (notifica != null) {
	            invioNotificaFrame.setVisible(false);
	            DefaultListModel<String> listModel = new DefaultListModel<>();
	            List<Notifica> notificheAggiornate = getNotificheChef();
	            notificheFrame.refreshListaNotifiche(notificheAggiornate, listModel);
	        }
	        else {
	            invioNotificaFrame.showErrorMessage("Errore nell'invio della notifica.");
	        }
	    }
	    catch (SQLException e) {
	        e.printStackTrace();
	        invioNotificaFrame.showErrorMessage("Errore di connessione al database.");
	    }
	}

	
	public void TornaHomepageFromNotifiche() {
		notificheFrame.setVisible(false);
		homepageChef.setVisible(true);
	}
	
	
	
	private static void setLookAndFeel() {
	    try {
	        UIManager.setLookAndFeel(UIManager.getCrossPlatformLookAndFeelClassName());
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
	
	public List<SessioneOnline> getSessioniOnlineByCorso(Corso corso) {
	    if (sessioneOnlineDao == null) {
	        sessioneOnlineDao = new SessioneOnlineDAO();
	    }
	    try {
	        return sessioneOnlineDao.getSessioniByCorso(corso);
	    } catch (SQLException e) {
	        e.printStackTrace();
	        return null;
	    }
	}

	public void ApriInserimentoSessione(Corso corso) {
	    inserimentoSessioneFrame = new InserimentoSessioneFrame(this, corso);
	    inserimentoSessioneFrame.setVisible(true);
	}

	
	public void TornaSessioniFromInserimento() {
	    sessioniFrame.aggiornaListeSessioni();
	    inserimentoSessioneFrame.dispose();
	}

	public void inserisciSessioneInPresenza(Timestamp data, int durata, int numSessione, Corso corso, String luogo, String aula) {
	    if (sessioneDao == null) {
	        sessioneDao = new SessioniInPresenzaDAO();
	    }
	    try {
	        SessioneInPresenza nuovaSessione = new SessioneInPresenza(data, durata, numSessione, corso, luogo, aula);
	        sessioneDao.insertSessione(nuovaSessione);
	        
	        // Aggiorna la lista delle sessioni nel frame
	        if (sessioniFrame != null) {
	            // Ricarica le sessioni per aggiornare la vista
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	        throw new RuntimeException("Errore durante l'inserimento della sessione in presenza: " + e.getMessage());
	    }
	}

	public void inserisciSessioneOnline(Timestamp data, int durata, int numSessione, Corso corso, String link) {
	    if (sessioneOnlineDao == null) {
	        sessioneOnlineDao = new SessioneOnlineDAO();
	    }
	    try {
	        SessioneOnline nuovaSessione = new SessioneOnline(data, durata, numSessione, corso, link);
	        sessioneOnlineDao.insertSessione(nuovaSessione);
	        
	        // Aggiorna la lista delle sessioni nel frame
	        if (sessioniFrame != null) {
	            // Ricarica le sessioni per aggiornare la vista
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	        throw new RuntimeException("Errore durante l'inserimento della sessione online: " + e.getMessage());
	    }
	}

	
	public boolean salvaRicettePerSessione(SessioneInPresenza sessione, List<Ricetta> ricetteSelezionate) {
	    if (preparaDao == null) {
	        preparaDao = new PreparaDAO();
	    }
	    try {
	        // Chiamata al DAO per salvare le associazioni
	        preparaDao.salvaAssociazioniSessioneRicette(sessione, ricetteSelezionate);
	        return true;
	    } catch (SQLException e) {
	        e.printStackTrace();
	        return false;
	    }
	}

	
	public List<Ricetta> getRicettePerSessione(SessioneInPresenza sessione) {
	    if (preparaDao == null) {
	        preparaDao = new PreparaDAO();
	    }
	    try {
	        return preparaDao.getRicettePerSessione(sessione);
	    } catch (SQLException e) {
	        e.printStackTrace();
	        return null;
	    }
	}

	public void apriNuovoCorsoDialog() {
		NuovoCorsoDialog nuovoCorsoDialog = new NuovoCorsoDialog(homepageChef, this);
		nuovoCorsoDialog.setVisible(true);
	}
	
	//Recupera tutti i topic per la combobox
	public ArrayList<String> getTopicFromDB() {
		CorsoDAO corsoDao = new CorsoDAO();
		return corsoDao.getTopic();
	}
	
	public void creaNuovoCorso(String titolo, String frequenza, String numLezioniStr, String annoFrequenzaStr, String date, String topic, NuovoCorsoDialog nuovoCorsoDialog) {
		
		int numLezioni, annoFrequenza;
		try {
			numLezioni = Integer.parseInt(numLezioniStr);
			annoFrequenza = Integer.parseInt(annoFrequenzaStr);
		} catch (NumberFormatException e) {
			homepageChef.showErrorMessage("Numero lezioni e anno frequenza devono essere valori numerici.");
			return;
		}
		
		CorsoDAO corsoDao = new CorsoDAO();
		TopicDAO topicDao = new TopicDAO(); 
		Topic topicCorso = topicDao.getTopicByName(topic); 
		
		try {
			Date sqlDate = new Date(0);  
			sqlDate = Date.valueOf(date.toString()); // Converte la stringa in java.sql.Date (la stringa deve essere in formato "yyyy-MM-dd")
			Corso corso = corsoDao.creaCorso(titolo, frequenza, numLezioni, annoFrequenza, sqlDate, topicCorso, chef); 
			if (corso != null) {
				nuovoCorsoDialog.setVisible(false);
			} else {
				homepageChef.showErrorMessage("Errore nella creazione del corso."); 
			}
		} catch (IllegalArgumentException e) {
			homepageChef.showErrorMessage("Formato data non valido. Usare il formato yyyy-MM-dd.");
		} catch (SQLException e) {
			String fullMessage = e.getMessage();
	        String firstLine = fullMessage.split("\n")[0];
	        homepageChef.showErrorMessage(firstLine);
		}
	}
	
	public void tornaHomepageFromCreaCorso(NuovoCorsoDialog nuovoCorsoDialog) {
		nuovoCorsoDialog.setVisible(false);
		homepageChef.setVisible(true);
	}
	
	public void ApriRiepilogoMensile() {
	    homepageChef.setVisible(false);
	    RiepilogoMensileFrame riepilogoFrame = new RiepilogoMensileFrame(this);
	    riepilogoFrame.setVisible(true);
	}

	public void TornaHomepageFromRiepilogo(RiepilogoMensileFrame riepilogoFrame) {
	    riepilogoFrame.setVisible(false);
	    homepageChef.setVisible(true);
	}

	public List<SessioneInPresenza> getSessioniByCorsoEMese(Corso corso, int mese, int anno) {
	    if (sessioneDao == null) {
	        sessioneDao = new SessioniInPresenzaDAO();
	    }
	    try {
	        return sessioneDao.getSessioniByCorsoEMese(corso, mese, anno);
	    } catch (SQLException e) {
	        e.printStackTrace();
	        return null;
	    }
	}

	public List<SessioneOnline> getSessioniOnlineByCorsoEMese(Corso corso, int mese, int anno) {
	    if (sessioneOnlineDao == null) {
	        sessioneOnlineDao = new SessioneOnlineDAO();
	    }
	    try {
	        return sessioneOnlineDao.getSessioniByCorsoEMese(corso, mese, anno);
	    } catch (SQLException e) {
	        e.printStackTrace();
	        return null;
	    }
	}



}

