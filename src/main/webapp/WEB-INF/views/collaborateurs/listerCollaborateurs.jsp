<%@page import="dev.sgp.entite.Collaborateur"%>
<%@page import="java.util.List"%>
<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<!-- <link rel="stylesheet"
	href="<%=request.getContextPath()%>/bootstrap-3.3.7-dist/css/bootstrap.css"> -->
	
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<title>SGP - App</title>
</head>
<body>
	



	<div class="container-fluid">
        <div class="row card">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand " href="logo.jpeg">
                    <img src="logo.png" class="img-fluid max-width: 6rem" alt="LOGO">
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link " href="lister">Collaborateurs</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="statistiques.html">Statistiques</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="activites.html">Activités</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
    </div>
		<div class="container-fluid">

			<header>


				<div class="row">
					<div class="col-8"></div>
					<div class="col-4">
						<a class="btn btn-dark" href="creer">Ajouter un
							nouveau collaborateur</a>
					</div>
				</div>


				<div class="row">

					<div class="col-md-4 offset-2">
						<h2>Les Collaborateurs</h2>
						<br>
					</div>
					<div class="col-md-12"></div>
				</div>


			</header>

			<div class="container">
				<section>
					<div class="container-fluid">
						<div class="row">
							<div class="col-8">
								<form action="post">
									<p>
										<label for="rechercher">Rechercher un nom ou un prénom
											qui commence par : <input type="text" name="rechercher"
											id="rechercher"> <input type="button"
											value="Rechercher">
										</label>

									</p>

								</form>
							</div>
							<div class="col-4">

								<input type="checkbox" name="collabo" id="collabo"> <label
									for="collabo"></label>Voir les Collaborateurs désactivés

							</div>
						</div>

						<div class="container">
							<form class="row" action="post">

								<label for="collabo"></label>Filtrer par département : <select
									name="filtre" id="filtre">
									<option value="Tous">Tous</option>
									<option value="Comptabilité">Comptabilité</option>
									<option value="Ressources Humaines">Ressources
										Humaines</option>
									<option value="Informatique">Informatique</option>
								</select>


							</form>
							<br> <br> <br> <br> <br>
						</div>


						
							<%
							List<Collaborateur> collaborateurs = (List<Collaborateur>) request.getAttribute("collabListe");
								for (Collaborateur collab : collaborateurs) {
							%>
							
							
							<div class="col-lg-4">
                                <div class="card bg-light mb-3" style="max-width: 18rem;">
                                    <div class="card-header"><%=collab.getNom()%> <%=collab.getPrenom()%></div>
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <img src="user.png" class="img-fluid max-width: 6rem" alt="photo">

                                            </div>
                                            <div class="col-lg-8">
                                                <p class="card-text">
                                                    <%=collab.getAdresse()%>
                                                    <br> <%=collab.getDateDeNaissance()%>
                                                    <br> <%=collab.getNumDeSecuSocial()%>
                                                    <br> 
                                                    <br>
                                                </p>
                                                <p class="text-right">
                                                    <a class="btn btn-dark" href="editer-collab.html">Editer</a>
                                                </p>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
							<%
								}
							%>
							
							<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
			integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
			crossorigin="anonymous"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
			integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
			crossorigin="anonymous"></script>
		<script
			src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
			integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
			crossorigin="anonymous"></script>
						
</body>
</html>