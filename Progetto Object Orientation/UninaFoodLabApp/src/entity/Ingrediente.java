package entity;

public class Ingrediente {
	private int idIngrediente;
	private String nome;
	private boolean allergene;
	private String unitàMisura;
	
	public Ingrediente(int newIdIngrediente, String newNome, boolean newAllergene, String newUnitàMisura) {
		this.idIngrediente = newIdIngrediente;
		this.nome = newNome;
		this.allergene = newAllergene;
		this.unitàMisura = newUnitàMisura;
	}
	
	public int getIdIngrediente() {
		return idIngrediente;
	}
	
	public void setIdIngrediente(int newIdIngrediente) {
		this.idIngrediente = newIdIngrediente;
	}
	
	public String getNome() {
		return nome;
	}
	
	public void setNome(String newNome) {
		this.nome = newNome;
	}
	
	public boolean isAllergene() {
		return allergene;
	}
	
	public void setAllergene(boolean newAllergene) {
		this.allergene = newAllergene;
	}
	
	public String getUnitàMisura() {
		return unitàMisura;
	}
	
	public void setUnitàMisura(String newUnitàMisura) {
		this.unitàMisura = newUnitàMisura;
	}
}
