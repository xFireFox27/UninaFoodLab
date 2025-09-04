package DaoInterface;

import java.sql.SQLException;
import java.util.List;
import entity.Corso;
import entity.SessioneOnline;

public interface SessioniOnlineDaoInterface {
    public List<SessioneOnline> getSessioniByCorso(Corso corso) throws SQLException;
    public void insertSessione(SessioneOnline sessione) throws SQLException;
    public List<SessioneOnline> getSessioniByCorsoEMese(Corso corso, int mese, int anno) throws SQLException;
}
