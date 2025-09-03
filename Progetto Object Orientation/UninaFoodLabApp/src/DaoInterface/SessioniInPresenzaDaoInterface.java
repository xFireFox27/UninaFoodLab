package DaoInterface;

import java.sql.SQLException;
import java.util.List;
import entity.Corso;
import entity.SessioneInPresenza;

public interface SessioniInPresenzaDaoInterface {
    public List<SessioneInPresenza> getSessioniByCorso(Corso corso) throws SQLException;
}
