package entity;

public class Prepara {
	private int idSessionePresenza;
	private int idRicetta;
	
	public Prepara(int newIdSessione, int newIdRicetta) {
		this.idSessionePresenza = newIdSessione;
		this.idRicetta = newIdRicetta;
	}
	
	public int getIdSessionePresenza() {
		return idSessionePresenza;
	}
	
	public void setIdSessionePresenza(int newIdSessione) {
		this.idSessionePresenza = newIdSessione;
	}
	
	public int getIdRicetta() {
		return idRicetta;
	}
	
	public void setIdRicetta(int newIdRicetta) {
		this.idRicetta = newIdRicetta;
	}
}
