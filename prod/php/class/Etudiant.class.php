<?php

require_once 'autoload.inc.php';

class Etudiant extends User
{
    /**
     * Identifiant unique du stage dans la base de données relié à l'étudiant.
     *
     * @var int | null
     */
    private $idStage = null;
    /**
     * Stage unique de l'étudiant.
     *
     * @var Stage | null
     */
    private $stage = null;

    /**
     * Identifiant unique du User dans la base de données.
     *
     * @var int | null
     */
    private $idProjet = null;
    /**
     * @var Projet | null
     */
    private $projet = null;
    /**
     * Numéro de l'étudiant.
     *
     * @var int | null
     */
    private $numEtud = null;
    /**
     * @var Proposition[]
     */
    private $propositions;
    /**
     * Modules aux quels est inscrit l'étudiant.
     *
     * @var Module[]
     */
    private $modules;

    /**
     * @return Etudiant[]
     *
     * @throws Exception
     */
    public static function getFromStageId(int $id): array
    {
        $stmt = MyPDO::getInstance()->prepare(
            <<<SQL
            SELECT id_pers as _id,
                   id_projet as idProjet, 
                   id_stage as idStage, 
                   num_etud as numEtudiant
            FROM etudiant
            WHERE id_stage = ?
SQL
        );
        $stmt->setFetchMode(PDO::FETCH_CLASS, Etudiant::class);
        $stmt->execute([$id]);

        return $stmt->fetchAll();
    }

    /**
     * @return Etudiant[]
     *
     * @throws Exception
     */
    public static function getFromProjetId(int $id): array
    {
        $stmt = MyPDO::getInstance()->prepare(
            <<<SQL
            SELECT id_pers as _id,
                   id_projet as idProjet, 
                   id_stage as idStage, 
                   num_etud as numEtudiant
            FROM etudiant
            WHERE id_projet = ?
SQL
        );
        $stmt->setFetchMode(PDO::FETCH_CLASS, Etudiant::class);
        $stmt->execute([$id]);

        return $stmt->fetchAll();
    }

    /**
     * @return Etudiant[]
     *
     * @throws Exception
     */
    public static function getFromModuleId(string $id)
    {
        $stmt = MyPDO::getInstance()->prepare(
            <<<SQL
            SELECT e.id_pers as _id,
                   id_projet as idProjet, 
                   id_stage as idStage, 
                   num_etud as numEtudiant
            FROM etudiant e
                JOIN inscrire i on e.id_pers = i.etudiant_id_pers
            WHERE id_module = ?
SQL
        );
        $stmt->setFetchMode(PDO::FETCH_CLASS, Etudiant::class);
        $stmt->execute([$id]);

        return $stmt->fetchAll();
    }

    /**
     * @return Etudiant[]
     *
     * @throws Exception
     */
    public static function getFromPropositionId(int $id)
    {
        $stmt = MyPDO::getInstance()->prepare(
            <<<SQL
            SELECT id_pers as _id,
                   id_projet as idProjet, 
                   id_stage as idStage, 
                   num_etud as numEtudiant
            FROM etudiant e
                JOIN etudiant_candidater ec on e.id_pers = ec.etudiant_id_pers
            WHERE id_proposition = ?
SQL
        );
        $stmt->setFetchMode(PDO::FETCH_CLASS, Etudiant::class);
        $stmt->execute([$id]);

        return $stmt->fetchAll();
    }

    public function setStage(?Stage $stage): void
    {
        $this->stage = $stage;
        $this->idStage = $stage->getId();
    }

    public function setProjet(?Projet $projet): void
    {
        $this->projet = $projet;
        $this->idProjet = $projet->getId();
    }

    public function setNumEtud(?int $numEtud): void
    {
        $this->numEtud = $numEtud;
    }

    /**
     * Accesseur sur le id_stage de l'Utilisateur.
     *
     * @return int
     */
    public function getIdStage()
    {
        return $this->idStage;
    }

    /**
     * @return Stage
     *
     * @throws Exception
     */
    public function getStage(): Stage
    {
        if (null === $this->stage) {
            $this->stage = Stage::createFromId($this->idStage);
        }

        return $this->stage;
    }

    /**
     * Accesseur sur le id_projet de l'Utilisateur.
     *
     * @return int
     */
    public function getIdProjet()
    {
        return $this->idProjet;
    }

    /**
     * @return Projet
     *
     * @throws Exception
     */
    public function getProjet(): Projet
    {
        if (null === $this->projet) {
            $this->projet = Projet::createFromId($this->idStage);
        }

        return $this->projet;
    }

    /**
     * @return Proposition[]
     *
     * @throws Exception
     */
    public function getPropositions(): array
    {
        if (null === $this->propositions) {
            $this->propositions = Proposition::getFromEtudiantId($this->_id);
        }

        return $this->propositions;
    }

    /**
     * @return Module[]
     *
     * @throws Exception
     */
    public function getModules(): array
    {
        if (null === $this->modules) {
            $this->modules = Module::getFromEtudiantId($this->_id);
        }

        return $this->modules;
    }

    /**
     * Fonction de validation du couple Login/mot de passe.
     *
     * @return Etudiant utilisateur authentifié
     *
     * @throws AuthenticationException
     * @throws SessionException
     * @throws Exception
     */
    public static function createFromAuthSHA512(array $data)
    {
        if (!isset($data['code'])) {
            throw new AuthenticationException('pas de login/pass fournis');
        }

        Session::start();
        // Préparation :
        $stmt = MyPDO::getInstance();
        $stmt = $stmt->prepare(<<<SQL
    SELECT utilisateur.id_pers, firstName, lastName, login, mail, DATE_FORMAT(datenaisssance, '%d %m %Y'), etudiant.id_stage, etudiant.id_projet
    FROM utilisateur, etudiant
    WHERE SHA2(CONCAT(sha512pass, :challenge, SHA2(login, 512)), 512) = :code
    AND utilisateur.id_pers = etudiant.id_pers
SQL
        );

        $stmt->execute([
            ':challenge' => isset($_SESSION[self::session_key]['challenge']) ? $_SESSION[self::session_key]['challenge'] : '',
            ':code' => $data['code'], ]);

        unset($_SESSION[self::session_key]['challenge']);

        $stmt->setFetchMode(PDO::FETCH_CLASS, __CLASS__);
        if (false !== ($utilisateur = $stmt->fetch())) {
            return $utilisateur;
        } else {
            throw new AuthenticationException('Login/pass incorrect');
        }
    }

    /**
     * Lecture de l'objet User dans la session.
     *
     * @return etudiant
     *
     * @throws SessionException
     * @throws NotInSessionException si l'objet n'est pas dans la session
     */
    public static function createFromSession(): self
    {
        Session::start();
        if (isset($_SESSION[self::session_key]['user'])) {
            $u = $_SESSION[self::session_key]['user'];

            if (is_object($u) && get_class($u) == get_class()) {
                return $u;
            }
        }
        throw new NotInSessionException();
    }
}
