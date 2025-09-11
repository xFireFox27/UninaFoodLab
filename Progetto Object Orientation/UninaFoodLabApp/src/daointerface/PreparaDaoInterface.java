package DaoInterface;

import java.sql.SQLException;
import java.util.List;

import entity.Ricetta;
import entity.SessioneInPresenza;

public interface PreparaDaoInterface {
	
    void salvaAssociazioniSessioneRicette(SessioneInPresenza sessione, List<Ricetta> ricette) throws SQLException;
    
    List<Ricetta> getRicettePerSessione(SessioneInPresenza sessione) throws SQLException;
    
}
