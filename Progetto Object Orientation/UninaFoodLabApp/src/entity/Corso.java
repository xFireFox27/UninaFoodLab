package entity;

import java.util.Date;

public class Corso {
	private int idCorso;
	private String titolo;
	private String frequenza;
	private int numLezioni;
	private int AnnoFrequenza;
	private Date dataInizio;
	private String idTopic;
	private String usernameChef;
	
	public Corso(int newIdCorso, String newTitolo, String newFrequenza, int newNumLezioni, int newAnno, Date newData, String newIdTopic, String newUsername) {
		this.idCorso = newIdCorso;
		this.titolo = newTitolo;
		this.frequenza = newFrequenza;
		this.numLezioni = newNumLezioni;
		this.AnnoFrequenza = newAnno;
		this.dataInizio = newData;
		this.idTopic = newIdTopic;
		this.usernameChef = newUsername;
	}
	
	public int getIdCorso() {
		return idCorso;
	}
	
	public void setIdCorso(int newIdCorso) {
		this.idCorso = newIdCorso;
	}
	
	public String getTitolo() {
		return titolo;
	}
	
	public void setTitolo(String newTitolo) {
		this.titolo = newTitolo;
	}
	
	public String getFrequenza() {
		return frequenza;
	}
	
	public void setFrequenza(String newFrequenza) {
		this.frequenza = newFrequenza;
	}
	
	public int getNumLezioni() {
		return numLezioni;
	}
	
	public void setNumLezioni(int newNumLezioni) {
		this.numLezioni = newNumLezioni;
	}
	
	public int getAnnoFrequenza() {
		return AnnoFrequenza;
	}
	
	public void setAnnoFrequenza(int newAnno) {
		AnnoFrequenza = newAnno;
	}
	
	public Date getDataInizio() {
		return dataInizio;
	}
	
	public void setDataInizio(Date newData) {
		this.dataInizio = newData;
	}
	
	public String getIdTopic() {
		return idTopic;
	}
	
	public void setIdTopic(String newIdTopic) {
		this.idTopic = newIdTopic;
	}
	
	public String getUsernameChef() {
		return usernameChef;
	}
	
	public void setUsernameChef(String newUsername) {
		this.usernameChef = newUsername;
	}
}
