package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import DaoInterface.TopicDaoInterface;
import dbConnection.DB;
import entity.Topic;

public class TopicDAO implements TopicDaoInterface {
	
	@Override
	public Topic getTopicByName(String nome) {
		String sql = "SELECT * FROM topic WHERE nome = ?";
		
		try (Connection connection = DB.getConnection();
			PreparedStatement st = connection.prepareStatement(sql)) {
				st.setString(1, nome);
				try (ResultSet rs = st.executeQuery()) {
					if (rs.next()) {
						String descrizione = rs.getString("descrizione");
						return new Topic(nome, descrizione);
					} else {
						return null; 
					}
				}
		} catch (SQLException e) {
			e.printStackTrace();
			return null; 
		}
	}
	
}
