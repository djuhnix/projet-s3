<?php
require_once('autoload.inc.php');

try {
$u = Responsable::createFromSession() ;

$log = "http://{$_SERVER['SERVER_NAME']}/".dirname($_SERVER['PHP_SELF'])."/form.php?logout";

$p = new WebPage("Page Entreprise") ;


$p->appendToHead(<<<HTML

    <meta charset="UTF-8">
    <title>Université de Reims Champagne-Ardenne: fiche perso</title>
    <!-- font awesome  -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.7/css/all.css">
    <!-- Theme style  -->
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <controller src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></controller>
    <controller src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></controller>
    <controller src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></controller>
HTML
) ;

$p->appendContent(<<<HTML
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<div>
    <!--Header commun à toutes les pages-->
    <header class="topbar">
        <img src="images/logo_urca.png" class="center image">
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

                    <li class="nav-item active">
                        <a class="nav-link" href="#">Home
                            <span class="sr-only">(current)</span>
                        </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="#">Gerer les Stagiaires</a>
                    </li>
                    
                    <li class="nav-item">
                        <a class="nav-link" href="$log">Deconnexion</a>
                    </li>

                </ul>
            </div>
        </div>
    </nav>
</div>
<!-- Fin du header -->
<!-- box contenant tous les éléments de la page -->
<div id="main-box">
    <div class="container">
        <!-- fiche perso -->
        <div class="row">
            <div class="card center">
                <img src="images/img-1.jpg" alt="Avatar" style="width:100%">
                <div class="container">
                    <h4 class="nom"><b>{$u->firstName()}</b></h4>
                    <p>{$u->profile()}</p>
                    <!-- ajouter des infos si necessaire -->
                </div>
            </div>
        </div>
        <!-- box contenant les stages -->
        <div class="row">
            <h2 class="center row-bottom-padded-sm"><b>Vos stages</b></h2>
            <div class="col-lg-12 card">
                <div class="container row">
                    <div class="col-lg-3">
                        <h4><b>Titre</b></h4>
                        <p class ="stagiaire">Stagiaire</p>
                    </div>

                    <div class="col-lg-5 desc">
                        <p>description du stage</p>
                    </div>
                </div>
                <!-- box 2 -->
            </div>
            <div class="col-lg-12 card">
                <div class="container row">
                    <div class="col-lg-3">
                        <h4><b>Titre</b></h4>
                        <p class ="stagiaire">Stagiaire</p>
                    </div>

                    <div class="col-lg-5 desc">
                        <p>description du stage</p>
                    </div>
                </div>

            </div>
            <a class="btn icon-btn btn-success center" href="#">
                <span class="fas fa-plus btn-font text-success "></span>
                Add
            </a>
        </div>
    </div>
</div>
HTML
) ;
}    
catch (notInSessionException $e) {
    // Pas d'utilisateur connecté
    header("Location: http://{$_SERVER['SERVER_NAME']}/".dirname($_SERVER['PHP_SELF'])."/form.php") ;
    die() ;
}

echo $p->toHTML() ;