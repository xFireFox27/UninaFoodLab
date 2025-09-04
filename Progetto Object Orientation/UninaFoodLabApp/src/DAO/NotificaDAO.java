package DAO;
import java.sql.*;
import DaoInterface.NotificaDaoInterface;
import java.sql.SQLException;
import dbConnection.DB;
import java.util.List;
import java.util.ArrayList;
import entity.Notifica;
import entity.Chef;

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
}
