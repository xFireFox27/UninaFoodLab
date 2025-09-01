package DAO;

import java.sql.*;
import dbConnection.DB;
import entity.Chef;

public class ChefDAO {
	
	public Chef findByUsernameAndPassword(String username, String password) {
		String sql = "SELECT * FROM chef WHERE username = ? AND password = ?";
		try (Connection conn = DB.getConnection();
			PreparedStatement st = conn.prepareStatement(sql)) {
			
			st.setString(1, username);
			st.setString(2, password);
			
			try(ResultSet rs = st.executeQuery()) {
				if(rs.next()) {
					Chef chef = new Chef(rs.getString("nome"), 
							rs.getString("cognome"), 
							rs.getString("username"), 
							rs.getString("password"));
					return chef;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
}
