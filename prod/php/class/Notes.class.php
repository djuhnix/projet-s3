<?php

require_once('autoload.include.php') ;
//require_once('MyPDO.template.php') ;
//require_once('MyPDO.class.php') ;

class Notes extends Entity
{
    private $id_module ;
    private $id;
    private $noteCc;
    private $noteTP;
    //note table inscrire(idmodule , nperso note Cc note cc)

    public function __construct( string $id_module,string $etudiant_id_pers,float $noteCc, float $noteTP )
    {
      $this->id_module=$id_module
      $this->etudiant_id_pers=$etudiant_id_pers;
      $this->noteCc=$noteCc;
      $this->noteTP=$noteTP;
    }
    public function createfromid(int $id)
    {
        $stmtModule = MyPDO::getInstance()->prepare(<<<SQL
            SELECT  ID_MODULE as _id,
                    etudiant_id_pers as etudiant_id_pers,
                    noteCc as noteCc,
                    noteTP as noteTP,
            FROM Note n, inscrire i, Module m
            WHERE   n.id_note=i.id_note
                    and i.id_module=m.id_module
                    and ID_MODULE = ?
                    and ID_Pers = ?
SQL
        );
        // execute module query
        $stmtModule->setFetchMode(PDO::FETCH_CLASS, Note::class);
        $stmtModule->execute((''$id);

        return $stmtModule->fetchAll();
    }


    public function getFromModuleId(int $id)
    {
        $stmt = MyPDO::getInstance()->prepare(<<<SQL
            SELECT *
            FROM Module m JOIN inscrire i on m.id_module = i.id_module
            WHERE id_module = ?
SQL
        );
        $stmt->setFetchMode(PDO::FETCH_CLASS, Module::class);
        $stmt->execute((":$id"=>$id));
        $object = $stmt->fetchAll();
        if (false === $object) {
            throw new Exception('Aucunne Proposition de stage avec l\'identifiant de stage : '.$id);
        }

        return $object;
    }

    public function getFromEtudiantId(int $id)
    {
        $stmt = MyPDO::getInstance()->prepare(<<<SQL
            SELECT *
            FROM Etudiant e JOIN inscrire i on e.id_pers = i.id_pers
            WHERE id_Etudiant_pers = ?
SQL
        );
        $stmt->setFetchMode(PDO::FETCH_CLASS, Note::class);
        $stmt->execute((":$id"=>$id));
        $object = $stmt->fetchAll();
        if (false === $object) {
            throw new Exception('Aucunne Proposition de stage avec l\'identifiant de stage : '.$id);
        }

        return $object;
    }

    public function getTitleModule():string
    {
      return this->$libele;
    }

    public function getNoteCc():float
    {
        return this->noteCc;
    }
    public function getNoteTP():float
    {
        return this->noteTP;
    }
    public function setNoteCc($nouvelNote):void
    {
         this->noteCc=$nouvellNote;
    }
    public function setNoteTP($nouvelNote):void
    {
         this->noteTP=$nouvelNote;
    }
    public function getMoyenne():float
    {
        $val=this->noteCc;
        $val2=this>noteTP;
        $moyenne=($val+$val2)/2;
        return $moyenne;
    }

    public static function ajouterNote(): bool
    {
    $stmt = MyPDO::getInstance()->prepare(<<<SQL
        INSERT INTO Note (`id_module`, `etudiant_id_pers`, `noteCc`, `noteTP`)
        VALUES (
                :id_module,
                :etudiant_id_pers,
                :noteCc,
                :noteTP
            );
SQL
    );
    return $stmt->execute([
        ':id_module' => $this->_id,
        ':etudiant_id_pers' => $this->etudiant_id_pers,
        ':noteCc' => $this->noteCc,
        ':noteTP' => $this->noteTP,
        ]);
    }
    public function getAll($id_module, id_pers, $note):string
    {
            $stmt = MyPDO::getInstance()->prepare(<<<SQL
            SELECT *
            FROM Note
SQL
    );
    $stmt->setFetchMode(PDO::FETCH_CLASS, Note::class);
    $stmt->execute();

    return $stmt->fetchAll();
}


    }

}
