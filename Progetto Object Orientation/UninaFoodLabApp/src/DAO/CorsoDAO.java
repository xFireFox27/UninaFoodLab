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
	
	@Override
	public Corso creaCorso(String titolo, String frequenza, int numLezioni, int annoFrequenza, Date dataInizio, Topic topic, Chef chef) throws SQLException {
		String sql = "INSERT INTO corso (Titolo, Frequenza, NumLezioni, Anno, DataInizio, IdTopic, UsernameChef) VALUES (?, ?, ?, ?, ?, (SELECT IdTopic FROM Topic WHERE Nome = ?), ?)";
		
		try (Connection connection = DB.getConnection();
			 PreparedStatement st = connection.prepareStatement(sql)) {
			
			st.setString(1, titolo);
			st.setString(2, frequenza);
			st.setInt(3, numLezioni);
			st.setInt(4, annoFrequenza);
			st.setDate(5, dataInizio);
			st.setString(6, topic.getNome());
			st.setString(7, chef.getUsername());
			
			int insertRows = st.executeUpdate();
			if (insertRows > 0) {
				return new Corso(titolo, frequenza, numLezioni, annoFrequenza, dataInizio, topic, chef);
			} else {
				return null;
			}
		}
	}

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

	//Recupera tutti i topic per la combobox
	@Override
	public ArrayList<String> getTopicByChef(String chefUsername) {
		ArrayList<String> topics = new ArrayList<>();
		String sql = "SELECT nome FROM topic WHERE idtopic IN (SELECT idtopic FROM corso WHERE usernamechef = ?)";
		
		try (Connection connection = DB.getConnection();
			 PreparedStatement stmt = connection.prepareStatement(sql);) {
			
			 stmt.setString(1, chefUsername);
			 ResultSet rs = stmt.executeQuery();
			
			while (rs.next()) {
				topics.add(rs.getString("nome"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return topics;
	}
	
}
