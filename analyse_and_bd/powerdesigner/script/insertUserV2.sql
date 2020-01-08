INSERT INTO `utilisateur` (`id_pers`, `lastName`, `firstName`, `login`, `sha512pass`, `datenaisssance`, `mail`, `genre`) VALUES
(0, 'Admin', 'Admin', 'Root', 'be8934f754ebc0a3039180faf3cfdd9cc6af1d40067bd8adda2341f796afcd4804c5ad212308e67d070e815e303e0ecaddaaa7e846c755a086dc82c5a6368966', NULL, NULL, NULL),
(1, 'Duck', 'riri', 'toto', 'd404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db', '1937-10-17', 'riri.duck@disney.com', '1'),
(2, 'Tournesol', 'Tryphon', 'tintin', 'ce07724f96dd5764e0e838cdd03cd4e103fb84c9cde2ff989645fa0d377f43221f793883b177a8aea7dde5d44e01e1694b22530d55d8bd6fcccd2edfde2af0e9', '1943-02-19', NULL, NULL),
(3, 'Musk', 'Elon', 'Tesla', 'ccc919350267889c78ef3e562d7924196b12dee33eaf0aecce9c4799dbe27c75c6429087b83e18daf03f470c714d0665c2fde62f3005f983afed4b6cf76d9277', '1971-06-28', 'space', NULL);

UPDATE `utilisateur` SET `id_pers` = '0' WHERE `utilisateur`.`lastName` = "Admin" ;

INSERT INTO `etudiant` (`id_pers`, `id_projet`, `id_stage`, `num_etud`) VALUES ('1', NULL, NULL, '123456789') ;

INSERT INTO `professeur` (`id_pers`, `num_prof`) VALUES ('2', '1') ;

INSERT INTO `responsable` (`id_pers`, `id_entreprise`) VALUES ('3', NULL) ;

INSERT INTO `professeur` (`id_pers`, `num_prof`) VALUES ('0', '0') 
/*==============================================================

    eleve : toto / 1234
    prof  : tintin / Haddock
    responsable : Tesla / space

*/
