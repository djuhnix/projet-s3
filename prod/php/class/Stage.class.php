<?php

/* En cours */

class Stage extends Travaux
{
    /**
     * Private stage constructor.
     * Pour éviter l'instanciation d'objet stage.
     *
     * @noinspection PhpMissingParentConstructorInspection
     */
    private function __construct()
    {
    }

    /**
     * Usine pour fabriquer une instance à partir d'un identifiant.
     *
     * Les données seront issues de la base de données
     *
     * @param int $id identifiant BD de l'entité à créer
     *
     * @throws Exception si l'entité ne peut pas être trouvée dans la base de données
     *
     * @return self instance correspondant à $id
     */
    public static function createFromId(int $id): self
    {
        //stage
        $stmtStage = MyPDO::getInstance()->prepare(<<<SQL
            SELECT ID_STAGE as _id,
                   LIB_STAGE as titre,
                   DATE_DEB_STAGE as dateDeb,
                   DATE_FIN_STAGE as dateFin
            FROM STAGE
            WHERE ID_STAGE = ?
SQL
);

        // execute stage query
        $stmtStage->execute([$id]);
        $stmtStage->setFetchMode(PDO::FETCH_CLASS, Stage::class);

        if (false === ($stage = $stmtStage->fetch())) {
            throw new Exception("Aucun stage d'identifiant : ".$id);
        }

        return $stage;
    }

    /**
     * {@inheritdoc}
     *
     * @throws Exception
     */
    public function getProposition(): array
    {
        if (null == $this->proposition) {
            $stmtProp = MyPDO::getInstance()->prepare(<<<SQL
            SELECT ID_PROPOSITION as _id,
                   DESCRIPTION as description
            FROM PROPOSITION
            WHERE ID_STAGE = ?
SQL
            );

            $stmtProp->execute([$this->_id]);
            $stmtProp->setFetchMode(PDO::FETCH_CLASS, Proposition::class);
            $this->proposition = $stmtProp->fetchAll();
        }

        return $this->proposition;
    }

    //A vérifier

    /**
     * @throws Exception
     */
    public function ajouter(string $dateDeb, string $dateFin, string $description): bool
    {
        $stmt = MyPDO::getInstance()->prepare(<<<SQL
            INSERT INTO STAGE(`ID_ENTREPRISE`, `RESPONSABLE_ID_PERS`, `LIB_STAGE`, `DATE_DEB_STAGE`, `DATE_FIN_STAGE`, `PROFESSEUR_ID_PERS`) 
            VALUES (
                :ID_ENTREPRISE,
                :RESPONSABLE_ID_PERS,
                :LIB_STAGE,
                :DATE_DEB_STAGE,
                :DATE_FIN_STAGE,
                :PROFESSEUR_ID_PERS,
                );
            
            INSERT INTO PROPOSITION(`ID_STAGE`, `DESCRIPTION`) 
            VALUES ([value-1],[value-2],[value-3],[value-4]);
SQL
            );

        return $stmt->execute([
                ':ID_ENTREPRISE', //TODO Si le stage est proposé par une entreprise
                ':RESPONSABLE_ID_PERS', //TODO Le tuteur du stage dans l'entreprise
                ':LIB_STAGE', //TODO Libélé du stage
                ':DATE_DEB_STAGE', //TODO
                ':DATE_FIN_STAGE', //TODO
                ':PROFESSEUR_ID_PERS', //TODO si le stage est proposé par un professeur
            ]);
    }

    /**
     * {@inheritdoc}
     * @throws Exception
     */
    public function getAll(): array
    {
        $stmt = MyPDO::getInstance()->prepare(<<<SQL
            SELECT *
            FROM STAGE
SQL
);
        $stmt->execute();
        $stmt->setFetchMode(PDO::FETCH_CLASS, Stage::class);

        return $stmt->fetchAll();
    }
}
