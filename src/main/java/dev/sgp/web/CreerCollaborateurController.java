package dev.sgp.web;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.entite.Collaborateur;
import dev.sgp.service.CollaborateurService;
import dev.sgp.util.Constantes;

public class CreerCollaborateurController extends HttpServlet {

	private CollaborateurService collabService = Constantes.COLLAB_SERVICE;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		this.getServletContext().getRequestDispatcher("/WEB-INF/views/collaborateurs/creer-collab.jsp").forward(req,
				resp);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String nom = req.getParameter("nom");
		String prenom = req.getParameter("prenom");

		String dateNaissance = req.getParameter("dateNaissance");
		LocalDate date = LocalDate.parse(dateNaissance, DateTimeFormatter.ofPattern("yyyy-MM-dd"));

		String adresse = req.getParameter("adresse");
		String numSecu = req.getParameter("numSecu");
		Collaborateur collab = new Collaborateur();
		collab.setNom(nom);
		collab.setPrenom(prenom);
		collab.setDateDeNaissance(date);
		collab.setAdresse(adresse);
		
	
		collab.setNumDeSecuSocial(numSecu);
		
		
		collabService.sauvegarderCollaborateur(collab);

		List<Collaborateur> collaborateurs = collabService.listerCollaborateurs();
		
		
		req.setAttribute("collabListe", collaborateurs);
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/views/collaborateurs/listerCollaborateurs.jsp")
				.forward(req, resp);
	}

}
