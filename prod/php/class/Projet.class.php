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

    public function supprimer(int $id)
    {
        $stmt = MyPDO::getInstance()->prepare(<<<SQL
            DELETE FROM PROJET
            WHERE ID_PROJET = ?
SQL
        $stmt->execute([$id]);
    }

    /**
     * {@inheritdoc}
     */
    public function getProposition(): array
    {
        if (null == $this->proposition) {
            $stmtProp = MyPDO::getInstance()->prepare(<<<SQL
            SELECT ID_PROPOSITION as _id,
                   DESCRIPTION as description
            FROM PROPOSITION
            WHERE ID_PROJET = ?
SQL
            );

            $stmtProp->execute([$this->_id]);
            $stmtProp->setFetchMode(PDO::FETCH_CLASS, Proposition::class);
            $this->proposition = $stmtProp->fetchAll();
        }

        return $this->proposition;
    }

    /**
     * {@inheritdoc}
     */
    public function ajouter(string $dateDeb, string $dateFin, string $description): bool
    {
        $stmt = MyPDO::getInstance()->prepare(<<<SQL
            INSERT INTO PROJET(``PROFESSEUR_ID_PERS``, `LIB_PROJET`, `DATE_DEB_PROJET`, `DATE_FIN_PROJET`) 
            VALUES (
                :`PROFESSEUR_ID_PERS`,
                :LIB_PROJET,
                :DATE_DEB_PROJET,
                :DATE_FIN_PROJET,
                );
            
            INSERT INTO PROPOSITION(`ID_PROJET`, `DESCRIPTION`) 
            VALUES ([value-1],[value-2],[value-3],[value-4]);
SQL
        );

        return $stmt->execute([
            '`PROFESSEUR_ID_PERS`', //TODO
            ':LIB_PROJET', //TODO Libélé du projet
            ':DATE_DEB_PROJET', //TODO
            ':DATE_FIN_PROJET', //TODO
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function getAll(): array
    {
        $stmt = MyPDO::getInstance()->prepare(<<<SQL
            SELECT *
            FROM PROJET
SQL
        );
        $stmt->execute();
        $stmt->setFetchMode(PDO::FETCH_CLASS, Projet::class);

        return $stmt->fetchAll();
    }
}
