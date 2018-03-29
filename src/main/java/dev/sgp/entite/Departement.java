package dev.sgp.entite;

public class Departement {
	
	
	private int id;
	private String nomDepartement;
	
	
public Departement() {
		
		
	}
	
	public Departement(int id, String nomDepartement) {
		super();
		this.id = id;
		this.nomDepartement = nomDepartement;
	}



	



	public String getNomDepartement() {
		return nomDepartement;
	}



	public void setNomDepartement(String nomDepartement) {
		this.nomDepartement = nomDepartement;
	}



	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}







	
	
	
	

}
