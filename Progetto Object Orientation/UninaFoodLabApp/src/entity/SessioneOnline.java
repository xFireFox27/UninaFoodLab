package entity;

import java.sql.Timestamp;

public class SessioneOnline extends Sessione {
	
	private String link;
	
	public SessioneOnline(Timestamp newData, int newDurata, int newNumSessione, Corso newCorso, String newLink) {
		super(newData, newDurata, newNumSessione, newCorso);
		this.link = newLink;
	}
	
	public String getLink() {
		return link;
	}
	
	public void setLink(String newLink) {
		this.link = newLink;
	}

}
