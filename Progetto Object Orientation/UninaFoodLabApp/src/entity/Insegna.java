package entity;

public class Insegna {
	private int idTopic;
	private String usernameChef;
	
	public Insegna(int newIdTopic, String newUsernameChef) {
		this.idTopic = newIdTopic;
		this.usernameChef = newUsernameChef;
	}
	
	public int getIdTopic() {
		return idTopic;
	}
	
	public void setIdTopic(int newIdTopic) {
		this.idTopic = newIdTopic;
	}
	
	public String getUsernameChef() {
		return usernameChef;
	}
	
	public void setUsernameChef(String newUsername) {
		this.usernameChef = newUsername;
	}
}
