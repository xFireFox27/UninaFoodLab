package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import daointerface.RicettaDaoInterface;
import dbconnection.DB;
import entity.Ricetta;
import entity.Corso;

public class RicettaDAO implements RicettaDaoInterface {
    
    @Override
    public List<Ricetta> getAllRicette() throws SQLException {
        List<Ricetta> ricette = new ArrayList<>();
        String sql = "SELECT * FROM ricetta ORDER BY nome";
        
        try (Connection conn = DB.getConnection();
    		PreparedStatement stmt = conn.prepareStatement(sql)) {
		        try (ResultSet rs = stmt.executeQuery()) {
		            while (rs.next()) {
		                Ricetta ricetta = new Ricetta(
		                    rs.getString("nome"),
		                    rs.getString("descrizione")
		                );
		                ricette.add(ricetta);
		            }
		        }
        }
        
        return ricette;
    }
}
