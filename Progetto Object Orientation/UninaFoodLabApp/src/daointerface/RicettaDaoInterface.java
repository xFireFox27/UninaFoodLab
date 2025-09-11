package daointerface;

import java.sql.SQLException;
import java.util.List;
import entity.Ricetta;

public interface RicettaDaoInterface {
	
    public List<Ricetta> getAllRicette() throws SQLException;

}
