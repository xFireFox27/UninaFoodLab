package DaoInterface;

import java.sql.SQLException;
import java.util.List;
import entity.Ricetta;
import entity.Corso;

public interface RicettaDaoInterface {
    public List<Ricetta> getAllRicette() throws SQLException;

}
