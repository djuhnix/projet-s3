<?php

require_once 'autoload.inc.php';

$p = new WebPage('Authentification');

try {
    switch ($_GET['u']) {
        case 'e':
            $user = Etudiant::createFromAuthSHA512($_REQUEST);
            $user->saveIntoSession();
            $p->appendToHead("<meta http-equiv='refresh' content='3; URL=eleves.php'>");
            break;

        case 'p':
            $user = Professeur::createFromAuthSHA512($_REQUEST);
            $user->saveIntoSession();
            $p->appendToHead("<meta http-equiv='refresh' content='3; URL=professeurs.php'>");
            break;

        case 's':
            $user = Responsable::createFromAuthSHA512($_REQUEST);
            $user->saveIntoSession();
            $p->appendToHead("<meta http-equiv='refresh' content='3; URL=entreprises.php'>");
            break;

        case 'g':
            $user = Professeur::createFromAuthSHA512($_REQUEST);
            $user->saveIntoSession();
            $p->appendToHead("<meta http-equiv='refresh' content='3; URL=gestion.php'>");
            break;

        default:
            $p->appendToHead(<<<HTML
                <meta http-equiv="refresh" content="1; URL=index.php">
HTML
            );
            break;
    }
    //$user = User::createFromAuthSHA512($_REQUEST) ;

    $p->appendContent(<<<HTML
    <div>Bienvenue {$user->firstName()}</div>
    <h3> Vous allez être redirigé vers votre page d'accueil.</h3>

HTML
    );
} catch (AuthenticationException $e) {
    $p->appendContent('Couple Login/Mot de passe incorrecte');
} catch (Exception $e) {
    $p->appendContent("Erreur : {$e->getMessage()}");
}

echo $p->toHTML();
