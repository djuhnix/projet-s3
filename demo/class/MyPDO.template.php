<?php


/* Exemple de configuration et d'utilisation*/
require_once 'MyPDO.class.php';

MyPDO::setConfiguration('mysql:host=localhost;dbname=projets3;charset=utf8', 'webacces', 'master');
MyPDO::setConfiguration('mysql:host=mysql;dbname=infs3_prj09;charset=utf8', 'infs3_prj09', 'zTi14!BHgQd9');
/*
$stmt = MyPDO::getInstance()->prepare(<<<SQL
    SELECT id, name
    FROM artist
    ORDER BY name
SQL
);

$stmt->execute();

while (($ligne = $stmt->fetch()) !== false) {
    echo "<p>{$ligne['name']}\n";
}

*/