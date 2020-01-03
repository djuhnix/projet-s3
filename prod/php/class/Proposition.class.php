<?php
require_once 'autoload.inc.php';
/*En cours*/

class Proposition extends Entity
{
    /**
     * Description de la proposition de projet ou de stage.
     *
     * @var string
     */
    private $description;
    /**
     * @var bool
     */
    private $acceptee;
    /**
     * @var int $idStage
     */
    private $idStage;
    /**
     * @var int $idProjet
     */
    private $idProjet;
    /**
     * @var Stage | null
     */
    private $stage = null;
    /**
     * @var Projet | null
     */
    private $projet = null;

    /**
     * Proposition constructor.
     * @param string $description
     * @param Stage|null $stage
     * @param Projet|null $projet
     * @param bool $acceptee
     * @noinspection PhpMissingParentConstructorInspection
     */
    public function __construct(string $description, ?Stage $stage, ?Projet $projet, bool $acceptee = false)
    {
        $this->description = $description;
        $this->stage = $stage;
        $this->projet = $projet;
        $this->idProjet = $projet->getId();
        $this->idStage = $stage->getId();
        $this->acceptee = $acceptee;
    }


    public static function createFromId(int $id)
    {
        $stmt = MyPDO::getInstance()->prepare(<<<SQL
            SELECT ID_PROPOSITION as _id,
                   Description as descritpion,
                   acceptee as acceptee,
                   id_projet as idProjet,
                   id_stage as idStage
            FROM PROPOSITION
            WHERE ID_PROPOSITION = ?
SQL
        );
        $stmt->setFetchMode(PDO::FETCH_CLASS, Proposition::class);
        $stmt->execute([$id]);
        $object = $stmt->fetch();
        if (false === $object) {
            throw new Exception('Proposition inconnu : '.$id);
        }
        return $object;
    }

    /**
     * @return int
     */
    public function getIdStage(): int
    {
        return $this->idStage;
    }

    /**
     * @return int
     */
    public function getIdProjet(): int
    {
        return $this->idProjet;
    }

    /**
     * @return Stage|null
     * @throws Exception
     */
    public function getStage(): ?Stage
    {
        if($this->stage === null)
        {
            $this->stage = Stage::createFromId($this->idStage);
        }
        return $this->stage;
    }

    /**
     * @param Stage $stage
     */
    public function setStage(Stage $stage): void
    {
        $this->stage = $stage;
    }

    /**
     * @return Projet|null
     * @throws Exception
     */
    public function getProjet(): ?Projet
    {
        if($this->projet === null)
        {
            $this->projet = Projet::createFromId($this->_id);
        }
        return $this->projet;
    }

    /**
     * @param Projet $projet
     */
    public function setProjet(Projet $projet): void
    {
        $this->projet = $projet;
    }

    /**
     * Obtenir des propositions par l'identifiant du stage correspondant
     * @param int $id
     * @return Proposition[] un tableau contenant des instances de propositions tiré de la base de données
     * @throws Exception
     */
    public static function getFromStageId(int $id) : array
    {
        $stmt = MyPDO::getInstance()->prepare(<<<SQL
            SELECT ID_PROPOSITION as _id,
                   Description as descritpion,
                   acceptee as accepte
            FROM PROPOSITION
            WHERE id_stage = ?
SQL
        );
        $stmt->execute([$id]);
        $stmt->setFetchMode(PDO::FETCH_CLASS, Proposition::class);
        $object = $stmt->fetchAll();
        if (false === $object) {
            throw new Exception('Aucunne Proposition de stage avec l\'identifiant de stage : '.$id);
        }

        return $object;


    }

    /**
     * Obtenir des propositions par l'identifiant du projet correspondant
     * @param int $id
     * @return Proposition[] un tableau contenant des instances de propositions tiré de la base de données
     * @throws Exception
     */
    public static function getFromProjetId(int $id) : array
    {
        $stmt = MyPDO::getInstance()->prepare(<<<SQL
            SELECT ID_PROPOSITION as _id,
                   Description as descritpion,
                   acceptee as acceptee
            FROM PROPOSITION
            WHERE id_stage = ?
SQL
        );
        $stmt->setFetchMode(PDO::FETCH_CLASS, Proposition::class);
        $stmt->execute([$id]);
        $object = $stmt->fetchAll();
        if (false === $object) {
            throw new Exception('Aucunne Proposition de stage avec l\'identifiant de stage : '.$id);
        }

        return $object;
    }

    /**
     * @return string
     */
    public function getDescription()
    {
        return $this->description;
    }

    /**
     * @param string $description
     */
    public function setDescription($description)
    {
        $this->description = $description;
    }

    /**
     * @return mixed
     */
    public function getAcceptee()
    {
        return $this->acceptee;
    }

    /**
     * @param bool $acceptee
     */
    public function setAcceptee(bool $acceptee)
    {
        $this->acceptee = $acceptee;
    }


    /**
     * @inheritDoc
     * @throws Exception
     */
    public static function getAll(): array
    {
        $stmt = MyPDO::getInstance()->prepare(<<<SQL
            SELECT *
            FROM proposition
SQL
        );
        $stmt->execute();
        $stmt->setFetchMode(PDO::FETCH_CLASS, Proposition::class);

        return $stmt->fetchAll();
    }

    /**
     * @inheritDoc
     * @throws Exception
     */
    public function persist(): bool
    {
        $stmt = MyPDO::getInstance()->prepare(
            <<<SQL
            INSERT INTO proposition(`id_stage`, `id_projet`, `description`, `acceptee`)
            VALUES (
                    :id_stage,
                    :id_projet,
                    :description,
                    :acceptee
            )
SQL
        );
        return $stmt->execute([
            ':id_stage' => $this->stage->getId(),
            ':id_projet' => $this->projet->getId(),
            ':description' => $this->description,
            ':acceptee' => $this->acceptee,
        ]);
    }
}
