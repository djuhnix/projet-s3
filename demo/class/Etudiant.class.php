<?php
require_once('autoload.include.php') ;
require_once('MyPDO.template.php') ;
require_once('MyPDO.class.php') ;

class Etudiant extends User
{

    /**
     * Identifiant unique du User dans la base de données
     * @var string $idstage
     */
    protected $id_stage = null ;    
    
    /**
    * Identifiant unique du User dans la base de données
    * @var string $idProjet
    */
   protected $id_projet = null ;


    /**
     * Accesseur sur le id_stage de l'Utilisateur
     *
     * @return int id_stage
     */
    public function getStageId() {
        return $this->id_stage ;
    }

     /**
     * Accesseur sur le id_projet de l'Utilisateur
     *
     * @return int id_projet
     */
    public function getProjetId() {
        return $this->id_projet ;
    }


  /**
     * Fonction de validation du couple Login/mot de passe.
     * @param array $data 
     *
     * @return Etudiant utilisateur authentifié
     */
    public static function createFromAuthSHA512(array $data)  {
        if (!isset($data['code'])) {
            throw new AuthenticationException("pas de login/pass fournis") ;
        }

        Session::start() ;
        // Préparation : 
        $stmt = MyPDO::getInstance();
        $stmt = $stmt->prepare(<<<SQL
    SELECT utilisateur.id_pers, firstName, lastName, login, mail, DATE_FORMAT(datenaisssance, '%d %m %Y'), etudiant.id_stage, etudiant.id_projet
    FROM utilisateur, etudiant
    WHERE SHA2(CONCAT(sha512pass, :challenge, SHA2(login, 512)), 512) = :code
    AND utilisateur.id_pers = etudiant.id_pers
SQL
    ) ;

        $stmt->execute(array(
            ':challenge' => isset($_SESSION[self::session_key]['challenge']) ? $_SESSION[self::session_key]['challenge'] : '',
            ':code'      => $data['code'])) ;
        
        unset($_SESSION[self::session_key]['challenge']) ;

        $stmt->setFetchMode(PDO::FETCH_CLASS, __CLASS__) ;
        if (($utilisateur = $stmt->fetch()) !== false) {
            return $utilisateur ;
        }
        else {
            throw new AuthenticationException("Login/pass incorrect") ;
        }
    }

/**
     * Lecture de l'objet User dans la session
     * @throws NotInSessionException si l'objet n'est pas dans la session
     *
     * @return etudiant
     */
    static public function createFromSession() : self {
        Session::start() ;
        if (isset($_SESSION[self::session_key]['user'])) {
            $u = $_SESSION[self::session_key]['user'] ;

            if (is_object($u) && get_class($u) == get_class()) {
                return $u ;
            }
        }
        throw new NotInSessionException() ;
    }

}