/*==============================================================*/
/* Nom de SGBD :  MySQL 5.0                                     */
/* Date de création :  01/12/2019 23:16:53                      */
/*==============================================================*/



drop trigger if exists INSERT_PASS_TO_SHA;

drop trigger if exists UPDATE_PASS_TO_SHA;

/*
alter table CANDIDATER 
   drop foreign key FK_CANDIDAT_CANDIDATE_ETUDIANT;

alter table CANDIDATER 
   drop foreign key FK_CANDIDAT_CANDIDATE_CANDIDAT;

alter table CANDIDATURE 
   drop foreign key FK_CANDIDAT_POSSEDER_TYPE_CAN;

alter table CANDIDATURE 
   drop foreign key FK_CANDIDAT_PROPOSER__ENTREPRI;

alter table CANDIDATURE 
   drop foreign key FK_CANDIDAT_PROPOSER__PROFESSE;

alter table ENTREPRISE 
   drop foreign key FK_ENTREPRI_AVOIR_ADR_ADRESSE;

alter table ENTREPRISE 
   drop foreign key FK_ENTREPRI_EMPLOYER_RESPONSA;

alter table ETUDIANT 
   drop foreign key FK_ETUDIANT_H_TILISAT_UTILISAT;

alter table ETUDIANT 
   drop foreign key FK_ETUDIANT_REALISER__PROJET;

alter table ETUDIANT 
   drop foreign key FK_ETUDIANT_REALISER__STAGE;

alter table INSCRIRE 
   drop foreign key FK_INSCRIRE_INSCRIRE_MODULE;

alter table INSCRIRE 
   drop foreign key FK_INSCRIRE_INSCRIRE2_ETUDIANT;

alter table MODULE 
   drop foreign key FK_MODULE_ENSEIGNER_PROFESSE;

alter table PROFESSEUR 
   drop foreign key FK_PROFESSE_H_TILISAT_UTILISAT;

alter table PROJET 
   drop foreign key FK_PROJET_H_MODULE_MODULE;

alter table RESPONSABLE 
   drop foreign key FK_RESPONSA_EMPLOYER2_ENTREPRI;

alter table RESPONSABLE 
   drop foreign key FK_RESPONSA_ENCADRER2_STAGE;

alter table RESPONSABLE 
   drop foreign key FK_RESPONSA_H_TILISAT_UTILISAT;

alter table STAGE 
   drop foreign key FK_STAGE_ENCADRER_RESPONSA;

alter table STAGE 
   drop foreign key FK_STAGE_H_MODULE2_MODULE;

alter table UTILISATEUR 
   drop foreign key FK_UTILISAT_AVOIR_ADR_ADRESSE;

alter table CANDIDATURE 
   drop foreign key FK_CANDIDAT_PROPOSER__ENTREPRI;


alter table CANDIDATURE 
   drop foreign key FK_CANDIDAT_POSSEDER_TYPE_CAN;

alter table CANDIDATURE 
   drop foreign key FK_CANDIDAT_PROPOSER__PROFESSE;

alter table CANDIDATER 
   drop foreign key FK_CANDIDAT_CANDIDATE_ETUDIANT;

alter table CANDIDATER 
   drop foreign key FK_CANDIDAT_CANDIDATE_CANDIDAT;

alter table ENTREPRISE 
   drop foreign key FK_ENTREPRI_EMPLOYER_RESPONSA;

alter table ENTREPRISE 
   drop foreign key FK_ENTREPRI_AVOIR_ADR_ADRESSE;

alter table ETUDIANT 
   drop foreign key FK_ETUDIANT_H_TILISAT_UTILISAT;

alter table ETUDIANT 
   drop foreign key FK_ETUDIANT_REALISER__PROJET;

alter table ETUDIANT 
   drop foreign key FK_ETUDIANT_REALISER__STAGE;

alter table INSCRIRE 
   drop foreign key FK_INSCRIRE_INSCRIRE_MODULE;

alter table INSCRIRE 
   drop foreign key FK_INSCRIRE_INSCRIRE2_ETUDIANT;
   
alter table MODULE 
   drop foreign key FK_MODULE_ENSEIGNER_PROFESSE;

alter table PROFESSEUR 
   drop foreign key FK_PROFESSE_H_TILISAT_UTILISAT;
   
alter table PROJET 
   drop foreign key FK_PROJET_H_MODULE_MODULE;

alter table RESPONSABLE 
   drop foreign key FK_RESPONSA_EMPLOYER2_ENTREPRI;

alter table RESPONSABLE 
   drop foreign key FK_RESPONSA_ENCADRER2_STAGE;

alter table RESPONSABLE 
   drop foreign key FK_RESPONSA_H_TILISAT_UTILISAT;

alter table STAGE 
   drop foreign key FK_STAGE_ENCADRER_RESPONSA;

alter table STAGE 
   drop foreign key FK_STAGE_H_MODULE2_MODULE;

alter table UTILISATEUR 
   drop foreign key FK_UTILISAT_AVOIR_ADR_ADRESSE;
*/

drop table if exists CANDIDATER;

drop table if exists ADRESSE;

drop table if exists CANDIDATURE;

drop table if exists ENTREPRISE;

drop table if exists ETUDIANT;

drop table if exists INSCRIRE;

drop table if exists MODULE;

drop table if exists PROFESSEUR;

drop table if exists PROJET;

drop table if exists RESPONSABLE;

drop table if exists STAGE;

drop table if exists TYPE_CANDIDATURE;


drop table if exists UTILISATEUR;

/*==============================================================*/
/* Table : ADRESSE                                              */
/*==============================================================*/
create table ADRESSE
(
   ID_ADRESSE           int(10) not null auto_increment  comment '',
   RUE                  varchar(100)  comment '',
   CODE_POSTAL          varchar(5)  comment '',
   VILLE                varchar(25)  comment '',
   primary key (ID_ADRESSE)
)
auto_increment = 1;

/*==============================================================*/
/* Table : CANDIDATER                                           */
/*==============================================================*/
create table CANDIDATER
(
   ID_PERS              int(10) not null  comment '',
   ID_CANDIDATURE       int(10) not null  comment '',
   DATE_CAND            date  comment '',
   primary key (ID_PERS, ID_CANDIDATURE)
);

/*==============================================================*/
/* Table : CANDIDATURE                                          */
/*==============================================================*/
create table CANDIDATURE
(
   ID_CANDIDATURE       int(10) not null auto_increment  comment '',
   ID_ENTREPRISE        int(10)  comment '',
   ID_TYPE_CANDIDATURE  int(10)  comment '',
   ID_PERS              int(10)  comment '',
   DESCRIPTION          varchar(500)  comment '',
   ACCEPTEE             bool  comment '',
   primary key (ID_CANDIDATURE)
)
auto_increment = 1;

/*==============================================================*/
/* Table : ENTREPRISE                                           */
/*==============================================================*/
create table ENTREPRISE
(
   ID_ENTREPRISE        int(10) not null auto_increment  comment '',
   ID_ADRESSE           int(10)  comment '',
   ID_PERS              int(10)  comment '',
   LIB_ENTREPRISE       varchar(100)  comment '',
   primary key (ID_ENTREPRISE)
)
auto_increment = 1;

/*==============================================================*/
/* Table : ETUDIANT                                             */
/*==============================================================*/
create table ETUDIANT
(
   ID_PERS              int(10) not null  comment '',
   ID_MODULE            varchar(5)  comment '',
   PRO_ID_MODULE        varchar(5)  comment '',
   N_ETUD               int not null  comment '',
   primary key (ID_PERS)
)
auto_increment = 1;

/*==============================================================*/
/* Table : INSCRIRE                                             */
/*==============================================================*/
create table INSCRIRE
(
   ID_MODULE            varchar(5) not null  comment '',
   ID_PERS              int(10) not null  comment '',
   NOTE_CC              decimal(4)  comment '',
   NOTE_TP              decimal(4)  comment '',
   primary key (ID_MODULE, ID_PERS)
);

/*==============================================================*/
/* Table : MODULE                                               */
/*==============================================================*/
create table MODULE
(
   ID_MODULE            varchar(5) not null  comment '',
   ID_PERS              int(10)  comment '',
   LIB_MODULE           varchar(100)  comment '',
   DATE_DEBUT           date  comment '',
   DATE_FIN             date  comment '',
   primary key (ID_MODULE)
);

/*==============================================================*/
/* Table : PROFESSEUR                                           */
/*==============================================================*/
create table PROFESSEUR
(
   ID_PERS              int(10) not null  comment '',
   N_PROF               int not null  comment '',
   primary key (ID_PERS)
)
auto_increment = 1;

/*==============================================================*/
/* Table : PROJET                                               */
/*==============================================================*/
create table PROJET
(
   ID_MODULE            varchar(5) not null  comment '',
   LIB_MODULE           varchar(100)  comment '',
   DATE_DEBUT           date  comment '',
   DATE_FIN             date  comment '',
   primary key (ID_MODULE)
);

/*==============================================================*/
/* Table : RESPONSABLE                                          */
/*==============================================================*/
create table RESPONSABLE
(
   ID_PERS              int(10) not null  comment '',
   ID_ENTREPRISE        int(10)  comment '',
   ID_MODULE            varchar(5)  comment '',
   primary key (ID_PERS)
)
auto_increment = 1;

/*==============================================================*/
/* Table : STAGE                                                */
/*==============================================================*/
create table STAGE
(
   ID_MODULE            varchar(5) not null  comment '',
   ID_PERS              int(10)  comment '',
   LIB_MODULE           varchar(100)  comment '',
   DATE_DEBUT           date  comment '',
   DATE_FIN             date  comment '',
   primary key (ID_MODULE)
);

/*==============================================================*/
/* Table : TYPE_CANDIDATURE                                     */
/*==============================================================*/
create table TYPE_CANDIDATURE
(
   ID_TYPE_CANDIDATURE  int(10) not null auto_increment  comment '',
   LIB_TYPE_CANDIDATURE int not null  comment '',
   primary key (ID_TYPE_CANDIDATURE)
);

/*==============================================================*/
/* Table : UTILISATEUR                                          */
/*==============================================================*/
create table UTILISATEUR
(
   ID_PERS              int(10) not null auto_increment  comment '',
   ID_ADRESSE           int(10)  comment '',
   NOM                  varchar(25) not null  comment '',
   PRENOM               varchar(25)  comment '',
   GENRE                varchar(1)  comment '',
   DATENAIS             date  comment '',
   MAIL                 varchar(100)  comment '',
   LOGIN                varchar(25) not null  comment '',
   SHA_MDP              varchar(25) not null  comment '',
   primary key (ID_PERS)
)
auto_increment = 1;

alter table CANDIDATER add constraint FK_CANDIDAT_CANDIDATE_ETUDIANT foreign key (ID_PERS)
      references ETUDIANT (ID_PERS) on delete restrict on update restrict;

alter table CANDIDATER add constraint FK_CANDIDAT_CANDIDATE_CANDIDAT foreign key (ID_CANDIDATURE)
      references CANDIDATURE (ID_CANDIDATURE) on delete restrict on update restrict;

alter table CANDIDATURE add constraint FK_CANDIDAT_POSSEDER_TYPE_CAN foreign key (ID_TYPE_CANDIDATURE)
      references TYPE_CANDIDATURE (ID_TYPE_CANDIDATURE) on delete restrict on update restrict;

alter table CANDIDATURE add constraint FK_CANDIDAT_PROPOSER__ENTREPRI foreign key (ID_ENTREPRISE)
      references ENTREPRISE (ID_ENTREPRISE) on delete restrict on update restrict;

alter table CANDIDATURE add constraint FK_CANDIDAT_PROPOSER__PROFESSE foreign key (ID_PERS)
      references PROFESSEUR (ID_PERS) on delete restrict on update restrict;

alter table ENTREPRISE add constraint FK_ENTREPRI_AVOIR_ADR_ADRESSE foreign key (ID_ADRESSE)
      references ADRESSE (ID_ADRESSE) on delete restrict on update restrict;

alter table ENTREPRISE add constraint FK_ENTREPRI_EMPLOYER_RESPONSA foreign key (ID_PERS)
      references RESPONSABLE (ID_PERS) on delete restrict on update restrict;

alter table ETUDIANT add constraint FK_ETUDIANT_H_TILISAT_UTILISAT foreign key (ID_PERS)
      references UTILISATEUR (ID_PERS) on delete restrict on update restrict;

alter table ETUDIANT add constraint FK_ETUDIANT_REALISER__PROJET foreign key (PRO_ID_MODULE)
      references PROJET (ID_MODULE) on delete restrict on update restrict;

alter table ETUDIANT add constraint FK_ETUDIANT_REALISER__STAGE foreign key (ID_MODULE)
      references STAGE (ID_MODULE) on delete restrict on update restrict;

alter table INSCRIRE add constraint FK_INSCRIRE_INSCRIRE_MODULE foreign key (ID_MODULE)
      references MODULE (ID_MODULE) on delete restrict on update restrict;

alter table INSCRIRE add constraint FK_INSCRIRE_INSCRIRE2_ETUDIANT foreign key (ID_PERS)
      references ETUDIANT (ID_PERS) on delete restrict on update restrict;

alter table MODULE add constraint FK_MODULE_ENSEIGNER_PROFESSE foreign key (ID_PERS)
      references PROFESSEUR (ID_PERS) on delete restrict on update restrict;

alter table PROFESSEUR add constraint FK_PROFESSE_H_TILISAT_UTILISAT foreign key (ID_PERS)
      references UTILISATEUR (ID_PERS) on delete restrict on update restrict;

alter table PROJET add constraint FK_PROJET_H_MODULE_MODULE foreign key (ID_MODULE)
      references MODULE (ID_MODULE) on delete restrict on update restrict;

alter table RESPONSABLE add constraint FK_RESPONSA_EMPLOYER2_ENTREPRI foreign key (ID_ENTREPRISE)
      references ENTREPRISE (ID_ENTREPRISE) on delete restrict on update restrict;

alter table RESPONSABLE add constraint FK_RESPONSA_ENCADRER2_STAGE foreign key (ID_MODULE)
      references STAGE (ID_MODULE) on delete restrict on update restrict;

alter table RESPONSABLE add constraint FK_RESPONSA_H_TILISAT_UTILISAT foreign key (ID_PERS)
      references UTILISATEUR (ID_PERS) on delete restrict on update restrict;

alter table STAGE add constraint FK_STAGE_ENCADRER_RESPONSA foreign key (ID_PERS)
      references RESPONSABLE (ID_PERS) on delete restrict on update restrict;

alter table STAGE add constraint FK_STAGE_H_MODULE2_MODULE foreign key (ID_MODULE)
      references MODULE (ID_MODULE) on delete restrict on update restrict;

alter table UTILISATEUR add constraint FK_UTILISAT_AVOIR_ADR_ADRESSE foreign key (ID_ADRESSE)
      references ADRESSE (ID_ADRESSE) on delete restrict on update restrict;


-- TRIGGER --

CREATE TRIGGER `INSERT_PASS_TO_SHA` 
BEFORE INSERT ON `utilisateur` 
FOR EACH ROW 
-- BEGIN 
    SET NEW.SHA_MDP = SHA2(NEW.SHA_MDP, 512); 
-- END;


CREATE TRIGGER `UPDATE_PASS_TO_SHA` 
BEFORE UPDATE ON `utilisateur` 
FOR EACH ROW 
-- BEGIN 
    SET NEW.SHA_MDP = SHA2(NEW.SHA_MDP, 512); 
-- END;

