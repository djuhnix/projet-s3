<?php
require_once 'autoload.inc.php';

class Entreprise extends Entity
{
    /**
     * @var int $idAdresse
     */
    private $idAdresse;
    /**
     * @var Adresse $adresse
     */
    private $adresse = null;
    /**
     * @var string $libele
     */
    private $libele;

    /**
     * Entreprise constructor.
     * @param Adresse $adresse
     * @param string $libele
     * @noinspection PhpMissingParentConstructorInspection
     */
    public function __construct(Adresse $adresse, string $libele)
    {
        $this->adresse = $adresse;
        $this->idAdresse = $adresse->getId();
        $this->libele = $libele;
    }


    /**
     * @inheritDoc
     */
    public static function createFromId(int $id)
    {
        $stmt = MyPDO::getInstance()->prepare(
            <<<SQL
            SELECT id_entreprise as _id,
                   id_adresse as idAdresse,
                   lib_entreprise as libele
            FROM entreprise
            WHERE id_entreprise = ?
SQL
        );
        $stmt->setFetchMode(PDO::FETCH_CLASS, Entreprise::class);
        $stmt->execute([$id]);
        if ( ($objet = $stmt->fetch()) == false)
        {
            throw new Exception("Aucune Entreprise d'identifiant " . $id);
        }
        return $objet;
    }

    /**
     * @inheritDoc
     */
    protected static function getAll(): array
    {
        $stmt = MyPDO::getInstance()->prepare(
            <<<SQL
            SELECT *
            FROM entreprise
SQL
        );
        $stmt->setFetchMode(PDO::FETCH_CLASS, Entreprise::class);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    /**
     * @param int $id
     * @return array
     * @throws Exception
     */
    public static function getFromAdresseId(int $id)
    {
        $stmt = MyPDO::getInstance()->prepare(
            <<<SQL
            SELECT id_entreprise as _id,
                   id_adresse as idAdresse,
                   lib_entreprise as libele
            FROM entreprise
            WHERE id_adresse = ?
SQL
        );
        $stmt->setFetchMode(PDO::FETCH_CLASS, Entreprise::class);
        $stmt->execute([$id]);

        return  $stmt->fetchAll();
    }

    /**
     * @return Adresse
     * @throws Exception
     */
    public function getAdresse() : Adresse
    {
        if($this->adresse === null)
        {
            $this->adresse = Adresse::createFromId($this->idAdresse);
        }
        return $this->adresse;
    }

    /**
     * @inheritDoc
     */
    public function persist(): bool
    {
        $stmt = MyPDO::getInstance()->prepare(
            <<<SQL
            INSERT INTO entreprise (id_adresse, lib_entreprise) 
            VALUES (
                    :id_adresse,
                    :lib_entreprise
            )
SQL
        );
        return $stmt->execute([
            ':id_adresse' => $this->idAdresse,
            ':lib_entreprise' => $this->libele,
        ]);
    }
}