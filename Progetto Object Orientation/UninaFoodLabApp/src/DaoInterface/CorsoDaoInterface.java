package DaoInterface;

import java.sql.SQLException;
import java.sql.Date;
import entity.Corso;
import entity.Topic;
import entity.Chef;

public interface CorsoDaoInterface {
	public Corso creaCorso(int idCorso, String titolo, String frequenza, int numLezioni, int annoFrequenza, Date dataInizio, Topic topic, Chef chef) throws SQLException;
}
