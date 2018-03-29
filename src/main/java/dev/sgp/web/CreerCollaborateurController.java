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
import dev.sgp.entite.Departement;
import dev.sgp.service.CollaborateurService;
import dev.sgp.service.DepartementService;
import dev.sgp.util.Constantes;

public class CreerCollaborateurController extends HttpServlet {

	// recuperation du service
	private CollaborateurService collabService = Constantes.COLLAB_SERVICE;
	private DepartementService departement = Constantes.DEPARTEMENT_SERVICE;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		this.getServletContext().getRequestDispatcher("/WEB-INF/views/collaborateurs/creer-collab.jsp").forward(req,
				resp);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// recupération des paramètres

		String message = "CERTAINS CHAMPS DE SAISI SONT VIDES. VEUILLEZ REMPLIR TOUS LES CHAMPS ";
		String nom = req.getParameter("nom");
		String prenom = req.getParameter("prenom");
		String dateNaissance = req.getParameter("dateNaissance");

		String adresse = req.getParameter("adresse");
		String numSecu = req.getParameter("numSecu");

		if (numSecu.length() != 15) {
			resp.sendError(400, "15 Caractères acceptés dans le champs Numéros de sécurité social");

		} else if (nom == null || nom.isEmpty() || prenom == null || prenom.isEmpty() || dateNaissance == null
				|| dateNaissance.isEmpty() || adresse == null || adresse.isEmpty() || numSecu == null
				|| numSecu.isEmpty()) {

			resp.sendError(400, message);

		} else {

			LocalDate date = LocalDate.parse(dateNaissance, DateTimeFormatter.ofPattern("yyyy-MM-dd"));
			// création d'un nouveau collaborateur
			Collaborateur collab = new Collaborateur();

			collab.setNom(nom);
			collab.setPrenom(prenom);
			collab.setDateDeNaissance(date);
			collab.setAdresse(adresse);
			collab.setMatricule("matri");

			collab.setNumDeSecuSocial(numSecu);

			// sauvegarde de collaborateur dans service
			collabService.sauvegarderCollaborateur(collab);

			// liste de collaborateurs
			List<Collaborateur> collaborateurs = collabService.listerCollaborateurs();

			// liste de departements
			List<Departement> departements = departement.listerDepartement();

			// Passer les attributs à la requête
			req.setAttribute("collabListe", collaborateurs);

			this.getServletContext().getRequestDispatcher("/WEB-INF/views/collaborateurs/listerCollaborateurs.jsp")
					.forward(req, resp);

		}

	}

}
