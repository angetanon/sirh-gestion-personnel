package dev.sgp.web;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.entite.Collaborateur;
import dev.sgp.entite.Departement;
import dev.sgp.service.CollaborateurService;
import dev.sgp.service.DepartementService;
import dev.sgp.util.Constantes;

public class ListerCollaborateurController extends HttpServlet {

	
	// recuperation du service
	private CollaborateurService collabService = Constantes.COLLAB_SERVICE;
	private DepartementService departementService = Constantes.DEPARTEMENT_SERVICE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		
		
		
		
		// liste de collaborateurs
		List<Collaborateur> collaborateurs = collabService.listerCollaborateurs();
		
		//liste des collaborateurs
		List<Departement> departements = departementService.listerDepartement();
		
		
		req.setAttribute("collabListe", collaborateurs);
		
		
		
		req.getRequestDispatcher("/WEB-INF/views/collaborateurs/listerCollaborateurs.jsp")
		.forward(req, resp);
	}
}
