package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DaoInterface.PreparaDaoInterface;
import dbConnection.DB;
import entity.Ricetta;
import entity.SessioneInPresenza;

public class PreparaDAO implements PreparaDaoInterface {
    
	public void salvaAssociazioniSessioneRicette(SessioneInPresenza sessione, List<Ricetta> ricette) throws SQLException {
	    Connection connection = null;
	    PreparedStatement deleteStmt = null;
	    PreparedStatement insertStmt = null;
	    
	    try {
	        connection = DB.getConnection();
	        connection.setAutoCommit(false);
	        
	        // Prima elimina le associazioni esistenti per questa sessione usando chiavi naturali
	        String deleteQuery = "DELETE FROM prepara p WHERE " +
	                           "EXISTS (SELECT 1 FROM sessioneinpresenza s " +
	                           "WHERE s.idsessione = p.idsessionepresenza " +
	                           "AND s.data = ? AND s.luogo = ? AND s.aula = ?)";
	        deleteStmt = connection.prepareStatement(deleteQuery);
	        deleteStmt.setTimestamp(1, sessione.getData());
	        deleteStmt.setString(2, sessione.getLuogo());
	        deleteStmt.setString(3, sessione.getAula());
	        deleteStmt.executeUpdate();
	        
	        // Poi inserisce le nuove associazioni usando subquery
	        String insertQuery = "INSERT INTO prepara (idsessionepresenza, idricetta) " +
	                           "SELECT s.idsessione, r.idricetta " +
	                           "FROM sessioneinpresenza s, ricetta r " +
	                           "WHERE s.data = ? AND s.luogo = ? AND s.aula = ? " +
	                           "AND r.nome = ?";
	        insertStmt = connection.prepareStatement(insertQuery);
	        
	        for (Ricetta ricetta : ricette) {
	            insertStmt.setTimestamp(1, sessione.getData());
	            insertStmt.setString(2, sessione.getLuogo());
	            insertStmt.setString(3, sessione.getAula());
	            insertStmt.setString(4, ricetta.getNome());
	            insertStmt.addBatch();
	        }
	        
	        insertStmt.executeBatch();
	        connection.commit();
	        
	    } catch (SQLException e) {
	        if (connection != null) {
	            connection.rollback();
	        }
	        throw e;
	    } finally {
	        if (deleteStmt != null) deleteStmt.close();
	        if (insertStmt != null) insertStmt.close();
	        if (connection != null) {
	            connection.setAutoCommit(true);
	            connection.close();
	        }
	    }
	}


	@Override
	public List<Ricetta> getRicettePerSessione(SessioneInPresenza sessione) throws SQLException {
	    List<Ricetta> ricette = new ArrayList<>();
	    Connection connection = null;
	    PreparedStatement stmt = null;
	    ResultSet rs = null;
	    
	    try {
	        connection = DB.getConnection();
	        String query = "SELECT r.nome, r.descrizione " +
	                      "FROM ricetta r " +
	                      "JOIN prepara p ON r.idricetta = p.idricetta " +
	                      "JOIN sessioneinpresenza s ON s.idsessione = p.idsessionepresenza " +
	                      "WHERE s.data = ? AND s.luogo = ? AND s.aula = ?";
	        
	        stmt = connection.prepareStatement(query);
	        stmt.setTimestamp(1, sessione.getData());
	        stmt.setString(2, sessione.getLuogo());
	        stmt.setString(3, sessione.getAula());
	        
	        rs = stmt.executeQuery();
	        while (rs.next()) {
	            ricette.add(new Ricetta(rs.getString("nome"), rs.getString("descrizione")));
	        }
	        
	    } finally {
	        if (rs != null) rs.close();
	        if (stmt != null) stmt.close();
	        if (connection != null) connection.close();
	    }
	    
	    return ricette;
	}



}
