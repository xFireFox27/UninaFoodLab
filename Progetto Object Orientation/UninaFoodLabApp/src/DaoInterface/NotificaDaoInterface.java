package DaoInterface;

import java.sql.SQLException;
import java.util.List;

import entity.Notifica;
import entity.Chef;
import entity.Corso;

public interface NotificaDaoInterface {
	public List<Notifica> getNotificheByChef(Chef chef) throws SQLException;
	
	public Notifica inviaNotificaAdUnCorso(Chef chef, String oggetto, String testo, Corso corso) throws SQLException;
	
	public Notifica inviaNotificaATuttiICorsi(Chef chef, String oggetto, String testo) throws SQLException;
}
