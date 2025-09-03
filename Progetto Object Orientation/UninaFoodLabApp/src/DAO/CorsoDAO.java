package DAO;
import java.sql.*;

import java.util.ArrayList;
import java.util.List;
import DaoInterface.CorsoDaoInterface;
import dbConnection.DB;
import entity.Chef;
import entity.Corso;
import entity.Topic;


public class CorsoDAO implements CorsoDaoInterface {
	
	

	public List<Corso> getCorsiByChef(Chef chef) throws SQLException {
	    List<Corso> corsi = new ArrayList<>();
	    String sql = "SELECT c.titolo, c.frequenza, c.num_lezioni, c.anno_frequenza, c.data_inizio, " +
	                   "t.nome as topic_nome, t.descrizione as topic_descrizione " +
	                   "FROM corso c " +
	                   "JOIN chef ch ON c.username_chef = ch.username " +
	                   "JOIN topic t ON c.nome_topic = t.nome " +
	                   "WHERE ch.username = ?";

	    try (Connection connection = DB.getConnection();
	         PreparedStatement stmt = connection.prepareStatement(sql)) {
	        stmt.setString(1, chef.getUsername());

	        try (ResultSet rs = stmt.executeQuery()) {
	            while (rs.next()) {
	                Topic topic = new Topic(
	                    rs.getString("topic_nome"),
	                    rs.getString("topic_descrizione")
	                );
	                
	                Corso corso = new Corso(
	                    rs.getString("titolo"),
	                    rs.getString("frequenza"),
	                    rs.getInt("num_lezioni"),
	                    rs.getInt("anno_frequenza"),
	                    rs.getDate("data_inizio"),
	                    topic,
	                    chef
	                );
	                corsi.add(corso);
	            }
	        }
	    }
	    return corsi;
	}


}
