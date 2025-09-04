package DAO;
import java.sql.*;
import DaoInterface.NotificaDaoInterface;
import java.sql.SQLException;
import dbConnection.DB;
import java.util.List;
import java.util.ArrayList;
import entity.Notifica;
import entity.Chef;
import entity.Corso;

public class NotificaDAO implements NotificaDaoInterface{
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
	
	public Notifica inviaNotificaAdUnCorso(Chef chef, String oggetto, String testo, Corso corso) throws SQLException{
		String sql = "INSERT INTO notifica (usernamechef, oggetto, testo) " +
				     "VALUES(?, ?, ?) ";
		try (Connection connection = DB.getConnection();
			 PreparedStatement st = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)){
			
			st.setString(1, chef.getUsername());
			st.setString(2, oggetto);
			st.setString(3, testo);
			
			int insertRows = st.executeUpdate();
			if(insertRows > 0) {
		        long idNotifica;
		        try (ResultSet rs = st.getGeneratedKeys()) {
		            rs.next();
		            idNotifica = rs.getLong(1);
		        }
				Notifica notifica = new Notifica(chef, oggetto, testo, new Timestamp(System.currentTimeMillis()));
				String sql2 = "INSERT INTO riceve (idnotifica, usernameutente) " +
					      "SELECT n.idnotifica, i.usernameutente FROM notifica AS n " +
						  "JOIN corso AS c ON c.usernamechef = n.usernamechef "+
					      "JOIN iscrizione AS i ON i.idcorso = c.idcorso " +
						  "WHERE n.idnotifica = ? AND c.titolo = ? AND c.anno = ? AND c.usernamechef = ?";
				try(PreparedStatement st2 = connection.prepareStatement(sql2)){
					st2.setLong(1, idNotifica);
					st2.setString(2, corso.getTitolo());
					st2.setInt(3, corso.getAnnoFrequenza());
					st2.setString(4, chef.getUsername());
					
					int insertRows2 = st2.executeUpdate();
					if(insertRows2 > 0) {
						return notifica;
					}
					else {
						return null;
					}
				}
			}
			else {
				return null;
			}
		}
	}
	
//	public Notifica inviaNotificaATuttiICorsi(Chef chef, String oggetto, String testo, Corso corso) throws SQLException{
//		
//	}
}
