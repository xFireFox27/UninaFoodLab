package DaoInterface;

import java.sql.SQLException;
import java.util.List;

import entity.Notifica;
import entity.Chef;

public interface NotificaDaoInterface {
	public List<Notifica> getNotificheByChef(Chef chef) throws SQLException;
}
