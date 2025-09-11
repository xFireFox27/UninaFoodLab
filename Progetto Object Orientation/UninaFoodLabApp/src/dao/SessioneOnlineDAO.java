package DAO;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import DaoInterface.SessioniOnlineDaoInterface;
import dbConnection.DB;
import entity.*;

public class SessioneOnlineDAO implements SessioniOnlineDaoInterface {
    
	@Override
	public List<SessioneOnline> getSessioniByCorso(Corso corso) throws SQLException {
	    List<SessioneOnline> sessioni = new ArrayList<>();
	    String sql = "SELECT s.* FROM sessioneonline s " +
	                "WHERE s.idcorso = (SELECT idcorso FROM corso WHERE titolo = ? AND anno = ?) " +
	                "ORDER BY s.numsessione";
	    
	    try (Connection conn = DB.getConnection();
	        PreparedStatement stmt = conn.prepareStatement(sql)) {
		        stmt.setString(1, corso.getTitolo());
		        stmt.setInt(2, corso.getAnnoFrequenza());
		        try (ResultSet rs = stmt.executeQuery()) {
		            while (rs.next()) {
		                SessioneOnline sessione = new SessioneOnline(
		                    rs.getTimestamp("data"),
		                    rs.getInt("durata"),
		                    rs.getInt("numsessione"),
		                    corso,
		                    rs.getString("link")
		                );
		                sessioni.add(sessione);
		            }
		        }
	    }
	    return sessioni;
	}

	@Override
	public List<SessioneOnline> getSessioniByCorsoEMese(Corso corso, int mese, int anno) throws SQLException {
	    List<SessioneOnline> sessioni = new ArrayList<>();
	    String sql = "SELECT s.* FROM sessioneonline s " +
	                "WHERE s.idcorso = (SELECT idcorso FROM corso WHERE titolo = ? AND anno = ?) " +
	                "AND EXTRACT(MONTH FROM s.data) = ? " +
	                "AND EXTRACT(YEAR FROM s.data) = ? " +
	                "ORDER BY s.numsessione";
	    
	    try (Connection conn = DB.getConnection();
	        PreparedStatement stmt = conn.prepareStatement(sql)) {
		        stmt.setString(1, corso.getTitolo());
		        stmt.setInt(2, corso.getAnnoFrequenza());
		        stmt.setInt(3, mese);
		        stmt.setInt(4, anno);
		        try (ResultSet rs = stmt.executeQuery()) {
		            while (rs.next()) {
		                SessioneOnline sessione = new SessioneOnline(
		                    rs.getTimestamp("data"),
		                    rs.getInt("durata"),
		                    rs.getInt("numsessione"),
		                    corso,
		                    rs.getString("link")
		                );
		                sessioni.add(sessione);
		            }
		        }
	    }
	    return sessioni;
	}

    
    @Override
    public void insertSessione(SessioneOnline sessione) throws SQLException {
		String sql = "INSERT INTO sessioneonline (link, data, durata, numsessione, idcorso) " +
						"VALUES (?, ?, ?, ?, (SELECT idcorso FROM corso WHERE titolo = ?))";
		
		try (Connection conn = DB.getConnection();
			PreparedStatement stmt = conn.prepareStatement(sql)) {
				stmt.setString(1, sessione.getLink());
				stmt.setTimestamp(2, sessione.getData());
				stmt.setInt(3, sessione.getDurata());
				stmt.setInt(4, sessione.getNumSessione());
				stmt.setString(5, sessione.getCorso().getTitolo());
				int rowsAffected = stmt.executeUpdate();
		        if (rowsAffected == 0) {
		            throw new SQLException("Inserimento sessione online fallito.");
		        }
		}
    }
    
}
