<?php
require_once('autoload.include.php') ;

User::logoutIfRequested() ;

$p = new WebPage('Université de Reims Champagne-Ardenne: Se connecter sur le site') ;

try {
        switch ($_GET['u']) {
            case 'e':
                $u = Etudiant::createFromSession() ;
                header('Location: eleves.php');      
                break;
            
            case 'p':
                $u = Professeur::createFromSession() ;
                header('Location: professeurs.php');      
                break;
            
            case 's':
                $u = Responsable::createFromSession() ;
                header('Location: entreprise.php');      
                break;
            
            case 'g': 
                $u = Professeur::createFromSession() ;
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


}
catch (NotInSessionException $e) {

    switch ($_GET['u']) {
        case 'e':
            $form = Etudiant::loginFormSHA512('auth.php?u=e') ;
            break;
        
        case 'p':
            $form = Professeur::loginFormSHA512('auth.php?u=p') ;
            break;
        
        case 's':
            $form = Responsable::loginFormSHA512('auth.php?u=s') ;
            break;

        case 'g':
            $form = Professeur::loginFormSHA512('auth.php?u=g') ;
            break;
        
        default:
            $p->appendToHead(<<<HTML
               
                <meta http-equiv="refresh" content="1; URL=index.html">
HTML
            ) ;
            break;
    }

$p->appendToHead(<<<HTML
<meta charset="UTF-8">
    <meta name="keywords" content="moodle, Université de Reims Champagne-Ardenne: Se connecter sur le site" />
    <link rel="stylesheet" href="css/animate.css">
    <!-- Icomoon Icon Fonts-->
    <link rel="stylesheet" href="css/icomoon.css">
    <!-- Bootstrap  -->
    <link rel="stylesheet" href="css/bootstrap.css">
    <!-- Flexslider  -->
    <link rel="stylesheet" href="css/flexslider.css">
    <!-- Theme style  -->
    <link rel="stylesheet" href="css/style.css">

    <!-- Modernizr JS -->
    <script src="js/modernizr-2.6.2.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

HTML
) ;
    
    $p->appendCSS(<<<CSS
    form input {
        width : 4em ;
    }
CSS
) ;
   
    
    $p->appendContent(<<<HTML
        <div class="d-flex flex-row wrap">
            {$form}
        </div>
HTML
) ;
}

$p->appendContent(<<<HTML
<!-- jQuery -->
    <script src="js/jquery.min.js"></script>
    <!-- jQuery Easing -->
    <script src="js/jquery.easing.1.3.js"></script>
    <!-- Bootstrap -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Waypoints -->
    <script src="js/jquery.waypoints.min.js"></script>
    <!-- Flexslider -->
    <script src="js/jquery.flexslider-min.js"></script>
    
    
    <!-- MAIN JS -->
    <script src="js/main.js"></script>
</div>
HTML
            );


echo $p->toHTML() ;


/*                <div class="form-group clearfix">
                    <div class="checkbox-custom checkbox-inline checkbox-primary float-left rememberpass">
                        <input type="checkbox" id="rememberusername" name="rememberusername" value="1"  />
                        <label for="rememberusername">Se souvenir du nom d'utilisateur</label>
                    </div>
                </div>
*/