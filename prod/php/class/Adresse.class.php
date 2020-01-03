<?php
require_once 'autoload.inc.php';

class Adresse extends Entity
{
    /**
     * @var string $codePostal
     */
    private $codePostal;
    /**
     * @var string $rue
     */
    private $rue;
    /**
     * @var string
     */
    private $ville;
    /**
     * @var int $idEntreprise
     */
    private $idEntreprise;
    /**
     * @var Entreprise|null
     */
    private $entreprise;

    /**
     * Adresse constructor.
     * @param string $codePostal
     * @param string $rue
     * @param string $ville
     * @param Entreprise|null $entreprise
     * @noinspection PhpMissingParentConstructorInspection
     */
    public function __construct(string $codePostal, string $rue, string $ville, ?Entreprise $entreprise)
    {
        $this->codePostal = $codePostal;
        $this->rue = $rue;
        $this->ville = $ville;
        $this->entreprise = $entreprise;
        $this->idEntreprise = (int) $entreprise->getId();
    }

    /**
     * @inheritDoc
     */
    public static function createFromId(int $id)
    {
        $stmt = MyPDO::getInstance()->prepare(<<<SQL
            SELECT id_adresse as _id,
                   rue,
                   code_postal as codePostal,
                   ville,
                   id_entreprise as idEntreprise
            FROM adresse
            WHERE id_adresse = ?
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
     * @param int $id
     * @return self[]
     * @throws Exception
     */
    public function getFromEntrepriseId(int $id)
    {
        $stmt = MyPDO::getInstance()->prepare(
            <<<SQL
            SELECT id_adresse as _id,
                   id_entreprise as idEntreprise,
                   rue,
                   ville,
                   code_postal as codePostal
            FROM adresse
            WHERE id_entreprise = ?
SQL
        );
        $stmt->setFetchMode(PDO::FETCH_CLASS, Adresse::class);
        $stmt->execute([$id]);
        $object = $stmt->fetchAll();
        if (false === $object) {
            throw new Exception('Aucunne Adresse avec l\'identifiant d\'entreprise : '.$id);
        }

        return $object;
    }

    /**
     * @return string
     */
    public function getCodePostal(): string
    {
        return $this->codePostal;
    }

    /**
     * @param string $codePostal
     */
    public function setCodePostal(string $codePostal): void
    {
        $this->codePostal = $codePostal;
    }

    /**
     * @return string
     */
    public function getRue(): string
    {
        return $this->rue;
    }

    /**
     * @param string $rue
     */
    public function setRue(string $rue): void
    {
        $this->rue = $rue;
    }

    /**
     * @return string
     */
    public function getVille(): string
    {
        return $this->ville;
    }

    /**
     * @param string $ville
     */
    public function setVille(string $ville): void
    {
        $this->ville = $ville;
    }

    /**
     * @return Entreprise|null
     */
    public function getEntreprise(): ?Entreprise
    {
        if($this->entreprise === null){
            $this->entreprise = Entreprise::createFromId($this->idEntreprise);
        }
        return $this->entreprise;
    }

    /**
     * @param Entreprise $entreprise
     */
    public function setEntreprise(Entreprise $entreprise): void
    {
        $this->entreprise = $entreprise;
    }

    /**
     * @inheritDoc
     */
    public static function getAll(): array
    {
        $stmt = MyPDO::getInstance()->prepare(
            <<<SQL
            SELECT *
            FROM adresse
SQL
        );
        $stmt->setFetchMode(PDO::FETCH_CLASS, Adresse::class);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    /**
     * @inheritDoc
     */
    public function persist(): bool
    {
        $stmt = MyPDO::getInstance()->prepare(
            <<<SQL
            INSERT INTO adresse (id_entreprise, rue, code_postal, ville) 
            VALUES (
                    :id_entreprise,
                    :rue,
                    :code_postal,
                    :ville
            )
SQL
        );
        return $stmt->execute([
            ':id_entreprise' => $this->idEntreprise,
            ':rue' => $this->rue,
            ':code_postal' => $this->codePostal,
            ':ville' => $this->ville,
        ]);

    }
}