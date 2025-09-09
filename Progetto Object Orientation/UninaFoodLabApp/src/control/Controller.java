package control;

import java.sql.Date;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import javax.swing.DefaultListModel;
import javax.swing.UIManager;
import javax.swing.JComboBox;
import javax.swing.JOptionPane;

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
	
	public static void main(String[] args) {
		setLookAndFeel();
		Controller theController = new Controller();
	}
	
	//all'avvio del programma viene aperta una finestra di login
	public Controller() {
		loginFrame = new LoginFrame(this);
		loginFrame.setVisible(true);
	}
	
	public void LoginChef(String username, String password) {
		chefDao = new ChefDAO();
		
		try {
			chef = chefDao.creaChef(username, password);//crea un oggetto chef con i dati presi dal db
			//se il dao trova una corrispondenza tra username e password nel db (e quindi l'oggetto chef viene creato), viene aperta la homepage
			if (chef != null) {
				loginFrame.setVisible(false);
				homepageChef = new HomepageChef(this);
				homepageChef.setVisible(true);
				return;
			//altrimenti viene mostrato un messaggio di errore
			} else {
				loginFrame.showErrorMessage("Credenziali errate. Chef non trovato.");
				return;
			}
		} catch (SQLException e) {//in caso di errore di connessione al db viene mostrato un messaggio di errore
			e.printStackTrace();
			loginFrame.showErrorMessage("Errore di connessione al database.");
			return;
		}
	}
	
	//apre il frame della gestione dei corsi
	public void ApriListaCorsi() {
		homepageChef.setVisible(false);
		corsiFrame = new CorsiFrame(this);
		corsiFrame.setVisible(true);
		getCorsiChef();
	}
	
	//recupera tutti i corsi associati allo chef loggato
	public List<Corso> getCorsiChef() {
	    if (corsoDao == null) {
	        corsoDao = new CorsoDAO();
        }
	    try {
	        List<Corso> corsi = corsoDao.getCorsiByChef(chef);//chiamata al dao per recuperare i corsi dal db
	        return corsi;
	    } catch (SQLException e) {//in caso di errore di connessione al db viene mostrato un messaggio di errore
	        e.printStackTrace();
	        corsiFrame.showErrorMessage("Errore nel recupero dei corsi dal database.");
	        return null;
	    }
	}

	public void TornaHomepageFromCorsi() {
		corsiFrame.setVisible(false);
		homepageChef.setVisible(true);
	}
	
	//apre il frame delle notifiche
	public void ApriNotifiche() {
		homepageChef.setVisible(false);
		notificheFrame = new NotificheFrame(this);
		notificheFrame.setVisible(true);
	}
	
	//recupera tutte le notifiche associate allo chef loggato
	public List<Notifica> getNotificheChef(){
		if(notificaDao == null) {
			notificaDao = new NotificaDAO();
		}
		try {
			List<Notifica> notifiche = notificaDao.getNotificheByChef(chef);//chiamata al dao per recuperare le notifiche dal db
			return notifiche;
		} catch (SQLException e) {//in caso di errore di connessione al db viene mostrato un messaggio di errore
			e.printStackTrace();
			notificheFrame.showErrorMessage("Errore nel recupero delle notifiche dal database.");
			return null;
		}
	}
	
	//Inizializza la lista delle notifiche
	public DefaultListModel<String> inizializzaListaNotifiche(List<Notifica> notifiche, DefaultListModel<String> listModel) {
		listModel.clear();//pulisce la lista prima di aggiungere gli elementi
		
		if (notifiche == null || notifiche.isEmpty()){//se viene passato null o una lista vuota
			listModel.addElement("Non ci sono notifiche.");
		} else {
			for (Notifica notifica : notifiche) {//altrimenti, per ogni notifica
				String elemento = notifica.getOggetto() + " - " + "(" + notifica.getDataInvio().toString() + ")";//viene creata una stringa con oggetto e data
				listModel.addElement(elemento);//e aggiunta in lista
			}
		}
		return listModel;
	}
	
	//Mostra il testo della notifica selezionata
	public String mostraTestoNotifica(List<Notifica> notifiche, int index) {
		if(index >= 0 && index < notifiche.size() &&notifiche != null) {//se la notifica selezionata è valida
			return notifiche.get(index).getTesto();//recupera e ritorna il testo
		} else {
			return "Il testo della notifica apparirà qui";//in caso contrario ritorna un messaggio di default
		}
	}
	
	//Apre il frame per l'invio di una notifica
	public void ApriInvioNotifica() {
		invioNotificaFrame = new InvioNotificaFrame(this);
		invioNotificaFrame.setVisible(true);
	}
	
	//Inizializza una combobox con tutti i corsi associati allo chef loggato
	public JComboBox<Corso> inizializzaComboBoxCorsi(List<Corso> corsi){
		JComboBox<Corso> comboBox = new JComboBox<>();
		
		if (corsi != null && !corsi.isEmpty()) {
			for (Corso corso : corsi) {
				comboBox.addItem(corso);
			}
		}
		return comboBox;
	}
	
	//metodo per l'invio di una notifica ad un corso specifico
	public void inviaNotificaUnCorso(String oggetto, String testo, Corso corso) {
	    if (notificaDao == null) {
	        notificaDao = new NotificaDAO();
	    }
	    
	    try {
	        Notifica notifica = notificaDao.inviaNotificaAdUnCorso(chef, oggetto, testo, corso);//chiamata al dao per inviare la notifica
	        if (notifica != null) {//se viene creato un oggetto notifica, l'invio è andato a buon fine
	            JOptionPane.showMessageDialog(invioNotificaFrame, "Notifica inviata con successo!", "Successo", JOptionPane.INFORMATION_MESSAGE);//mostra un messaggio di conferma
	            invioNotificaFrame.setVisible(false);//chiude il frame di invio
	            DefaultListModel<String> listModel = new DefaultListModel<>(); //Crea un nuovo listModel per aggiornare le notifiche
	            List<Notifica> notificheAggiornate = getNotificheChef();//recupera le notifiche aggiornate
	            notificheFrame.refreshListaNotifiche(notificheAggiornate, listModel);//aggiorna la lista delle notifiche
	        } else {
	            invioNotificaFrame.showErrorMessage("Errore nell'invio della notifica.");//altrimenti mostra un messaggio di errore
	        }
	    } catch (SQLException e) {//in caso di errore di connessione al db viene mostrato un messaggio di errore
	        e.printStackTrace();
	        invioNotificaFrame.showErrorMessage("Errore di connessione al database.");
	    }
	}

	//Metodo per l'invio di una notifica a tutti i corsi associati allo chef loggato (vedi inviaNotificaUnCorso per commenti)
	public void inviaNotificaTuttiCorsi(String oggetto, String testo) {
	    if (notificaDao == null) {
	        notificaDao = new NotificaDAO();
	    }
	    
	    try {
	        Notifica notifica = notificaDao.inviaNotificaATuttiICorsi(chef, oggetto, testo);
	        if (notifica != null) {
	            JOptionPane.showMessageDialog(invioNotificaFrame, "Notifica inviata con successo!", "Successo", JOptionPane.INFORMATION_MESSAGE);
	            invioNotificaFrame.setVisible(false);
	            DefaultListModel<String> listModel = new DefaultListModel<>();
	            List<Notifica> notificheAggiornate = getNotificheChef();
	            notificheFrame.refreshListaNotifiche(notificheAggiornate, listModel);
	        }
	        else {
	            invioNotificaFrame.showErrorMessage("Errore nell'invio della notifica.");
	        }
	    } catch (SQLException e) {
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
	
	//recupera il nome dello chef loggato
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
	
	//recupera tutte le sessioni in presenza associate ad un corso
	public List<SessioneInPresenza> getSessioniByCorso(Corso corso) {
	    if (sessioneDao == null) {
	        sessioneDao = new SessioniInPresenzaDAO();
	    }
	    
	    try {
	        return sessioneDao.getSessioniByCorso(corso);//chiamata al dao per recuperare le sessioni dal db
	    } catch (SQLException e) {//in caso di errore di connessione al db viene mostrato un messaggio di errore
	        e.printStackTrace();
	        return null;
	    }
	}

	//recupera tutte le ricette dal db
	public List<Ricetta> getAllRicette() {
	    if (ricettaDao == null) {
	        ricettaDao = new RicettaDAO();
	    }
	    
	    try {
	        return ricettaDao.getAllRicette();//chiamata al dao per recuperare le ricette dal db
	    } catch (SQLException e) {//in caso di errore di connessione al db viene mostrato un messaggio di errore
	        e.printStackTrace();
	        return null;
	    }
	}
	
	public void ApriGestioneRicette(SessioneInPresenza sessione) {
	    ricetteFrame = new RicetteFrame(this, sessione);
	    ricetteFrame.setVisible(true);
	}

	public void TornaSessioniFromRicette() {
	    ricetteFrame.setVisible(false);
	    sessioniFrame.setVisible(true);
	}
	
	//recupera tutte le sessioni online associate ad un corso
	public List<SessioneOnline> getSessioniOnlineByCorso(Corso corso) {
	    if (sessioneOnlineDao == null) {
	        sessioneOnlineDao = new SessioneOnlineDAO();
	    }
	    
	    try {
	        return sessioneOnlineDao.getSessioniByCorso(corso);//chiamata al dao per recuperare le sessioni dal db
	    } catch (SQLException e) {//in caso di errore di connessione al db viene mostrato un messaggio di errore
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

	//Metodo per l'inserimento di una sessione in presenza
	public void inserisciSessioneInPresenza(Timestamp data, int durata, int numSessione, Corso corso, String luogo, String aula) {
	    if (sessioneDao == null) {
	        sessioneDao = new SessioniInPresenzaDAO();
	    }
	    
	    try {
	        SessioneInPresenza nuovaSessione = new SessioneInPresenza(data, durata, numSessione, corso, luogo, aula);
	        sessioneDao.insertSessione(nuovaSessione);
	    } catch (SQLException e) {
	        e.printStackTrace();
	        throw new RuntimeException(e.getMessage().split("\n")[0]);
	    }
	}

	public void inserisciSessioneOnline(Timestamp data, int durata, int numSessione, Corso corso, String link) {
	    if (sessioneOnlineDao == null) {
	        sessioneOnlineDao = new SessioneOnlineDAO();
	    }
	    
	    try {
	        SessioneOnline nuovaSessione = new SessioneOnline(data, durata, numSessione, corso, link);
	        sessioneOnlineDao.insertSessione(nuovaSessione);
	    } catch (SQLException e) {
	        e.printStackTrace();
	        throw new RuntimeException(e.getMessage().split("\n")[0]);
	    }
	}

	public boolean salvaRicettePerSessione(SessioneInPresenza sessione, List<Ricetta> ricetteSelezionate) {
	    if (preparaDao == null) {
	        preparaDao = new PreparaDAO();
	    }
	    
	    try {
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

	public void apriNuovoCorsoFrame() {
		NuovoCorsoFrame nuovoCorsoFrame = new NuovoCorsoFrame(homepageChef, this);
		nuovoCorsoFrame.setVisible(true);
	}
	
	//Recupera i topic per la combobox
	public ArrayList<String> getTopicFromDB() {
		CorsoDAO corsoDao = new CorsoDAO();
		return corsoDao.getTopicByChef(chef.getUsername());
	}
	
	public void creaNuovoCorso(String titolo, String frequenza, String numLezioniStr, String annoFrequenzaStr, String date, String topic, NuovoCorsoFrame nuovoCorsoDialog) {
	    if (titolo == null || titolo.trim().isEmpty()) {
	        homepageChef.showErrorMessage("Il titolo non può essere vuoto.");
	        return;
	    }
	    
	    if (topic == null) {
	        homepageChef.showErrorMessage("Nessun topic selezionato.");
	        return;
	    }

	    try {
	        int numLezioni = Integer.parseInt(numLezioniStr);
	        if (numLezioni < 1 || numLezioni > 100) {
	            homepageChef.showErrorMessage("Il numero di lezioni deve essere compreso tra 1 e 100.");
	            return;
	        }
	        int annoFrequenza = Integer.parseInt(annoFrequenzaStr);
	        Date sqlDate = Date.valueOf(date);
	        Topic topicCorso = new TopicDAO().getTopicByName(topic);
	        if (topicCorso == null) {
	            homepageChef.showErrorMessage("Topic non valido.");
	            return;
	        }
	        if (corsoDao == null) {
	            corsoDao = new CorsoDAO();
	        }
	        Corso corso = corsoDao.creaCorso(titolo, frequenza, numLezioni, annoFrequenza, sqlDate, topicCorso, chef);
	        if (corso != null) {
	            JOptionPane.showMessageDialog(homepageChef, "Corso creato con successo.");
	            nuovoCorsoDialog.dispose();
	        } else {
	            homepageChef.showErrorMessage("Errore nella creazione del corso.");
	        }
	    } catch (NumberFormatException e) {
	        homepageChef.showErrorMessage("Il numero di lezioni deve essere un valore numerico.");
	    } catch (IllegalArgumentException e) {
	        homepageChef.showErrorMessage("Formato data non valido. Usare il formato yyyy-MM-dd.");
	    } catch (SQLException e) {
	        homepageChef.showErrorMessage(e.getMessage().split("\n")[0]);
	    }
	}
	
	public void tornaHomepageFromCreaCorso(NuovoCorsoFrame nuovoCorsoDialog) {
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
