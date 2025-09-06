package entity;

import java.sql.Timestamp;

public class Notifica {
	
	private Chef chef;
	private String oggetto;
	private String testo;
	private Timestamp dataInvio;
	
	public Notifica(Chef newChef, String newOggetto, String newTesto, Timestamp newData) {
		this.chef = newChef;
		this.oggetto = newOggetto;
		this.testo = newTesto;
		this.dataInvio = newData;
	}
	
	public Chef getChef() {
		return chef;
	}
	
	public void setChef(Chef newChef) {
		this.chef = newChef;
	}
	
	public String getOggetto() {
		return oggetto;
	}
	
	public void setOggetto(String newOggetto) {
		this.oggetto = newOggetto;
	}
	
	public String getTesto() {
		return testo;
	}
	
	public void setTesto(String newTesto) {
		this.testo = newTesto;
	}
	
	public Timestamp getDataInvio() {
		return dataInvio;
	}
	
	public void setDataInvio(Timestamp newData) {
		this.dataInvio = newData;
	}
	
}
