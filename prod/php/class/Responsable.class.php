<?php


class Responsable extends Entity
{
    //TODO
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
    public static function createFromId(int $id)
    {
        // TODO: Implement createFromId() method.
    }

    /**
     * Accesseur à toutes les lignes de la table correspondantes.
     *
     * @return self[]
     */
    public static function getAll(): array
    {
        // TODO: Implement getAll() method.
    }

    /**
     * Fait persister une instance dans la base de données avec ses attribut.
     * @return bool Selon la réussite de l'action
     */
    public function persist(): bool
    {
        // TODO: Implement persist() method.
    }
}