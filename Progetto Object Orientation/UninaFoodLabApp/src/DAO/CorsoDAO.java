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
	    String sql = "SELECT c.titolo, c.frequenza, c.numlezioni, c.anno, c.datainizio, " +
                "t.nome as topic_nome, t.descrizione as topic_descrizione " +
                "FROM corso AS c " +
                "JOIN chef AS ch ON c.usernamechef = ch.username " +
                "JOIN topic AS t ON c.idtopic = t.idtopic " +
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
	                    rs.getInt("numlezioni"),
	                    rs.getInt("anno"),
	                    rs.getDate("datainizio"),
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
