<?php
/**
 * Created by PhpStorm.
 * User: sove0002
 * Date: 28/05/19
 * Time: 10:09
 */
require_once 'autoload.inc.php';

$u = User::createFromSession() ;

$tabNote=Note::getAll();
$p= new WebPage();
$p->setTitle('Note') ;
$p->appendContent(<<<HTML
<div class="container">
    <nav class="navbar md-content-center justify-content-center">
    <h1 class="w3-third">
        <h1> Etudiant  {$u->firstName()} {$u->lastName()}</h1>
    </h1>
    <div>
    <table>

      <thead>
        <tr class="text-center">
          <th colspan="5">
              Bulletin de note
          </th>
        </tr>
        <tr>
            <th>UE / Module </th>
            <th>TPS</th>
            <th>TP</th>
            <th>Moyenne</th>
        </tr>
      </thead>
      <tbody>
HTML
);


foreach ($tabNote as $a) {
    $p->appendContent(<<<HTML
      <tr>
        <td>
          {$a->getTitleModule()}
        </td>
        <td>
          {$a->getNoteCc()}
        </td>
        <td>
          {$a->getNoteTP()}
        </td>
        <td>
          {$a->getMoyenne()}
        </td>
    </tr>
HTML
    );
}
    $p->appendContent(<<<HTML

HTML
    ) ;
echo $p->toHTML();
