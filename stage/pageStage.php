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
                          		<span class="sr-only">(current)</span>
                      		</a>
                    	</li>


                    	<li class="nav-item">
                      		<a class="nav-link" href="pageListeStage.php">Liste des favoris</a>
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
<h2>Liste déroulante des stages qui sont à votre disposition </h2>
    <div id = "main-box">    
    	<form action ="pageListeStage.php" method="POST">
        	<div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
			
				<h3><a class="nav-link active" id="v-pills-1-tab" data-toggle="pill" href="#v-pills-1" role="tab" aria-controls="v-pills-1" aria-selected="true" name="Stage1">Stage fin d'étude Ingénieur - Master 2, charg H/F
				</a></h3> 

				<h3><a class="nav-link" id="v-pills-2-tab" data-toggle="pill" href="#v-pills-2" role="tab" aria-controls="v-pills-2" aria-selected="false" name="Stage2">Stage Technicien(ne) Support Informatique - MHCS
				</a></h3>

				<h3><a class="nav-link" id="v-pills-3-tab" data-toggle="pill" href="#v-pills-3" role="tab" aria-controls="v-pills-3" aria-selected="false" name="Stage3">Stagiaire Développeur (H/F)
				</a></h3>


			</div>
			<div class="tab-content" id="v-pills-tabContent">
				<div class="tab-pane fade show active" id="v-pills-1" role="tabpanel" aria-labelledby="v-pills-1-tab" style="color:black">
				<h4>OCI - Stage fin d'étude Web développeur - Master 2, charg H/F <br>
				5, Rue René FRANCART - 51100 REIMS <br>
				Du 16 Mars 2020 au 18 Mai 2020 <br>
				Vous serez rémunéré 575€/mois <br>
				Détail du stage : Vous participerez activement à la réalisation des études (suivant les projets en cours) dans le secteur du bâtiment, dans l'environnement ou milieu industriel. <br>
				Vous travaillerez sous la supervision d'un ingénieur, afin de développer vos compétences et les responsabilités qui vous seront confiées. <br>
				En tâche de fond, vous aurez à développer une compétence pour le du bureau d'études.Cela pourra être " la mesure et prédiction de l'intelligibilité d'un système de sonorisation ", ou " l'analyse de phénomènes vibratoires et le dimensionnement de solution de réduction "</h4></div>


				<div class="tab-pane fade" id="v-pills-2" role="tabpanel" aria-labelledby="v-pills-2-tab" style="color:black">
				<h4>MHCS - Stage Technicien(ne) Support Informatique - Master 2, charg H/F <br>
				12, rue du Temple - 51100 REIMS <br>
				Du 30 Mars 2020 au  8 Juin 2020 <br>
				Vous serez rémunéré 589€/mois <br>
				Détail du stage : Être un support informatique auprès d'utilisateurs sur les outils informatiques utilisés au sein de Vignoble (ID Viniteca, QlikSense, Office 365 ...) : faire un diagnostic de premier niveau, identifier le problème, le formuler puis le résoudre ; <br>
				Participer à des projets informatiques au sein d'un groupe : définir le projet ;<br>
				Explorer les solutions disponibles et réaliser un comparatif ; <br>
				Rédiger des rapports de réunions ; <br>
				Configurer et mettre en œuvre le produit ; <br>
				Accompagner le changement auprès des utilisateurs ; <br>
				Analyser les résultats obtenus et valider l'intérêt de la solution retenue ; <br>
				Animer des sessions de formation en interne aux utilisateurs : Définir le programme pédagogique ; <br>
				Concevoir le support de formation ; <br>
				Mener les formations ; <br>
				Rédiger et mettre en forme de supports de communication et modes opératoires ; <br>
				Être force de proposition pour mettre en place de nouveaux outils et des actions préventives.<br> 
				Dans ce cadre, vous êtes amenés à être en relation à la fois avec : <br>
				Des interlocuteurs internes : Administratifs, Encadrants (Chefs de secteurs et Contremaîtres) , Vignerons, Direction Vignes et approvisionnements M&C - Direction MHIS service Amont ; Des interlocuteurs externes : consultants informatiques de sociétés en prestation.
</h4></div>


				<div class="tab-pane fade" id="v-pills-3" role="tabpanel" aria-labelledby="v-pills-3-tab" style="color:black">
				<h4>Cabinet de recrutement et de conseil en Ressources Humaines: MORENO Consulting - Stagiaire Développeur (H/F) <br>
				39, rue Hincmar - 51100 REIMS <br>
				Du 26 Mars 2020 au  2 Juin 2020 <br>
				Vous serez rémunéré 530€/mois <br>
				Détail du stage : Sous l’autorité directe du Directeur Commercial, vous organisez, gérez et développez l’activité du magasin, dans le respect de la politique générale et commerciale de l’entreprise. Votre mission principale est donc d’analyser et améliorer la performance économique de votre centre de profit.
</h4></div>

			</div>
			<input type = "submit" value = "Ajouter aux favoris">
		</form>

	</div>
HTML
);

echo $page ->toHTML();