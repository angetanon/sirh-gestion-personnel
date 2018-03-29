package dev.sgp.entite;

import java.time.LocalDate;
import java.time.ZonedDateTime;

public class Collaborateur {
	
	private String matricule;
	private String nom;
	private String prenom;
	private LocalDate dateDeNaissance ;
	private String adresse; 
	private String numDeSecuSocial;
	private String emailPro;
	private String photo;
	private ZonedDateTime dateHeureCreation;
	private boolean actif;
	private static int matri = 100000;
	private String inititulePoste;
	private Departement departement ;
	
	
	
	
	public Collaborateur() {
		super();
		
		
		
	}


	public String getMatricule() {
		return matricule;
	}


	public void setMatricule(String matri) {
		this.matricule = "M"+this.matri;
		this.matri++;
		
	}


	public String getNom() {
		return nom;
	}


	public void setNom(String nom) {
		this.nom = nom;
	}


	public String getPrenom() {
		return prenom;
	}


	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}


	public LocalDate getDateDeNaissance() {
		return dateDeNaissance;
	}


	public void setDateDeNaissance(LocalDate dateDeNaissance) {
		this.dateDeNaissance = dateDeNaissance;
	}


	public String getAdresse() {
		return adresse;
	}


	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}


	public String getNumDeSecuSocial() {
		return numDeSecuSocial;
	}


	public void setNumDeSecuSocial(String numDeSecuSocial) {
		this.numDeSecuSocial = numDeSecuSocial;
	}


	public String getEmailPro() {
		return emailPro;
	}


	public void setEmailPro(String emailPro) {
		this.emailPro = emailPro;
	}


	public String getPhoto() {
		return photo;
	}


	public void setPhoto(String photo) {
		this.photo = photo;
	}


	public ZonedDateTime getDateHeureCreation() {
		return dateHeureCreation;
	}


	public void setDateHeureCreation(ZonedDateTime dateHeureCreation) {
		this.dateHeureCreation = dateHeureCreation;
	}


	public boolean isActif() {
		return actif;
	}


	public void setActif(boolean actif) {
		this.actif = actif;
	}


	@Override
	public String toString() {
		return "Collaborateur [matricule=" + matricule + ", nom=" + nom + ", prenom=" + prenom + ", dateDeNaissance="
				+ dateDeNaissance + ", adresse=" + adresse + ", numDeSecuSocial=" + numDeSecuSocial + ", emailPro="
				+ emailPro + ", photo=" + photo + ", dateHeureCreation=" + dateHeureCreation + ", actif=" + actif + "]";
	}


	public static int getMatri() {
		return matri;
	}


	public static void setMatri(int matri) {
		Collaborateur.matri = matri;
	}


	public String getInititulePoste() {
		return inititulePoste;
	}


	public void setInititulePoste(String inititulePoste) {
		this.inititulePoste = inititulePoste;
	}


	public Departement getDepartement() {
		return departement;
	}


	public void setDepartement(Departement departement) {
		this.departement = departement;
	}


	
	
	
	
	

}
