package DAO;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import DaoInterface.SessioniInPresenzaDaoInterface;
import dbConnection.DB;
import entity.*;

public class SessioniInPresenzaDAO implements SessioniInPresenzaDaoInterface {
    
	@Override
	public List<SessioneInPresenza> getSessioniByCorso(Corso corso) throws SQLException {
	    List<SessioneInPresenza> sessioni = new ArrayList<>();
	    String sql = "SELECT s.* FROM sessioneinpresenza s " +
	                "JOIN corso c ON s.idcorso = c.idcorso " +
	                "WHERE c.usernamechef = ? " +
	                "ORDER BY s.numsessione";
	    
	    try (Connection conn = DB.getConnection();
	         PreparedStatement stmt = conn.prepareStatement(sql)) {
	        

	        stmt.setString(1, corso.getChef().getUsername());
	        
	        try (ResultSet rs = stmt.executeQuery()) {
	            while (rs.next()) {
	                SessioneInPresenza sessione = new SessioneInPresenza(
	                    rs.getTimestamp("data"),
	                    rs.getInt("durata"),
	                    rs.getInt("numsessione"),
	                    corso,
	                    rs.getString("luogo"),
	                    rs.getString("aula")
	                );
	                sessioni.add(sessione);
	            }
	        }
	    }
	    return sessioni;
	}


}
