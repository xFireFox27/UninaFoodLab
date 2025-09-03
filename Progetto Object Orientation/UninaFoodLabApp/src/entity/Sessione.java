package entity;
import java.sql.Timestamp;

public abstract class Sessione {
	private int idSessione;
	private Timestamp data;
	private int durata;
	private int numSessione;
	private Corso corso;
	
	public Sessione(int newIdSessione, Timestamp newData, int newDurata, int newNumSessione, Corso newCorso) {
		this.idSessione = newIdSessione;
		this.data = newData;
		this.durata = newDurata;
		this.numSessione = newNumSessione;
		this.corso = newCorso;
	}
	
	public int getIdSessione() {
		return idSessione;
	}
	
	public void setIdSessione(int newIdSessione) {
		this.idSessione = newIdSessione;
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
