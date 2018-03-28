package dev.sgp.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CreerCollaborateurController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		this.getServletContext().getRequestDispatcher("/WEB-INF/views/collaborateurs/creer-collab.jsp").forward(req, resp);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String nom = req.getParameter("nom");
		String prenom = req.getParameter("prenom");

		String dateNaissance = req.getParameter("dateNaissance");

		String adresse = req.getParameter("adresse");
		String numSecu = req.getParameter("numSecu");


		
		
		System.out.println("COUOUUHHHHH");

		this.getServletContext().getRequestDispatcher("/WEB-INF/views/collaborateurs/listerCollaborateurs.jsp").forward(req, resp);
	}

}
