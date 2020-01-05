<?php
require_once('autoload.include.php') ;

try {
    $u = User::createFromSession() ;

    $p = new WebPage("Page Utilisateur Connecté") ;

    $p->appendContent(<<<HTML
        <h1>Fiche personnelle de {$u->firstName()}</h1>
        Page 2.
        <p>{$u->profile()}</p>

        Liens du site:
    <ul>
        <li><a href='form.php'>Page de connexion</a>
        <li><a href='page1.php'>page 1</a>
        <li><a href='page2.php'>page 2</a>
    </ul>
HTML
    ) ;
}
catch (notInSessionException $e) {
	// redirection
    header("Location: http://{$_SERVER['SERVER_NAME']}/".dirname($_SERVER['PHP_SELF'])."/form.php") ;
    die() ;
}

echo $p->toHTML() ;

