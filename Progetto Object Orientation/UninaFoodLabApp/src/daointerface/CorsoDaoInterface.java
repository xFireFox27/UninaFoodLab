package DaoInterface;

import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entity.Chef;
import entity.Corso;
import entity.Topic;

public interface CorsoDaoInterface {
	
	public List<Corso> getCorsiByChef(Chef chef) throws SQLException;
	
	public Corso creaCorso(String titolo, String frequenza, int numLezioni, int annoFrequenza, Date dataInizio, Topic topic, Chef chef) throws SQLException;
	
	public ArrayList<String> getTopicByChef(String chefUsername) throws SQLException;
	
}
