package DAO;

import java.sql.*;
import java.util.List;
import java.util.ArrayList;

import DaoInterface.NotificaDaoInterface;
import dbConnection.DB;
import entity.Notifica;
import entity.Chef;
import entity.Corso;

public class NotificaDAO implements NotificaDaoInterface{
	
	@Override
	public List<Notifica> getNotificheByChef(Chef chef) throws SQLException {
		List<Notifica> notifiche = new ArrayList<>();
		String sql = "SELECT n.oggetto, n.testo, n.dataInvio " +
					 "FROM notifica AS n " +
					 "JOIN chef AS c ON c.username = n.usernamechef " +
					 "WHERE c.username = ?";
		
		try (Connection connection = DB.getConnection();
			PreparedStatement stmt = connection.prepareStatement(sql)){
				stmt.setString(1, chef.getUsername());
				try(ResultSet rs = stmt.executeQuery()){
					while(rs.next()) {
						Notifica notifica = new Notifica(
												chef,
												rs.getString("oggetto"),
												rs.getString("testo"),
												rs.getTimestamp("dataInvio")
												);
						notifiche.add(notifica);
					}
				}
		}
		
		return notifiche;
	}
	
	@Override
	public Notifica inviaNotificaAdUnCorso(Chef chef, String oggetto, String testo, Corso corso) throws SQLException {
		String sql = "INSERT INTO notifica (usernamechef, oggetto, testo) VALUES(?, ?, ?) ";
		
		try (Connection connection = DB.getConnection();
			PreparedStatement st = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
				st.setString(1, chef.getUsername());
				st.setString(2, oggetto);
				st.setString(3, testo);
				int insertRows = st.executeUpdate();
				if(insertRows > 0) {
					Notifica notifica = new Notifica(chef, oggetto, testo, new Timestamp(System.currentTimeMillis()));
					return notifica;
				} else {
					return null;
				}
		}
	}

	@Override
	public Notifica inviaNotificaATuttiICorsi(Chef chef, String oggetto, String testo) throws SQLException {
		String sql = "INSERT INTO notifica (usernamechef, oggetto, testo) VALUES(?, ?, ?) ";
		
		try (Connection connection = DB.getConnection();
			PreparedStatement st = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
				st.setString(1, chef.getUsername());
				st.setString(2, oggetto);
				st.setString(3, testo);
				int insertRows = st.executeUpdate();
				if(insertRows > 0) {
					Notifica notifica = new Notifica(chef, oggetto, testo, new Timestamp(System.currentTimeMillis()));
					return notifica;
				} else {
					return null;
				}
		}
	}
	
}
