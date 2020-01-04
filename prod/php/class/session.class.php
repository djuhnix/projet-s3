<?php

class SessionException extends Exception {
}


class Session {

    static public function start() {
        switch (session_status()) {
            case PHP_SESSION_DISABLED : 
                throw new SessionException("Le serveur n'est pas paramètré pour les sessions.") ;
                break ;

            case PHP_SESSION_NONE : 
                if (headers_sent($file, $line))
                    throw new SessionException("Erreur : entête déja envoyé dans {$file} à {$line} .") ;
                session_start() ;
                break ;

            case PHP_SESSION_ACTIVE : 
                break ;

            default : 
                throw new RuntimeException("Error on session management") ;
                break ;
        }
    }
}

