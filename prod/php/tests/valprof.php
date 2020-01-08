<?php
require_once 'autoload.inc.php';
$post = array(); // tableau qui contiendra les données du formulaire nettoyées
$errors = array(); // tableau qui contiendra les éventuelles erreurs
$success = false; // Passera à true s'il n'a pas d'erreurs et permettra d'afficher un message de réussite
$showError = false; // Affichera les messages d'erreurs s'il y en a

// Je vérifie la soumission du formulaire
if(!empty($_POST)){ // vérifie que $_POST est définie et non vide :
// var_dump($_POST); // vérif pour moi pour voir mon tableau d'origine

    // On nettoie les données
    foreach($_POST as $key => $value){
        $post[$key] = trim(strip_tags($value)); // on récupère du tableau initial un nouveau tableau perso avec mes nouvelles données sans html ni espaces... puis on vérifie
    }
    // On commence nos vérifications :
   // avec des preg_match, c'est toujours mieux 😀
    if(!preg_match("#^[A-Z]+[a-zA-Z0-9À-ú'\s]{3,25}#", $post['module'])) {  // on commence par vérifié que le champs, commence par une majuscule, puis qu'il contienne les caractères voulus et enfin, qu'il fasse entre 3 et 25 caractères
        $errors[] = 'Le nom du module doit comporter entre 3 et 25 caractères et commencer par une majuscule';
    }

    //
    if(!preg_match("#^[A-Z]+[a-zA-Z0-9À-ú'\s]{3,25}#", $post['nom'])) {
        $errors[] = 'L\objet de votre message doit comporter entre 3 et 25 caractères et commencer par une majuscule';
    }

    //
    if(!preg_match("[0-9]{1,2}", $post['note'])) {
        $errors[] = 'La note doit comporter entre 1 et 2 caractère(s)';
    }

    if(count($errors) > 0){ // On compte les erreurs, si elles sont supérieures à 0, on passe la variable $showErrors à true, afin de pouvoir les afficher
        $showError = true; // permettra d'afficher nos erreurs s'il y en a
    }
    else { //sinon, s'il n'y a pas d'erreur au vu du if précédent "if(count($error))"" :
        // On va donc inseret dans la base de donnée ou les nom de champs sont "lastname", "objet", "email", "conten"
        $requete = $pdo->prepare('UPDATE Inscrire set (noteCc, noteTp) VALUES (:updnoteCc, :updNoteTp));

        $requete->bindValue(':updnoteCc',   $post['noteCc']);
        $requete->bindValue(':updNoteTp',   $post['noteTp']);

        if($requete->execute()){  //Si la requete sexécute correctement
            $success = true;
        }
    }

    //var_dump($error);
}
?>
