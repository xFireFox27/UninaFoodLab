package DaoInterface;

import java.sql.SQLException;
import java.util.List;

import entity.Chef;
import entity.Corso;

public interface CorsoDaoInterface {
	
	public List<Corso> getCorsiByChef(Chef chef) throws SQLException;

}
