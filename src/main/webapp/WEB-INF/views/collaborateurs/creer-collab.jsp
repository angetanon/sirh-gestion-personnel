<%@page import="java.util.List"%>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<!-- <link rel="stylesheet"
	href="<%=request.getContextPath()%>/bootstrap-3.3.7-dist/css/bootstrap.css"> -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">



<title>Creation collaborateur</title>
</head>



<body>
	<div class="container-fluid">
        <div class="row card">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand " href="<%=request.getContextPath()%>/images/logo.jpeg">
                    <img src="<%=request.getContextPath()%>/images/logo.png" class="img-fluid max-width: 6rem" alt="LOGO">
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
		<div class="row">
			<div class="col-lg-1">
				<h2></h2>
			</div>
			<div class="col-lg-4">
				<h2>Nouveau Collaborateur</h2>
			</div>
			<div class="col-lg-7">
				<h2></h2>
			</div>
		</div>
	</div>

	<form method="POST"
		action="<%=request.getContextPath()%>/collaborateurs/creer">
		<div class="container">
			<div class="row">
				<div class="col">Nom</div>
				<div class="form-group col-lg-6">

					<input id="nom" name="nom" type="text" class="form-control needs-validation"
						placeholder="Le nom est obligatoire" required>
				</div>
			</div>
			<div class="row">
				<div class="col">Prénom</div>
				<div class="form-group col-lg-6">

					<input id="prenom" name="prenom" type="text" class="form-control"
						placeholder="Le prénom est obligatoire" required>
				</div>
			</div>
			<div class="row">
				<div class="col">Date de naissance</div>
				<div class="form-group col-lg-6">

					<input id="dateNaissance" name="dateNaissance" type="date"
						class="form-control"
						placeholder="La date de naissance est obligatoire" required>
				</div>
			</div>
			<div class="row">
				<div class="col">Adresse</div>
				<div class="form-group col-lg-6">

					<textarea  id="adresse" name="adresse" cols="18" rows="5"
						class="form-control" placeholder="L'adresse est obligatoire"
						required></textarea>
				</div>
			</div>
			<div class="row">
				<div class="col">Numéro de sécurité social</div>

				<div class="form-group col-lg-6">

					<input id="numSecu" name="numSecu" type="text" class="form-control"
						placeholder="Le numéro de sécurité social est obligatoire : 15 caractères requis"
						required>
				</div>
			</div>
			<div class="row">
				<div class="col"></div>
				<!-- Button trigger modal -->
				<div class="form-group col-lg-6 text-right">
					<button id="creerModal" type="button" class="btn btn-dark" data-toggle="modal"
						data-target="#exampleModal">creer</button>
				</div>

			</div>
		</div>
	</form>



	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Creation d'un
						collaborateur</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<span>Vous êtes sur le point de créer un nouveau
						collaborateur</span>
					<div class="container">
						<div class="row">
							<div class="form-group col-lg-6">Nom</div>
							<div class="form-group col-lg-6" id="outputNom">......................................................</div>
						</div>
						<div class="row">
							<div class="form-group col-lg-6">Prénom</div>
							<div class="form-group col-lg-6" id="outputPrenom">......................................................</div>
						</div>
						<div class="row">
							<div class="form-group col-lg-6">Date de naissance</div>
							<div class="form-group col-lg-6" id="outputDateNaissance">......................................................</div>
						</div>
						<div class="row">
							<div class="form-group col-lg-6">Adresse</div>
							<div class="form-group col-lg-6" id="outputAdresse">......................................................</div>
						</div>
						<div class="row">
							<div class="form-group col-lg-6" >Numéro de sécurité social</div>

							<div class="form-group col-lg-6" id="outputNumSecuSocial">......................................................</div>
						</div>
					</div>

					<div class="modal-footer">
						<button type="button" class="btn btn-dark" data-dismiss="modal">annuler</button>
						<button type="submit" id="confirmer" name="confirmer"
							class="btn btn-dark">confirmer</button>
					</div>
				</div>
			</div>
		</div>





		<footer class="row">
			<div class="col-12 p-3 mb-2 bg-secondary"></div>
		</footer>



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

		<script>
		//bouton modal
		document.querySelector("#creerModal").addEventListener("click", function(){
			$("#exampleModal").modal();
		});
		//Affichage des saisies du formulaire dans le modal
		$("#nom").change(function(){

			  $("#outputNom").html($(this).val());

			});
		
		$("#prenom").change(function(){

			  $("#outputPrenom").html($(this).val());

			});
		$("#dateNaissance").change(function(){

			  $("#outputDateNaissance").html($(this).val());

			});
		$("#adresse").change(function(){   

			  $("#outputAdresse").html($(this).val());

			});
		$("#numSecu").change(function(){

			  $("#outputNumSecuSocial").html($(this).val());

			});
		
		
		
		//soumettre la requete (recuperer les parametres) saisies dans le formulaire
		document.querySelector("#confirmer").addEventListener("click", function(){
			//redirection vers la liste des collaborateurs
			document.forms[0].submit();
		});
		
		
		
			// Example starter JavaScript for disabling form submissions if there are invalid fields
			(function() {
				'use strict';
				window.addEventListener('load',	function() {
									// Fetch all the forms we want to apply custom Bootstrap validation styles to
									var forms = document.getElementsByClassName('needs-validation');

									// Loop over them and prevent submission
									var validation = Array.prototype.filter.call(forms,function(form) {
														
										// si l'url est creer-collab.html?errors 
														if (window.location.search == "?errors") {
															form.classList.add('was-validated');
														}
														form.addEventListener('submit',	function(event) {
																			if (form.checkValidity() === false) {
																				event.preventDefault();
																				event.stopPropagation();
																			}
																			form.classList.add('was-validated');
																		},false);
													});
								}, false);
			})();

			// Méthode de stockage
		/*	document.getElementById('confirmer').onclick = function() {
				if (typeof localStorage != 'undefined') {
					var sauvegarde = {
						nom : document.getElementById('nom').value,
						prenom : document.getElementById('prenom').value,
						dateNaissance : document
								.getElementById('dateNaissance').value,
						adresse : document.getElementById('adresse').value,
						numSecu : document.getElementById('numSecu').value,
					};  
					//Storage
					document.forms[0].submit();

					alert("Mémorisation effectuée");

				} else
					alert("localStorage n'est pas supporté");
			};
*/
			/*// Méthode de lecture
			document.getElementById('lecture').onclick = function() {
				if (typeof localStorage != 'undefined') {
					var sauvegarde = JSON.parse(localStorage.getItem('coord'));
					document.getElementById('nom').value = sauvegarde.nom;
					document.getElementById('prenom').value = sauvegarde.prenom;
					document.getElementById('dateNaissance').value = sauvegarde.dateNaissance;
					document.getElementById('adresse').value = sauvegarde.adresse;
					document.getElementById('numSecu').value = sauvegarde.numSecu;

					alert("Lecture effectuée");
				} else
					alert("localStorage n'est pas supporté");
			};
			*/
		</script>
</body>



</html>