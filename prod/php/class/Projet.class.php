<?php

/* En cours */

class Projet extends Travaux
{
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
        $stmt = MyPDO::getInstance()->prepare(<<<SQL
            SELECT ID_PROJET as _id,
                   LIB_PROJET as titre,
                   DATE_DEB_PROJET as dateDeb,
                   DATE_FIN_PROJET as dateFin
            FROM PROJET
            WHERE ID_PROJET = ?
SQL
);
        $stmt->execute([$id]);
        $stmt->setFetchMode(PDO::FETCH_CLASS, 'Projet');
        $object = $stmt->fetch();
        if (false === $object) {
            throw new Exception('Projet inconnu : '.$id);
        }

        return $object;
    }

    public function supprimer()
    {
        // TODO: Implement supprimer() method.
    }

    /**
     * {@inheritdoc}
     */
    public function getProposition(): array
    {
        // TODO: Implement getProposition() method.
    }

    /**
     * {@inheritdoc}
     */
    public function ajouter(string $dateDeb, string $dateFin, string $description): bool
    {
        // TODO: Implement ajouter() method.
    }

    /**
     * {@inheritdoc}
     */
    public function getAll(): array
    {
        // TODO: Implement getAll() method.
    }
}
