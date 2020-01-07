<?php

require_once "webpage.class.php";
require_once "MyPDO.mysql.cd.include.php";

$p = new WebPage('Page Entreprise Stage');

$p->appendCssUrl('css/header.css') ;
$p->appendCssUrl('css/index.css') ;
$p->appendCssUrl('css/main.css') ;
$p->appendCssUrl('css/stage.css') ;

$p->appendContent(<<<HTML
<html dir="ltr" lang="fr" xml:lang="fr">
<head>
    <meta charset="UTF-8">
    <!-- font awesome  -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.7/css/all.css">
    <!-- Theme style  -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>
	
	<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
	<div>
    	<header class="topbar">
        	<img src="img/logo_urca.png" class="center image">
    	</header>
    	<!--NavBar-->
    	<nav class="navbar navbar-expand-lg navbar-dark mx-background-top-linear">
        	<div class="container">
            	<a class="navbar-brand" href="index.html" style="text-transform: uppercase;"> Master Info</a>
            	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
                    aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                	<span class="navbar-toggler-icon"></span>
            	</button>
            	<div class="navbar-collapse collapse show" id="navbarResponsive">

                	<ul class="navbar-nav ml-auto">


                    	<li class="nav-item">
                      		<a class="nav-link" href="html/eleves.html">Retour à l'accueil
                      		</a>
                    	</li>


                    	<li class="nav-item active">
                      		<a class="nav-link" href="pageStage(Entreprise).php">Créer un stage
                          		<span class="sr-only">(current)</span>
                      		</a>
                    	</li>


                    	<li class="nav-item">
                      		<a class="nav-link" href="pageListeStage(Entreprise).php">Liste des Stages</a>
                    	</li>

                  		<li class="nav-item">
                      		<a class="nav-link" href="html/index.html">Déconnexion</a>
                    	</li>
                	</ul>
              	</div>
          	</div>
        </nav>
    </div>
</head>
<body>
<div id = "main-box">
	<div class ="Formulaire">
	<form method="post" action="pageListeStage(Entreprise).php">
	<h1>Formulaire de Création de Stage pour Master </h1>

	 	<label for="title" style="color:black"> Titre du stage : </label> 
	 	<input name="title" type="text" placeholder="Titre du stage" size="50" required> <br>
	 	
	 	<label for="name" style="color:black"> Nom de l'entreprise : </label>
	 	<input name="name" type="text" placeholder="Nom de l'entreprise" size="50" required> <br>

	 	<label for="place" style="color:black"> Lieu de l'entreprise :</label>
	 	<input name="place" type="text" placeholder="Lieu de l'entreprise" size="50" required> <br>
	 		
	 	<label for="price" style="color:black"> Rémunération :</label>
	 	<input name="price" type="text" placeholder="Rémunération du stage" size="50" required> <br>
	 	
	 	<label for="duration" style="color:black"> Durée du stage :
	 	A partir de <input name="duration" type="date" placeholder="Durée du stage" required> jusqu'à <input name="duration" type="date" placeholder="Durée du stage" required></label> <br>

	 	<label for ="description" style="color: black"> Détails du stage : </label><br>
	 	<textarea name="description" id =description rows="5" cols="100"></textarea>  <br>
	 	
	 	<input type="submit" value="Envoyer la proposition de stage" required>

	</form>
	</div>
</div>

HTML
);
$p->appendContent(<<<CSS
	.Formulaire h1{
		text-align: center;
	}

	.Formulaire label{
		text-align: center;
	}

	.Formulaire input{
		text-align: center;
	}
CSS
);

echo $p->toHTML();