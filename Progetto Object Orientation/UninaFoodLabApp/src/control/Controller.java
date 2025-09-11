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

import boundary.*;
import dao.*;
import entity.*;

public class Controller {
	
	/* *********************************************************************************************************************************************************************************** */
	
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
	
	/* *********************************************************************************************************************************************************************************** */
	
	// Avvio e Login
	
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
				loginFrame.showErrorMessage("Credenziali errate. Chef non trovato.");
				return;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			loginFrame.showErrorMessage("Errore di connessione al database.");
			return;
		}
	}
	
	/* *********************************************************************************************************************************************************************************** */

	// Gestione Corsi
	
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
	
	public void apriNuovoCorsoFrame() {
		NuovoCorsoFrame nuovoCorsoFrame = new NuovoCorsoFrame(homepageChef, this);
		nuovoCorsoFrame.setVisible(true);
	}
	
	public ArrayList<String> getTopicFromDB() {
		CorsoDAO corsoDao = new CorsoDAO();
		return corsoDao.getTopicByChef(chef.getUsername());
	}
	
	public void creaNuovoCorso(String titolo, String frequenza, String numLezioniStr, String annoFrequenzaStr, String date, String topic, NuovoCorsoFrame nuovoCorsoDialog) {
	    try {
	        int numLezioni = Integer.parseInt(numLezioniStr);
	        if (numLezioni < 1 || numLezioni > 100) {
	            homepageChef.showErrorMessage("Il numero di lezioni deve essere compreso tra 1 e 100.");
	            return;
	        }
	        int annoFrequenza = Integer.parseInt(annoFrequenzaStr);
	        Date sqlDate = Date.valueOf(date);
	        Topic topicCorso = new TopicDAO().getTopicByName(topic);
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
	    } catch (SQLException e) {
	        homepageChef.showErrorMessage(e.getMessage().split("\n")[0]);
	    }
	}
	
	public void tornaHomepageFromCreaCorso(NuovoCorsoFrame nuovoCorsoDialog) {
		nuovoCorsoDialog.setVisible(false);
		homepageChef.setVisible(true);
	}
	
	/* *********************************************************************************************************************************************************************************** */

	// Gestione Sessioni
	
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
	
	/* *********************************************************************************************************************************************************************************** */

	// Gestione Ricette
	
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
	    ricetteFrame = new RicetteFrame(this, sessione);
	    ricetteFrame.setVisible(true);
	}

	public void TornaSessioniFromRicette() {
	    ricetteFrame.setVisible(false);
	    sessioniFrame.setVisible(true);
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
	
	/* *********************************************************************************************************************************************************************************** */

	// Gestione Notifiche
	
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
		} catch (SQLException e) {
			e.printStackTrace();
			notificheFrame.showErrorMessage("Errore nel recupero delle notifiche dal database.");
			return null;
		}
	}
	
	public DefaultListModel<String> inizializzaListaNotifiche(List<Notifica> notifiche, DefaultListModel<String> listModel) {
		listModel.clear();
		
		if (notifiche == null || notifiche.isEmpty()){
			listModel.addElement("Non ci sono notifiche.");
		} else {
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
		} else {
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
	            JOptionPane.showMessageDialog(invioNotificaFrame, "Notifica inviata con successo!", "Successo", JOptionPane.INFORMATION_MESSAGE);
	            invioNotificaFrame.setVisible(false);
	            DefaultListModel<String> listModel = new DefaultListModel<>(); 
	            List<Notifica> notificheAggiornate = getNotificheChef();
	            notificheFrame.refreshListaNotifiche(notificheAggiornate, listModel);
	        } else {
	            invioNotificaFrame.showErrorMessage("Errore nell'invio della notifica.");
	        }
	    } catch (SQLException e) {
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
	
	/* *********************************************************************************************************************************************************************************** */

	// Riepilogo Mensile
	
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
	
	/* *********************************************************************************************************************************************************************************** */
	
	// Utilità
	
	public String getNomeChefCorrente() {
		if (chef != null) {
			return chef.getNome();
		}
		return "Chef";
	}

	private static void setLookAndFeel() {
	    try {
	        UIManager.setLookAndFeel(UIManager.getCrossPlatformLookAndFeelClassName());
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}
	
	/* *********************************************************************************************************************************************************************************** */
	
}
