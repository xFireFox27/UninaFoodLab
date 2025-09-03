package entity;

public class Riceve {
	private int idNotifica;
	private Utente utente;
	
	public Riceve(int newIdNotifica, Utente newUtente) {
		this.idNotifica = newIdNotifica;
		this.utente = newUtente;
	}
	
	public int getIdNotifica() {
		return idNotifica;
	}
	
	public void setIdNotifica(int newIdNotifica) {
		this.idNotifica = newIdNotifica;
	}
	
	public Utente getUtente() {
		return utente;
	}
	
	public void setUtente(Utente newUtente) {
		this.utente = newUtente;
	}
}
