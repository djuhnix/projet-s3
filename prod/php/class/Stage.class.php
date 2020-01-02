<?php

/* En cours */

class Stage extends Travaux
{
    /**
     * L'entreprise dans la quelle le stage est réalisé
     *
     * @var Entreprise
     */
    private $entreprise = null;
    /**
     * Le responsable du stage dans l'entreprise
     *
     * @var Responsable
     */
    private $responsable = null;

    /**
     * Stage constructor.
     * @param string $libele
     * @param DatePeriod $dateDeb
     * @param DatePeriod $dateFin
     * @param Proposition $proposition
     * @param Entreprise $entreprise
     * @param Professeur|null $professeur
     * @param Responsable $responsable
     */
    public function __construct(
        string $libele,
        DatePeriod $dateDeb,
        DatePeriod $dateFin,
        Proposition $proposition = null,
        Entreprise $entreprise = null,
        Professeur $professeur = null,
        Responsable $responsable = null
    )
    {
        $this->libele = $libele;
        $this->entreprise = $entreprise;
        $this->responsable = $responsable;
        $this->dateDeb = $dateDeb;
        $this->dateFin = $dateFin;
        $this->prof = $professeur;
        $this->proposition = $proposition;
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
    public static function createFromId(int $id) : self
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



    /**
     * {@inheritdoc}
     * @throws Exception
     */
    public static function getAll(): array
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

    /**
     * Fait persister une instance dans la base de données avec ses attribut.
     * Ajoute une ligne dans la table de stage avec la proposition associer.
     */
    public function persist(): bool
    {
        $stmt = MyPDO::getInstance()->prepare(<<<SQL
            INSERT INTO STAGE(`ID_ENTREPRISE`, `RESPONSABLE_ID_PERS`, `LIB_STAGE`, `DATE_DEB_STAGE`, `DATE_FIN_STAGE`, `PROFESSEUR_ID_PERS`) 
            VALUES (
                :ID_ENTREPRISE,
                :RESPONSABLE_ID_PERS,
                :LIB_STAGE,
                :DATE_DEB_STAGE,
                :DATE_FIN_STAGE,
                :PROFESSEUR_ID_PERS
                );
            
            INSERT INTO PROPOSITION(`ID_STAGE`, `DESCRIPTION`) 
            VALUES (:ID_STAGE, :DESCRIPTION);
SQL
        );

        return $stmt->execute([
            ':ID_ENTREPRISE' => $this->entreprise->getId(),
            ':RESPONSABLE_ID_PERS' => $this->responsable->getId(),
            ':LIB_STAGE' => $this->libele,
            ':DATE_DEB_STAGE' => $this->dateDeb,
            ':DATE_FIN_STAGE' => $this->dateFin,
            ':PROFESSEUR_ID_PERS' => $this->prof->getId(),
            ':ID_STAGE' => $this->_id,
            ':DESCRIPTION' => $this->proposition->getDescription(),
        ]);
    }
}
