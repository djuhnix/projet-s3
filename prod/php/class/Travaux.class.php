<?php

abstract class Travaux extends Entity
{
    /**
     * @var string
     */
    protected $libele; //string
    /**
     * @var Proposition[] | NULL
     */
    protected $proposition = null;
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
    protected $prof = null;
    /**
     *  Constructeur non accessible.
     * @noinspection PhpMissingParentConstructorInspection
     *
     */
    private function __construct()
    {
    }

    public function getLibele(): string
    {
        return $this->libele;
    }

    /**
     * @return string
     */
    public function getDateFin()
    {
        return $this->dateFin;
    }

    /**
     * @return string
     */
    public function getDateDeb()
    {
        return $this->dateDeb;
    }

    /**
     * @param mixed $proposition
     */
    public function setProposition($proposition): void
    {
        $this->proposition = $proposition;
    }

    /**
     * @return Proposition[]
     */
    abstract public function getProposition(): array;

    /**
     * @return self[]
     */
    abstract static public function getAll(): array;



    /*
     * doute sur la nécessité de cette méthode
     *
    abstract public function supprimer(string $id) : bool;*/
}
