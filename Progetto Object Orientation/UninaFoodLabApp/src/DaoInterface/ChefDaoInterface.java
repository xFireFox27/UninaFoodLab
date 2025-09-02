package DaoInterface;

import java.sql.SQLException;

import entity.Chef;

public interface ChefDaoInterface {
	public Chef creaChef(String username, String password) throws SQLException;

}
