package entity;

import java.sql.Timestamp;

public abstract class Sessione {
	
	private Timestamp data;
	private int durata;
	private int numSessione;
	private Corso corso;
	
	public Sessione(Timestamp newData, int newDurata, int newNumSessione, Corso newCorso) {
		this.data = newData;
		this.durata = newDurata;
		this.numSessione = newNumSessione;
		this.corso = newCorso;
	}
	
	public Timestamp getData() {
		return data;
	}
	
	public void setData(Timestamp newData) {
		this.data = newData;
	}
	
	public int getDurata() {
		return durata;
	}
	
	public void setDurata(int newDurata) {
		this.durata = newDurata;
	}
	
	public int getNumSessione() {
		return numSessione;
	}
	
	public void setNumSessione(int newNumSessione) {
		this.numSessione = newNumSessione;
	}
	
	public Corso getCorso() {
		return corso;
	}
	
	public void setCorso(Corso newCorso) {
		this.corso = newCorso;
	}
	
}
