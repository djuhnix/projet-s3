<?php

require_once "webpage.class.php";
require_once "myPDO.mysql.cd.include.php";

$page = new WebPage('Page étudiant stage');

$page->appendCssUrl('css/header.css') ;
$page->appendCssUrl('css/index.css') ;
$page->appendCssUrl('css/main.css') ;
$page->appendCssUrl('css/stage.css') ;

$page->appendJs(<<<JAVASCRIPT
	function afficheDiv(idDiv){
	//on masque toutes les DIV
		HideByClassName('mesDiv');
		if(idDiv!=0){
		//on affiche celle qu'on a choisi
			var elm = document.getElementById(idDiv);
			elm.style.display='block';
		}
	}

	function HideByClassName(className){

 		// Loop through each element with the class name of slidePanel
    	var elementList = document.getElementsByClassName(className);

    	// Iterate through each element in the array
    	for (i = 0; i< elementList.length; i++) {
  
        	var ele = elementList[i];
          	console.log(ele.id);
        ele.style.display='none';
    	}
    }

	function allowDrop(ev) {
		ev.preventDefault();
	}

	function drag(ev) {
		ev.dataTransfer.setData("text", ev.target.id);
	}

	function drop(ev) {
		ev.preventDefault();
  		var data = ev.dataTransfer.getData("text");
  		ev.target.appendChild(document.getElementById(data));
	}
JAVASCRIPT
);

$page->appendContent(<<<HTML
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
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
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
            	<div class="collapse navbar-collapse" id="navbarResponsive">

                	<ul class="navbar-nav ml-auto">


                    	<li class="nav-item">
                      		<a class="nav-link" href="html/eleves.html">Retour à l'accueil
                      		</a>
                    	</li>


                    	<li class="nav-item active">
                      		<a class="nav-link" href="pageStage.php">Consulter les stages
                          		
                      		</a>
                    	</li>


                    	<li class="nav-item">
                      		<a class="nav-link" href="pageListeStage.php">Liste des favoris</a>
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
    <h4>Le stage suivant : "OCI - Stage fin d'étude Web développeur - Master 2, charg H/F" a été ajouté à votre liste des favoris. Voulez-vous envoyer votre candidature ? <br> <br>
      
      Déposer votre CV ici &rarr; <input type ="file" id="CV" name="CV" accept="cv/docx, cv/pdf, cv/pptx"> <br> <br>
      Déposer votre lettre de motivation ici &rarr; <input type ="file" id="LDM" name="Lettre de motivation" accept="LdM/docx, LdM/pdf"> <br> <br>

    <button class="w3-button w3-blue" value="submit">Envoyer votre candidature et m'envoyer une notification de la réponse </button><br><br>
    <button class="w3-button w3-red" value="reset"> Refuser la candidature et supprimer ce stage de la liste des favoris </button>
  </div>
</body>
</html>
HTML
);
echo $page->toHTML();