<?php


/* Exemple de configuration et d'utilisation*/
require_once 'MyPDO.class.php';

MyPDO::setConfiguration('mysql:host=localhost;dbname=masters3;charset=utf8', 'webacces', 'master');
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