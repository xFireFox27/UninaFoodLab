package entity;

import java.util.Date;

public class Corso {
	
	private String titolo;
	private String frequenza;
	private Date dataInizio;
	private Topic topic;
	private Chef chef;
	private int numLezioni;
	private int annoFrequenza;
	
	public Corso(String newTitolo, String newFrequenza, int newNumLezioni, int newAnno, Date newData, Topic newtopic, Chef newChef) {
		this.titolo = newTitolo;
		this.frequenza = newFrequenza;
		this.numLezioni = newNumLezioni;
		this.annoFrequenza = newAnno;
		this.dataInizio = newData;
		this.topic = newtopic;
		this.chef = newChef;
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
		return annoFrequenza;
	}
	
	public void setAnnoFrequenza(int newAnno) {
		annoFrequenza = newAnno;
	}
	
	public Date getDataInizio() {
		return dataInizio;
	}
	
	public void setDataInizio(Date newData) {
		this.dataInizio = newData;
	}
	
	public Topic getIdTopic() {
		return topic;
	}
	
	public void setIdTopic(Topic newTopic) {
		this.topic = newTopic;
	}
	
	public Chef getChef() {
		return chef;
	}
	
	public void setChef(Chef newChef) {
		this.chef = newChef;
	}
	
}
