package entity;

public class Insegna {
	private Topic topic;
	private Chef chef;
	
	public Insegna(Topic newIdTopic, Chef newChef) {
		this.topic = newIdTopic;
		this.chef = newChef;
	}
	
	public Topic getIdTopic() {
		return topic;
	}
	
	public void setIdTopic(Topic newTopic) {
		this.topic = newTopic;
	}
	
	public Chef getChef() {
		return chef;
	}
	
	public void setUsernameChef(Chef newChef) {
		this.chef = newChef;
	}
}
