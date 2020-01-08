<?php
require_once 'autoload.inc.php';

class Projet extends Travaux
{
    /**
     * @var Etudiant[] $etudiants
     */
    private $etudiants;

    /** @noinspection PhpMissingParentConstructorInspection */
    public function __construct(
        string $libele,
        DatePeriod $dateDeb,
        DatePeriod $dateFin,
        //Proposition $proposition = null,
        Professeur $professeur = null
    )
    {
        $this->libele = $libele;
        $this->dateDeb = $dateDeb;
        $this->dateFin = $dateFin;
        $this->professeur = $professeur;
        $this->idProfesseur = $professeur->getId();
        //$this->propositions = $proposition;
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
    public static function createFromId(int $id) : self
    {
        //projet
        $stmtProjet = MyPDO::getInstance()->prepare(<<<SQL
            SELECT ID_PROJET as _id,
                   LIB_PROJET as titre,
                   DATE_DEB_PROJET as dateDeb,
                   DATE_FIN_PROJET as dateFin
            FROM PROJET
            WHERE ID_PROJET = ?
SQL
        );

        // execute projet query
        $stmtProjet->execute([$id]);
        $stmtProjet->setFetchMode(PDO::FETCH_CLASS, Projet::class);

        if (false === ($projet = $stmtProjet->fetch())) {
            throw new Exception("Aucun projet d'identifiant : ".$id);
        }

        return $projet;
    }

    /**
     * @param int $id
     * @return self[]
     * @throws Exception
     */
    public static function getFromProfesseurId(int $id) : array
    {
        $stmt = MyPDO::getInstance()->prepare(<<<SQL
            SELECT id_projet as _id,
                   professeur_id_pers as idProfesseur,
                   lib_projet as libele,
                   date_deb_projet as dateDeb,
                   date_fin_projet as dateFin
            FROM projet
            WHERE professeur_id_pers = ?
SQL
        );
        // execute projet query
        $stmt->setFetchMode(PDO::FETCH_CLASS, Projet::class);
        $stmt->execute([$id]);
        return $stmt->fetchAll();
    }

    /*
    public function supprimer(int $id)
    {
        $stmt = MyPDO::getInstance()->prepare(<<<SQL
            DELETE FROM PROJET
            WHERE ID_PROJET = ?
SQL
        );
        $stmt->execute([$id]);
    }*/

    /**
     * {@inheritdoc}
     */
    public function getPropositions(): array
    {
        if (null == $this->propositions)
        {
            $this->propositions = Proposition::getFromProjetId($this->_id);
        }

        return $this->propositions;
    }

    /**
     * @param $id
     * @return Etudiant[]
     * @throws Exception
     */
    public function getEtudiants($id) : array
    {
        if ($this->etudiants === null)
        {
            $this->etudiants = Etudiant::getFromProjetId($id);
        }
        return $this->etudiants;
    }

    /*
     * {@inheritdoc}
     *
    public function ajouter(string $dateDeb, string $dateFin, string $description): bool
    {
        $stmt = MyPDO::getInstance()->prepare(<<<SQL
            INSERT INTO PROJET(`PROFESSEUR_ID_PERS`, `LIB_PROJET`, `DATE_DEB_PROJET`, `DATE_FIN_PROJET`) 
            VALUES (
                :PROFESSEUR_ID_PERS,
                :LIB_PROJET,
                :DATE_DEB_PROJET,
                :DATE_FIN_PROJET
                )         
SQL
        );

        return $stmt->execute([
            ':PROFESSEUR_ID_PERS' => $this->idProfesseur,
            ':LIB_PROJET' => $this->libele,
            ':DATE_DEB_PROJET' => $this->dateDeb,
            ':DATE_FIN_PROJET' => $this->dateFin,
        ]);
    }
*/
    /**
     * {@inheritdoc}
     */
    public static function getAll(): array
    {
        $stmt = MyPDO::getInstance()->prepare(<<<SQL
            SELECT *
            FROM PROJET
SQL
        );
        $stmt->setFetchMode(PDO::FETCH_CLASS, Projet::class);
        $stmt->execute();

        return $stmt->fetchAll();
    }

    public function persist(): bool
    {
        $stmt = MyPDO::getInstance()->prepare(<<<SQL
            INSERT INTO PROJET( `LIB_PROJET`, `DATE_DEB_PROJET`, `DATE_FIN_PROJET`, `PROFESSEUR_ID_PERS`) 
            VALUES (
                :LIB_PROJET,
                :DATE_DEB_PROJET,
                :DATE_FIN_PROJET,
                :PROFESSEUR_ID_PERS
                );
SQL
        );

        return $stmt->execute([
            ':LIB_PROJET' => $this->libele,
            ':DATE_DEB_PROJET' => $this->dateDeb,
            ':DATE_FIN_PROJET' => $this->dateFin,
            ':PROFESSEUR_ID_PROJET' => $this->professeur->getId(),
            //':ID_PROJET' => $this->_id, /////////// sera ajouter via la classe Proposition
            //':DESCRIPTION' => $this->propositions->getDescription(), /////////// sera ajouter via la classe Proposition
        ]);
    }
}
