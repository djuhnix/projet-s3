<?php
require_once('autoload.inc.php');

if (!User::isConnected()) {
    header("Location: http://{$_SERVER['SERVER_NAME']}/".dirname($_SERVER['PHP_SELF'])."/form.php") ;
    die() ;
}

$p = new WebPage("Page Utilisateur Connecté") ;

$p->appendContent(<<<HTML
        <h1>Page Utilisateur Connecté. </h1>
        Page 1
HTML
) ;

echo $p->toHTML() ;

