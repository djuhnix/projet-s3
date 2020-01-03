<?php
require_once 'autoload.inc.php';

abstract class Travaux extends Entity
{
    /**
     * @var string
     */
    protected $libele; //string
    /**
     * @var Proposition[] | null
     */
    protected $propositions = null;
    /**
     * @var DatePeriod
     */
    protected $dateDeb; //date
    /**
     * @var DatePeriod
     */
    protected $dateFin; //date

    /**
     * @var Professeur | null
     */
    protected $professeur = null;
    /**
     * @var int $idProfesseur
     */
    protected $idProfesseur;
    /**
     *  Constructeur non accessible.
     * @noinspection PhpMissingParentConstructorInspection
     *
     */
    private function __construct()
    {
    }

    /**
     * @return int
     */
    public function getIdProfesseur(): int
    {
        return $this->idProfesseur;
    }

    /**
     * @return Professeur|null
     */
    public function getProfesseur(): ?Professeur
    {
        if ($this->professeur === null)
        {
            $this->professeur = Professeur::createFromId($this->idProfesseur);
        }
        return $this->professeur;
    }

    /**
     * @param Professeur|null $professeur
     */
    public function setProfesseur(?Professeur $professeur): void
    {
        $this->professeur = $professeur;
    }

    /**
     * @return string
     */
    public function getDateFin()
    {
        return $this->dateFin;
    }


    /**
     * @param DatePeriod $dateFin
     */
    public function setDateFin(DatePeriod $dateFin): void
    {
        $this->dateFin = $dateFin;
    }

    /**
     * @return string
     */
    public function getDateDeb()
    {
        return $this->dateDeb;
    }

    /**
     * @param DatePeriod $dateDeb
     */
    public function setDateDeb(DatePeriod $dateDeb): void
    {
        $this->dateDeb = $dateDeb;
    }
    public function getLibele(): string
    {
        return $this->libele;
    }

    /**
     * @param string $libele
     */
    public function setLibele(string $libele): void
    {
        $this->libele = $libele;
    }

    /**
     * @return Proposition[]
     */
    abstract public function getPropositions(): array;

    /**
     * @return self[]
     */
    abstract static public function getAll(): array;



    /*
     * doute sur la nécessité de cette méthode
     *
    abstract public function supprimer(string $id) : bool;*/
}
