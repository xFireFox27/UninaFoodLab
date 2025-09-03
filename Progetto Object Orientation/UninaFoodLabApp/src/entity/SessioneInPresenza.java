package entity;
import java.sql.Timestamp;

public class SessioneInPresenza extends Sessione{
	private String luogo;
	private String aula;
	
	public SessioneInPresenza(int newIdSessione, Timestamp newData, int newDurata, int newNumSessione, Corso newCorso, String newLuogo, String newAula) {
		super(newIdSessione, newData, newDurata, newNumSessione, newCorso);
		this.luogo = newLuogo;
		this.aula = newAula;
	}
	
	public String getLuogo() {
		return luogo;
	}
	
	public void setLuogo(String newLuogo) {
		this.luogo = newLuogo;
	}
	
	public String getAula() {
		return aula;
	}
	
	public void setAula(String newAula) {
		this.aula = newAula;
	}

}
