<?php

require_once "webpage.class.php";
require_once "MyPDO.mysql.cd.include.php";
require_once "pageStage(Entreprise).php";

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


                    	<li class="nav-item">
                      		<a class="nav-link" href="pageStage(Entreprise).php">Créer un stage	
                      		</a>
                    	</li>


                    	<li class="nav-item active">
                      		<a class="nav-link" href="pageListeStage(Entreprise).php">Liste des Stages</a>
                            <span class="sr-only">(current)</span>
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
  <div id ="main-box">
  </div>

HTML
);


if (isset($_POST['title'])) {
  // on affiche nos résultats
  echo 'Le stage suivant : '.$_POST['nom']. 'a été ajouté à votre liste de favoris' ;
}




/*
  *****************************************************************************************
  CONFIGURATION
  *****************************************************************************************
*/
/*$message_erreur = "Vous n'avez créer aucun stage";
// on teste si le formulaire a été soumis
if (!isset($_POST['envoi']))
{
  // formulaire non envoyé
  echo '<p>'.$message_erreur.'</p>'."\n";
}
else
{
 
  // formulaire envoyé, on récupère tous les champs.
  $title     = (isset($_POST['title']))     ? $_POST['title']     : '';
  $name  = (isset($_POST['name']))  ? $_POST['name']  : '';
  $place   = (isset($_POST['place']))   ? $_POST['place']   : '';
  $price   = (isset($_POST['price']))   ? $_POST['price']   : '';
  $description = (isset($_POST['description'])) ? $_POST['description'] : '';
  $duration = (isset($_POST['duration'])) ? $_POST['duration'] : '';
}*/
$p->appendContent(<<<HTML
</body>
</html>
HTML
);
 echo $p->toHTML();