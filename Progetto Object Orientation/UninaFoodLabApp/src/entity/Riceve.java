package entity;

public class Riceve {
	private int idNotifica;
	private String usernameUtente;
	
	public Riceve(int newIdNotifica, String newUsername) {
		this.idNotifica = newIdNotifica;
		this.usernameUtente = newUsername;
	}
	
	public int getIdNotifica() {
		return idNotifica;
	}
	
	public void setIdNotifica(int newIdNotifica) {
		this.idNotifica = newIdNotifica;
	}
	
	public String getUsernameUtente() {
		return usernameUtente;
	}
	
	public void setUsernameUtente(String newUsername) {
		this.usernameUtente = newUsername;
	}
}
