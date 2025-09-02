package entity;

public class Topic {
	private int idTopic;
	private String nome;
	private String descrizione;
	
	public Topic(int newIdTopic, String newNome, String newDescrizione) {
		this.idTopic = newIdTopic;
		this.nome = newNome;
		this.descrizione = newDescrizione;
	}
	
	public int getIdTopic() {
		return idTopic;
	}
	
	public void setIdTopic(int newIdTopic) {
		this.idTopic = newIdTopic;
	}
	
	public String getNome() {
		return nome;
	}
	
	public void setNome(String newNome) {
		this.nome = newNome;
	}
	
	public String getDescrizione() {
		return descrizione;
	}
	
	public void setDescrizione(String newDescrizione) {
		this.descrizione = newDescrizione;
	}
}
