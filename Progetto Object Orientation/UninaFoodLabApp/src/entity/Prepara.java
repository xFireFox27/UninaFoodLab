package entity;

public class Prepara {
	
	private SessioneInPresenza sessioneInPresenza;
	private Ricetta ricetta;
	
	public Prepara(SessioneInPresenza newSessione, Ricetta newRicetta) {
		this.sessioneInPresenza = newSessione;
		this.ricetta = newRicetta;
	}
	
	public SessioneInPresenza getSessioneInPresenza() {
		return sessioneInPresenza;
	}
	
	public void setSessioneInPresenza(SessioneInPresenza newSessione) {
		this.sessioneInPresenza = newSessione;
	}
	
	public Ricetta getIdRicetta() {
		return ricetta;
	}
	
	public void setIdRicetta(Ricetta newRicetta) {
		this.ricetta = newRicetta;
	}
	
}
