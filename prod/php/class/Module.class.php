<?php
require_once 'autoload.inc.php';

class Module extends Entity
{
    /**
     * Nom du module
     *
     * @var string
     */
    private $libele;

    /**
     * @var string
     */
    private $description;

    /**
     * @var DatePeriod
     */
    private $dateDebut;

    /**
     * @var DatePeriod
     */
    private $dateFin;

    /**
     * @var float
     */
    private $coefficient;
    /**
     * @var Etudiant[] | null
     */
    private $etudiants;

    /**
     * @var Professeur[] | null
     */
    private $professeurs;

    /**
     * Module constructor.
     * @param string $id_module
     * @param string $libele
     * @param string $description
     * @param DatePeriod $dateDebut
     * @param DatePeriod $dateFin
     * @param float $coefficient
     * @noinspection PhpMissingParentConstructorInspection
     */
    public function __construct(
        string $id_module,
        string $libele,
        string $description,
        DatePeriod $dateDebut,
        DatePeriod $dateFin,
        float $coefficient
    )
    {
        $this->libele = $libele;
        $this->description = $description;
        $this->dateDebut = $dateDebut;
        $this->dateFin = $dateFin;
        $this->coefficient = $coefficient;
        $this->_id = $id_module;
    }

    /**
     * @param int $id
     * @return Module[]
     * @throws Exception
     */
    public static function getFromEtudiantId(int $id) : array
    {
        $stmtModule = MyPDO::getInstance()->prepare(<<<SQL
            SELECT m.ID_MODULE as _id,
                   LIB_MODULE as libele,
                   DATE_DEB_MODULE as dateDeb,
                   DATE_FIN_MODULE as dateFin,
                   COEFFICIENT as coefficient
            FROM MODULE m
                JOIN inscrire i on m.id_module = i.id_module 
            WHERE etudiant_id_pers = ?
SQL
        );
        // execute module query
        $stmtModule->setFetchMode(PDO::FETCH_CLASS, Module::class);
        $stmtModule->execute([$id]);

        return $stmtModule->fetchAll();
    }

    /**
     * @return DatePeriod
     */
    public function getDateDebut()
    {
        return $this->dateDebut;
    }

    /**
     * @param DatePeriod $dateDebut
     */
    public function setDateDebut($dateDebut)
    {
        $this->dateDebut = $dateDebut;
    }

    /**
     * @return string
     */
    public function getLibele()
    {
        return $this->libele;
    }

    /**
     * @param string $libele
     */
    public function setLibele($libele)
    {
        $this->libele = $libele;
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
     * @return DatePeriod
     */
    public function getDateFin()
    {
        return $this->dateFin;
    }

    /**
     * @param DatePeriod $dateFin
     */
    public function setDateFin($dateFin)
    {
        $this->dateFin = $dateFin;
    }

    /**
     * @return float
     */
    public function getCoefficient()
    {
        return $this->coefficient;
    }

    /**
     * @param float $coeficient
     */
    public function setCoefficient($coeficient)
    {
        $this->coeficient = $coeficient;
    }
    public static function createFromId(int $id) : self
    {
        //Module
        $stmtModule = MyPDO::getInstance()->prepare(<<<SQL
            SELECT ID_MODULE as _id,
                   LIB_MODULE as libele,
                   DATE_DEB_MODULE as dateDeb,
                   DATE_FIN_MODULE as dateFin,
                   COEFFICIENT as coefficient
            FROM MODULE 
            WHERE ID_MODULE = ?
SQL
        );

        // execute module query
        $stmtModule->setFetchMode(PDO::FETCH_CLASS, Module::class);
        $stmtModule->execute([$id]);

        if (false === ($Module = $stmtModule->fetch())) {
            throw new Exception("Aucun module d'identifiant : ".$id);
        }

        return $Module;
    }

    /**
     * @return Etudiant[] | null
     * @throws Exception
     */
    public function getEtudiants() : ?array
    {
        if($this->etudiants === null)
        {
            $this->etudiants = Etudiant::getFromModuleId($this->_id);
        }
        return $this->etudiants;

    }
    /**
     * @return Professeur[] | null
     */
    public function getProfesseurs() : ?array
    {
        if ($this->professeurs === null) {
            $this->professeurs = Professeur::getFromModuleId($this->_id);
        }
        return $this->professeurs;
    }

        /**
     * {@inheritdoc}
     * @throws Exception
     */
    public static function getAll(): array
    {
        $stmt = MyPDO::getInstance()->prepare(<<<SQL
            SELECT *
            FROM MODULE
SQL
        );
        $stmt->setFetchMode(PDO::FETCH_CLASS, Module::class);
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
            INSERT INTO module (`id_module`, `lib_module`, `date_deb_module`, `date_fin_module`, `coefficient`) 
            VALUES (
                    :id_module,
                    :LIB_MODULE,
                    :DATE_DEB_MODULE,
                    :DATE_FIN_MODULE,
                    :COEFFICIENT
                );
SQL
        );
        return $stmt->execute([
            ':id_module' => $this->_id,
            ':LIB_MODULE' => $this->libele,
            ':DATE_DEB_MODULE' => $this->dateDebut,
            ':DATE_FIN_MODULE' => $this->dateFin,
            ':COEFFICIENT' => $this->coefficient,
        ]);
    }
}