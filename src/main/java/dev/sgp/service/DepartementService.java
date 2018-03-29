package dev.sgp.service;

import java.util.ArrayList;
import java.util.List;

import dev.sgp.entite.Collaborateur;
import dev.sgp.entite.Departement;

public class DepartementService {
List<Departement> listeDepartements = new ArrayList<>();
	
	public List<Departement> listerDepartement() {
	
		return listeDepartements;
	}
	
	public void sauvegarderDepartement(Departement departe) {
	
		listeDepartements.add(departe);
	}
	

}
