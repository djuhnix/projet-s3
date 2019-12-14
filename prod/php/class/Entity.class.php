

<?php

/**
 * Classe abstraite permettant la gestion des attributs communs id et name des tables.
 */
abstract class Entity
{
    /**
     * Identifiant.
     *
     * @var string $_id
     */
    protected $_id = null;

    /**
     *  Constructeur non accessible.
     */
    private function __construct()
    {
    }

    /**
     * Accesseur sur id.
     *
     * @return int Identifiant
     */
    public function getId(): int
    {
        return (int) $this->_id;
    }

    /**
     * Usine pour fabriquer une instance à partir d'un identifiant.
     *
     * Les données seront issues de la base de données
     *
     * @param int $id identifiant BD de l'entité à créer
     *
     * @throws Exception si l'entité ne peut pas être trouvée dans la base de données
     *
     * @return self instance correspondant à $id
     */
    abstract public static function createFromId(int $id);

}

