<?php

require_once 'autoload.inc.php';

User::logoutIfRequested();

$p = new WebPage('Université de Reims Champagne-Ardenne: Se connecter sur le site');
$p->appendJsUrl('../js/jquery.min.js');
$p->appendJsUrl('../js/jquery.flexslider-min.js');
$p->appendJsUrl('../js/jquery.waypoints.min.js');
$p->appendJsUrl('../js/jquery.easing.1.3.js');
$p->appendJsUrl('../js/modernizr-2.6.2.min.js');
$p->appendJsUrl('../js/bootstrap.min.js');
$p->appendJsUrl('../js/main.js');
$p->appendJsUrl('../js/sha512.js');

try {
    switch ($_GET['u']) {
            case 'e':
                $u = Etudiant::createFromSession();
                header('Location: eleves.php');
                break;

            case 'p':
                $u = Professeur::createFromSession();
                header('Location: professeurs.php');
                break;

            case 's':
                $u = Responsable::createFromSession();
                header('Location: entreprise.php');
                break;

            case 'g':
                $u = Professeur::createFromSession();
                header('Location: form.php?logout');
                break;

            default:
                header('Location: index.html');
                break;
        }
    /*$u = User::createFromSession() ;

    $p->appendContent(<<<HTML
        {$u->profile()}
        <a href='page1.php'>page 1</a>
        {$u->logoutForm($_SERVER['PHP_SELF'], 'Se déconnecter')}
HTML
) ;*/
} catch (NotInSessionException $e) {
    switch ($_GET['u']) {
        case 'e':
            $form = Etudiant::loginFormSHA512('auth.php?u=e', '../img/logo_urca.png');
            break;

        case 'p':
            $form = Professeur::loginFormSHA512('auth.php?u=p', '../img/logo_urca.png');
            break;

        case 's':
            $form = Responsable::loginFormSHA512('auth.php?u=s', '../img/logo_urca.png');
            break;

        case 'g':
            $form = Professeur::loginFormSHA512('auth.php?u=g', '../img/logo_urca.png');
            break;

        default:
            $p->appendToHead(<<<HTML
               
                <meta http-equiv="refresh" content="1; URL=index.html">
HTML
            );
            break;
    }

    $p->appendToHead(<<<HTML
    <meta charset="UTF-8">
    <meta name="keywords" content="moodle, Université de Reims Champagne-Ardenne: Se connecter sur le site" />
    <link rel="stylesheet" href="../css/animate.css">
    <!-- Icomoon Icon Fonts-->
    <link rel="stylesheet" href="../css/icomoon.css">
    <!-- Bootstrap  -->
    <link rel="stylesheet" href="../css/bootstrap.css">
    <!-- Flexslider  -->
    <link rel="stylesheet" href="../css/flexslider.css">
    <!-- Theme style  -->
    <link rel="stylesheet" href="../css/style.css">

HTML
);

    $p->appendCSS(<<<CSS
    form input {
        width : 4em ;
    }
CSS
);

    $p->appendContent(<<<HTML
        <div class="d-flex flex-row wrap">
            {$form}
        </div>
HTML
);
}

echo $p->toHTML();

/*                <div class="form-group clearfix">
                    <div class="checkbox-custom checkbox-inline checkbox-primary float-left rememberpass">
                        <input type="checkbox" id="rememberusername" name="rememberusername" value="1"  />
                        <label for="rememberusername">Se souvenir du nom d'utilisateur</label>
                    </div>
                </div>
*/
