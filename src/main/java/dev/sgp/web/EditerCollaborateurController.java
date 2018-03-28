package dev.sgp.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EditerCollaborateurController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String matricule = req.getParameter("matricule");

		// String titre = req.getParameter("");
		// String nom = req.getParameter("");
		// String prenom = req.getParameter("");

		if (matricule == null) {
			resp.sendError(400, "Matricule not existe");
		} else {
			resp.setContentType("text/html");
			resp.setStatus(200);

			// code HTML ecrit dans le corps de la reponse
			resp.getWriter()
					.write("<h1>Edition de collaborateur</h1>" + "<ul>" + "<li>Matricule :" + matricule + "</li></ul>");
		}

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String matricule = req.getParameter("matricule");

		String titre = req.getParameter("titre");
		String nom = req.getParameter("nom");
		String prenom = req.getParameter("prenom");
		boolean error = false;

		String message = "Les paramètres suivants sont incorrects : ";

		if (matricule == null) {
			message += "matricule ";
			error=true;
		}
		if (titre == null) {
			message += "titre";
			error=true;
		}
		if (nom == null) {
			message += "nom";
			error=true;
		}
		if (prenom == null) {
			message += "prenom" ;
			error=true;
		}
		
		if (error) {
			
		
			resp.sendError(400, message);

		}

		else {
			resp.setContentType("text/html");
			resp.setStatus(201);

			// code HTML ecrit dans le corps de la reponse
			resp.getWriter()
					.write("<h1>Creation d’un collaborateur avec les informations suivantes</h1>" + "<ul>" + "<li>Matricule :" + matricule + "</li>"
							+"<li>titre :" + titre + "</li>" + "<li>nom :"
							+ nom + "</li>" + "<li>prenom :" + prenom + "</li></ul>");
		}

	}

}
