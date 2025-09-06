package entity;

public class Topic {
	
	private String nome;
	private String descrizione;
	
	public Topic(String newNome, String newDescrizione) {
		this.nome = newNome;
		this.descrizione = newDescrizione;
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
