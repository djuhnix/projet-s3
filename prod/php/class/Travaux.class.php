<?php


abstract class Travaux
{
    private $_id; //int
    private $titre ; //string
    private $description; //string
    private $dateDeb; //date
    private $dateFin; //date

    //fonctions
    /**
     * @return string
     */
    public function getDescription(): string
{
    return $this->description;
}

    /**
     * @return string
     */
    public function getTitre(): string
    {
        return $this->titre;
    }

    /**
     * @return int
     */
    public function getId(): int
    {
        return $this->_id;
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
     * @param mixed $description
     */
    public function setDescription($description): void
    {
        $this->description = $description;
    }

    abstract public function ajouter();

    abstract public function supprimer();
}