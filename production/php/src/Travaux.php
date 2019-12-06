<?php


abstract class Travaux
{
    private $idTravaux; //int
    private $title ; //string
    private $description; //string
    private $startDate; //date
    private $endDate; //date

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
    public function getTitle(): string
    {
        return $this->title;
    }

    /**
     * @return int
     */
    public function getIdTravaux(): int
    {
        return $this->idTravaux;
    }

    /**
     * @return string
     */
    public function getEndDate()
    {
        return $this->endDate;
    }

    /**
     * @return string
     */
    public function getStartDate()
    {
        return $this->startDate;
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