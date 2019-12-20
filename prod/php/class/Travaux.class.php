<?php

abstract class Travaux extends Entity
{
    protected $titre; //string
    /**
     * @var Proposition[] | NULL
     */
    protected $proposition;
    protected $dateDeb; //date
    protected $dateFin; //date

    //fonctions

    public function getTitre(): string
    {
        return $this->titre;
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
    abstract public function getAll(): array;

    /**
     * Ajoute une ligne dans la table de stage | projet avec la proposition associer.
     *
     * @param string $dateDeb
     * @param string $dateFin
     * @param string $description
     * @return bool selon la réussite de l'action
     */
    abstract public function ajouter(string $dateDeb, string $dateFin, string $description): bool;

    /*
     * doute sur la nécessité de cette méthode
     *
    abstract public function supprimer(string $id) : bool;*/
}
