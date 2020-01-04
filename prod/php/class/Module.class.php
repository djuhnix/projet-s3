<?php


class Module
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
        return $this->coeficient;
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
        $stmtModule->execute([$id]);
        $stmtModule->setFetchMode(PDO::FETCH_CLASS, Module::class);

        if (false === ($Module = $stmtModule->fetch())) {
            throw new Exception("Aucun module d'identifiant : ".$id);
        }

        return $Module;
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
            INSERT INTO STAGE(`ID_ENTREPRISE`, `RESPONSABLE_ID_PERS`, `LIB_STAGE`, `DATE_DEB_STAGE`, `DATE_FIN_STAGE`, `PROFESSEUR_ID_PERS`) 
            VALUES (
                :LIB_STAGE,
                :DATE_DEB_STAGE,
                :DATE_FIN_STAGE,
                :COEFFICIENT
                );
SQL
        );
        return $stmt->execute([
            ':LIB_MODULE' => $this->libele,
            ':DATE_DEB_MODULE' => $this->dateDebut,
            ':DATE_FIN_MODULE' => $this->dateFin,
            ':COEFFICIENT' => $this->coefficient,
        ]);
    }
}