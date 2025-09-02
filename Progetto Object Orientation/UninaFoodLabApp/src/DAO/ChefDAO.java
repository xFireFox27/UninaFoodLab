package DAO;

import java.sql.*;

import DaoInterface.ChefDaoInterface;
import dbConnection.DB;
import entity.Chef;

public class ChefDAO implements ChefDaoInterface {
	
	@Override
	public Chef creaChef(String username, String password) throws SQLException {
	    String sql = "SELECT * FROM chef WHERE username = ? AND password = ?";
	    try (Connection conn = DB.getConnection();
	        PreparedStatement st = conn.prepareStatement(sql)) {
	        
	        st.setString(1, username);
	        st.setString(2, password);
	        
	        try(ResultSet rs = st.executeQuery()) {
	            if(rs.next()) {
	                String nome = rs.getString("nome");
	                String cognome = rs.getString("cognome");
	                System.out.println("Debug DAO - Nome: " + nome + ", Cognome: " + cognome); // Debug
	                
	                Chef chef = new Chef(nome, cognome, 
	                        rs.getString("username"), 
	                        rs.getString("password"));
	                return chef;
	            }
	        }
	    } 
	    return null;
	}

	
}