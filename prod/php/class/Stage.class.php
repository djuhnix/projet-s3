<?php
require_once 'autoload.inc.php';
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
     * @var int $idEntreprise
     */
    private $idEntreprise;
    /**
     * Le responsable du stage dans l'entreprise
     *
     * @var Responsable
     */
    private $responsable = null;
    /**
     * @var int $idResponsable
     */
    private $idResponsable;

    /**
     * Stage constructor.
     * @param string $libele
     * @param DatePeriod $dateDeb
     * @param DatePeriod $dateFin
     * @param Entreprise $entreprise
     * @param Professeur|null $professeur
     * @param Responsable $responsable
     * @noinspection PhpMissingParentConstructorInspection
     */
    public function __construct(
        string $libele,
        DatePeriod $dateDeb,
        DatePeriod $dateFin,
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
        $this->professeur = $professeur;
        $this->idProfesseur = $professeur->getId();
        $this->idEntreprise = $entreprise->getId();
        $this->idResponsable = $responsable->getId();
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
                   DATE_FIN_STAGE as dateFin,
                   id_entreprise as idEntreprise
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
     * @param string $id L'identifiant du professeur
     * @return Stage[]
     * @throws Exception
     */
    public static function getFromProfesseurId(string $id) : array
    {
        $stmt = MyPDO::getInstance()->prepare(<<<SQL
            SELECT id_stage as _id,
                   id_entreprise as idEntreprise,
                   professeur_id_pers as idProfesseur,
                   responsable_id_pers as idResponsable,
                   lib_stage as libele,
                   date_deb_stage as dateDeb,
                   date_fin_stage as dateFin
            FROM stage
            WHERE professeur_id_pers = ?
SQL
        );
        // execute stage query
        $stmt->setFetchMode(PDO::FETCH_CLASS, Stage::class);
        $stmt->execute([$id]);
        return $stmt->fetchAll();

    }
    /**
     * @param string $id L'identifiant de l'entreprise
     * @return Stage[]
     * @throws Exception
     */
    public static function getFromEntrepriseId(string $id) : array
    {
        $stmt = MyPDO::getInstance()->prepare(<<<SQL
            SELECT id_stage as _id,
                   id_entreprise as idEntreprise,
                   professeur_id_pers as idProfesseur,
                   responsable_id_pers as idResponsable,
                   lib_stage as libele,
                   date_deb_stage as dateDeb,
                   date_fin_stage as dateFin
            FROM stage
            WHERE id_entreprise = ?
SQL
        );
        // execute stage query
        $stmt->setFetchMode(PDO::FETCH_CLASS, Stage::class);
        $stmt->execute([$id]);
        return $stmt->fetchAll();
    }
    /**
     * @param string $id L'identifiant du responsable de stage dans l'entreprise
     * @return Stage[]
     * @throws Exception
     */
    public static function getFromResponsableId(string $id) : array
    {
        $stmt = MyPDO::getInstance()->prepare(<<<SQL
            SELECT id_stage as _id,
                   id_entreprise as idEntreprise,
                   professeur_id_pers as idProfesseur,
                   responsable_id_pers as idResponsable,
                   lib_stage as libele,
                   date_deb_stage as dateDeb,
                   date_fin_stage as dateFin
            FROM stage
            WHERE responsable_id_pers = ?
SQL
        );
        // execute stage query
        $stmt->setFetchMode(PDO::FETCH_CLASS, Stage::class);
        $stmt->execute([$id]);
        return $stmt->fetchAll();
    }

    /**
     * @return Entreprise
     */
    public function getEntreprise(): Entreprise
    {
        if ($this->entreprise === null)
        {
            $this->entreprise = Entreprise::createFromId($this->idEntreprise);
        }
        return $this->entreprise;
    }

    /**
     * @return Responsable
     * @throws Exception
     */
    public function getResponsable(): Responsable
    {
        if ($this->responsable === null)
        {
            $this->responsable = Responsable::createFromId($this->idEntreprise);
        }
        return $this->responsable;
    }

    /**
     * {@inheritdoc}
     *
     * @throws Exception
     */
    public function getPropositions(): array
    {
        if (null === $this->propositions) {
            $this->propositions = Proposition::getFromStageId($this->_id);
        }
        return $this->propositions;
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
        $stmt->setFetchMode(PDO::FETCH_CLASS, Stage::class);
        $stmt->execute();

        return $stmt->fetchAll();
    }

    /**
     * Fait persister une instance dans la base de données avec ses attribut.
     * Ajoute une ligne dans la table de stage avec la proposition associer.
     * @throws Exception
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
SQL
        );
        return $stmt->execute([
            ':ID_ENTREPRISE' => $this->idEntreprise,
            ':RESPONSABLE_ID_PERS' => $this->idResponsable,
            ':LIB_STAGE' => $this->libele,
            ':DATE_DEB_STAGE' => $this->dateDeb,
            ':DATE_FIN_STAGE' => $this->dateFin,
            ':PROFESSEUR_ID_PERS' => $this->idProfesseur,
        ]);
    }
}
