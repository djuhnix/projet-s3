<?php
require_once('autoload.include.php') ;
require_once('MyPDO.template.php') ;
require_once('MyPDO.class.php') ;

class AuthenticationException extends Exception { }

class NotInSessionException extends Exception { }

/**
* Class Utilisateur liant la Platform à la BD.
*/
abstract class User {
    /**
     * Identifiant unique du User dans la base de données
     * @var string $id
     */
    protected $id = null ;

    /**
     * Nom
     * @var string $lastName
     */
    protected $lastName  = null ;

    /**
     * Prénom
     * @var string $firstName
     */
    protected $firstName = null ;

    /**
     * Login
     * @var string $login
     */
    protected $login     = null ;

    /**
     * Numéro de téléphone
     * @var string $phone
     */
    protected $phone     = null ;    
    
    /**
    * Adresse E-mail
    * @var string $mail
    */
    protected $mail     = null ;    
    
    /**
    * Date de naissance
    * @var string $dateNaissance
    */
   protected $dateNaissance     = null ;

    /**
     * Clé de session.
     */
    const session_key = "__user__" ;

    /**
     * Constructeur privé pour éviter de l'instancier.
     */
    private function __construct() {
    }

    /**
     * Accesseur sur le prénom de l'Utilisateur
     *
     * @return string prénom
     */
    public function firstName() : string {
        return $this->firstName ;
    }

    /**
     * retourne les informations de l'utilisateur
     *
     * @return string code HTML.
     */
    public function profile() : string {
            // Affichage
            return <<<HTML
    <div><span>Nom      </span> : <span>{$this->lastName} </span></div>
    <div><span>Prénom   </span> : <span>{$this->firstName}</span></div>
    <div><span>Login    </span> : <span>{$this->login}    </span></div>
    <div><span>Téléphone</span> : <span>{$this->phone}    </span></div>
    <div><span>E-mail   </span> : <span>{$this->mail}    </span></div>
    <div><span>Date de naissance</span> : <span>$this->dateNaissance    </span></div>
HTML;
    }

    /*
     * formulaire de connexion
     * @param string $action URL (action) vers la cible du formulaire
     * @param string $submitText texte du bouton d'envoi
     *
     * @return string code HTML du formulaire
     
    static public function loginForm(string $action, string $submitText = 'OK') : string {
        return <<<HTML
  <div class="p-2 row-xs-12 col-lg-3 center">
            <div class="center">
            <div>
                <img src="images/logo_urca.png">
            </div>
            <form class="w-p100 form-align center-block" action="{$action}" method="POST" name='auth' id="login">
                <input type="hidden" name="anchor" value="">
                <script>document.getElementById('anchor').value = location.hash;</script>
                <div class="form-group input-lg input-form ">
                    <label for="username" class="sr-only">
                        Nom d'utilisateur
                    </label>
                    <input type="text" class="form-control" id="username" name="login" placeholder="Nom d'utilisateur">
                </div>
                <div class="form-group input-lg input-form">
                    <label for="password" class="sr-only">Mot de passe</label>
                    <input type="password" name="pass" id="password" value="" class="form-control"placeholder="Mot de passe">
                </div>
                <div class="form-group">
                    <input type="hidden" name="logintoken" value="zz1Ac4WA83ZWbwSXRisZPboJsLd4goRN">
                </div>
                <div class="form-group clearfix">
                    <div class="checkbox-custom checkbox-inline checkbox-primary float-left rememberpass">
                        <input type="checkbox" id="rememberusername" name="rememberusername" value="1"  />
                        <label for="rememberusername">Se souvenir du nom d'utilisateur</label>
                    </div>

                </div>
                <div class="fh5co-cards">
                    <a class="float-center" href="/forgot_password.php">Mot de passe oublié ?</a>
                </div>
                <button type="submit" class="btn btn-primary input-form" id="loginbtn">{$submitText}</button>

            </form> 
            <footer class="page-copyright">
            </footer>
            </div>
        </div>
HTML;
    }*/

    /*
     * Validation de la connexion de l'utilisateur
     * @param array $data tableau contenant les clés 'login' et 'pass' associées au login et au mot de passe
     * @throws AuthenticationException si l'authentification échoue
     *
     * @return User utilisateur authentifié
     *
    public static function createFromAuth(array $data) : self {
        if (!isset($data['login']) || !isset($data['pass'])) {
            throw new AuthenticationException("Les paramètres Login et mot de passe sont vide.") ;
        }

        // Préparation de la requête
         $stmt = myPDO::getInstance()->prepare(<<<SQL
    SELECT id, firstName, lastName, login, phone, mail, dateNaissance
    FROM user
    WHERE login    = :login
    AND   sha512pass = SHA2(:pass, 512)
    SQL
    ) ;

        $stmt->execute(array(
            ':login' => $data['login'],
            ':pass'  => $data['pass'])) ;
        // Fetch des valeurs retournées.
        $stmt->setFetchMode(PDO::FETCH_CLASS, __CLASS__) ;
        if (($utilisateur = $stmt->fetch()) !== false) {
            Session::start() ;
            $_SESSION[self::session_key]['connected'] = true ;
            return $utilisateur ;
        }
        else {
            throw new AuthenticationException("Couple Login/ mot de passe incorrect") ;
        }
    }
    */

/**
     * Formulaire de déconnexion de l'utilisateur
     * @param string $text bouton de déconnexion
     * @param string $action URL (action) vers la cible du formulaire
     *
     * @return string Code HTML du formulaire.
     */
    public static function logoutForm(string $action, string $text) : string {
        $text = htmlspecialchars($text, ENT_COMPAT, 'utf-8') ;
        return <<<HTML
    <form action='$action' method='POST'>
    <button class="nav-link" style="" type='submit' name='logout'>$text</button>
    

    </form>
HTML;
    }
    

    /**
     * Deconnexion : arret de la session en cours.
     */
    public static function logoutIfRequested() : void {
        if (isset($_REQUEST['logout'])) {
            Session::start() ;
            unset($_SESSION[self::session_key]) ;
        }
    }

    /**
     * Verrification du statut de la session en cours.
     *
     * @return bool True si l'uttilisateur est connecté correctement.
     */
    static public function isConnected() : bool {
        Session::start() ;
        return (   isset($_SESSION[self::session_key]['connected'])
                && $_SESSION[self::session_key]['connected'])
            || (   isset($_SESSION[self::session_key]['user'])
                && $_SESSION[self::session_key]['user'] instanceof self) ;
    }

    /**
     * Sauvegarde de l'objet Utilisateur dans la session en cours.
     */
    public function saveIntoSession() : void {
        // Mise en place de la session
        Session::start() ;
        // Mémorisation de l'Utilisateur
        $_SESSION[self::session_key]['user'] = $this ;
    }

    /**
     * Lecture de l'objet User dans la session
     * @throws NotInSessionException si l'objet n'est pas dans la session
     *
     * @return User
     */
    abstract static public function createFromSession() ;
    /*{
        Session::start() ;
        if (isset($_SESSION[self::session_key]['user'])) {
            $u = $_SESSION[self::session_key]['user'] ;

            if (is_object($u) && get_class($u) == get_class()) {
                return $u ;
            }
        }
        throw new NotInSessionException() ;
    }*/

    static public function randString($length = 16) {
        $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $charactersLength = strlen($characters);
        $randomString = '';
        for ($i = 0; $i < $length; $i++) {
            $randomString .= $characters[rand(0, $charactersLength - 1)];
        }
        return $randomString;
    }

    /**
     * Production d'un formulaire de connexion contenant un challenge. 
     * @param string $action URL cible du formulaire
     * @param string $submitText texte du bouton d'envoi
     *
     * @return string code HTML du formulaire
     */
    static public function loginFormSHA512(string $action, string $submitText = 'OK') : string {
        $texte_par_defaut = 'login' ;
        Session::start() ;

        $_SESSION[self::session_key]['challenge'] = Self::randString(16) ;

        return <<<HTML
<script type='text/javascript' src='sha512.js'></script>
<script type='text/javascript'>
function crypter(f, challenge) {
    if (f.login.value.length && f.pass.value.length) {
        f.code.value = CryptoJS.SHA512(CryptoJS.SHA512(f.pass.value).toString()+challenge+CryptoJS.SHA512(f.login.value).toString()).toString() ;
        f.login.value = f.pass.value = '' ;
        return true ;
    }
    return false ;
}
</script>
<div  id="page-login-index" class="format-site  path-login chrome dir-ltr lang-fr yui-skin-sam yui3-skin-sam cours-univ-reims-fr pagelayout-login course-1 context-1 notloggedin page-login-v2 layout-full page-dark">
    <div class="d-flex flex-row wrap">
        
        <div class="p-2 row-xs-12 col-lg-3 center">
            <div class="center">
                <div>
                    <img src="images/logo_urca.png">
                </div>
                <form class="w-p100 form-align center-block" name='auth' action='$action' method='POST' onSubmit="return crypter(this, '{$_SESSION[self::session_key]['challenge']}')" autocomplete='off' id="login">
                    <input type="hidden" name="anchor" value="">
                    <script>document.getElementById('anchor').value = location.hash;</script>
                    
                    <div class="form-group input-lg input-form ">
                        <label for="username" class="sr-only">
                            Nom d'utilisateur
                        </label>
                        <input type="text" class="form-control" id="username" name="login" placeholder="Nom d'utilisateur">
                    </div>
                    
                    <div class="form-group input-lg input-form">
                        <label for="password" class="sr-only">Mot de passe</label>
                        <input type="password" name="pass" id="password" value="" class="form-control"placeholder="Mot de passe">
                    </div>
                    
                    <div class="form-group">
                        <input type="hidden" name="code">
                    </div>

                    <div class="fh5co-cards">
                        <a class="float-center" href="/login/forgot_password.php">Mot de passe oublié ?</a>
                    </div>
                    
                    <button type="submit" class="btn btn-primary input-form" id="loginbtn">Connexion</button>

                </form> 
            </div>
        </div>


        <div class="col-md-8 col-lg-10 float-left">
            <div id="fh5co-main float-left">
            <aside id="fh5co-hero" class="js-fullheight">
                <div class="flexslider js-fullheight">
                    <ul class="slides">
                    <li style="background-image: url(images/img_bg_1.jpg);">
                        <div class="overlay"></div>
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-8 col-md-offset-2 text-center js-fullheight slider-text">
                                    <div class="slider-text-inner">
                                        <h1>Nouveautée <strong>Webgestion Adminitrator 2020</strong> </h1>
                                        <h2>Gestion des notes, projets et stage sur le nouveau site. <a href="" target="_blank">Tutoriel.</a></h2>
                                            <p><a class="btn btn-primary btn-demo popup-vimeo" href=""> Live Preview</a> <a class="btn btn-primary btn-learn">Learn More</a></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li style="background-image: url(images/img_bg_2.jpg);">
                        <div class="overlay"></div>
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-8 col-md-offset-2 text-center js-fullheight slider-text">
                                    <div class="slider-text-inner">
                                        <h1>La Game Jam de M. Blanchard est de RETOUR !!!</h1>
                                            <h2>Voir les éditions précedente. <a href="" target="_blank">Site de M.Blanchard.</a></h2>
                                            <p><a class="btn btn-primary btn-demo popup-vimeo" href="https://iut-info.univ-reims.fr/public/jeux/#gamejam">  2018 </a> <a class="btn btn-primary btn-learn"> 2019 </a></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li style="background-image: url(images/img_bg_3.jpg);">
                        <div class="overlay"></div>
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-8 col-md-offset-2 text-center js-fullheight slider-text">
                                    <div class="slider-text-inner">
                                        <h1>Download our Free HTML5 Bootstrap Template</h1>
                                            <h2>Free html5 templates Made by <a href="" target="_blank">freehtml5.co</a></h2>
                                            <p><a class="btn btn-primary btn-demo popup-vimeo" href="">Live Preview</a> <a class="btn btn-primary btn-learn">Learn More</i></a></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    </ul>
                </div>
            </aside>
        </div>

    </div>
</div>
HTML;
    }


    /**
     * Fonction de validation du couple Login/mot de passe.
     * @param array $data 
     *
     * @return User utilisateur authentifié
     */
    abstract public static function createFromAuthSHA512(array $data)  ;
    /*{
        if (!isset($data['code'])) {
            throw new AuthenticationException("pas de login/pass fournis") ;
        }

        Session::start() ;
        // Préparation : 
        $stmt = MyPDO::getInstance();
        $stmt = $stmt->prepare(<<<SQL
    SELECT id, firstName, lastName, login, phone, mail, DATE_FORMAT(dateNaissance, '%d %m %Y')
    FROM user
    WHERE SHA2(CONCAT(sha512pass, :challenge, SHA2(login, 512)), 512) = :code
SQL
    ) ;

        $stmt->execute(array(
            ':challenge' => isset($_SESSION[self::session_key]['challenge']) ? $_SESSION[self::session_key]['challenge'] : '',
            ':code'      => $data['code'])) ;
        
        unset($_SESSION[self::session_key]['challenge']) ;

        $stmt->setFetchMode(PDO::FETCH_CLASS, __CLASS__) ;
        if (($utilisateur = $stmt->fetch()) !== false) {
            return $utilisateur ;
        }
        else {
            throw new AuthenticationException("Login/pass incorrect") ;
        }
    }*/
}

