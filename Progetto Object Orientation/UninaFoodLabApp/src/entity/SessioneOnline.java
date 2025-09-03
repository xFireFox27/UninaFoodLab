package entity;
import java.sql.Timestamp;

public class SessioneOnline extends Sessione{
	private String link;
	
	public SessioneOnline(int newIdSessione, Timestamp newData, int newDurata, int newNumSessione, Corso newCorso, String newLink) {
		super(newIdSessione, newData, newDurata, newNumSessione, newCorso);
		this.link = newLink;
	}
	
	public String getLink() {
		return link;
	}
	
	public void setLink(String newLink) {
		this.link = newLink;
	}

}
