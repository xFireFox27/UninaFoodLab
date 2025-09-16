package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import daointerface.SessioniInPresenzaDaoInterface;
import dbconnection.DB;
import entity.*;

public class SessioniInPresenzaDAO implements SessioniInPresenzaDaoInterface {
    
	@Override
	public List<SessioneInPresenza> getSessioniByCorso(Corso corso) throws SQLException {
	    List<SessioneInPresenza> sessioni = new ArrayList<>();
	    String sql = "SELECT s.* FROM sessioneinpresenza s " +
		                "WHERE s.idcorso = (SELECT idcorso FROM corso WHERE titolo = ? AND anno = ? AND usernamechef = ?) " +
		                "ORDER BY s.numsessione";
	    
	    try (Connection conn = DB.getConnection();
	        PreparedStatement stmt = conn.prepareStatement(sql)) {
		        stmt.setString(1, corso.getTitolo());
		        stmt.setInt(2, corso.getAnnoFrequenza());
		        stmt.setString(3, corso.getChef().getUsername());
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

	@Override
	public List<SessioneInPresenza> getSessioniByCorsoEMese(Corso corso, int mese, int anno) throws SQLException {
	    List<SessioneInPresenza> sessioni = new ArrayList<>();
	    String sql = "SELECT s.* FROM sessioneinpresenza s " +
	                "WHERE s.idcorso = (SELECT idcorso FROM corso WHERE titolo = ? AND anno = ? AND usernamechef = ?) " +
	                "AND EXTRACT(MONTH FROM s.data) = ? " +
	                "AND EXTRACT(YEAR FROM s.data) = ? " +
	                "ORDER BY s.numsessione";
	    
	    try (Connection conn = DB.getConnection();
	        PreparedStatement stmt = conn.prepareStatement(sql)) {
	            stmt.setString(1, corso.getTitolo());
	            stmt.setInt(2, corso.getAnnoFrequenza());
	            stmt.setString(3, corso.getChef().getUsername());
	            stmt.setInt(4, mese);
	            stmt.setInt(5, anno);
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

	
	@Override
	public void insertSessione(SessioneInPresenza sessione) throws SQLException {
	    String sql = "INSERT INTO sessioneinpresenza (luogo, aula, data, durata, numsessione, idcorso) " +
	                 "VALUES (?, ?, ?, ?, ?, (SELECT idcorso FROM corso WHERE titolo = ? AND anno = ? AND usernamechef = ?))";
	    
	    try (Connection conn = DB.getConnection();
	        PreparedStatement stmt = conn.prepareStatement(sql)) {
		        stmt.setString(1, sessione.getLuogo());
		        stmt.setString(2, sessione.getAula());
		        stmt.setTimestamp(3, sessione.getData());
		        stmt.setInt(4, sessione.getDurata());
		        stmt.setInt(5, sessione.getNumSessione());
		        stmt.setString(6, sessione.getCorso().getTitolo());
		        stmt.setInt(7, sessione.getCorso().getAnnoFrequenza());
		        stmt.setString(8, sessione.getCorso().getChef().getUsername());
		        int rowsAffected = stmt.executeUpdate();
		        if (rowsAffected == 0) {
		            throw new SQLException("Inserimento sessione in presenza fallito.");
		        }
	    }
	}

}
