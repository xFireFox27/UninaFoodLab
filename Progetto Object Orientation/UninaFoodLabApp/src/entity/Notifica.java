package entity;
import java.util.Date;

public class Notifica {
	private int idNotifica;
	private String usernameChef;
	private String oggetto;
	private String testo;
	private Date dataInvio;
	
	public Notifica(int newIdNotifica, String newUsername, String newOggetto, String newTesto, Date newData) {
		this.idNotifica = newIdNotifica;
		this.usernameChef = newUsername;
		this.oggetto = newOggetto;
		this.testo = newTesto;
		this.dataInvio = newData;
	}
	
	public int getIdNotifica() {
		return idNotifica;
	}
	
	public void setIdNotifica(int newIdNotifica) {
		this.idNotifica = newIdNotifica;
	}
	
	public String getUsernameChef() {
		return usernameChef;
	}
	
	public void setUsernameChef(String newUsername) {
		this.usernameChef = newUsername;
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
	
	public Date getDataInvio() {
		return dataInvio;
	}
	
	public void setDataInvio(Date newData) {
		this.dataInvio = newData;
	}
}
