/*==============================================================*/
/* Nom de SGBD :  MySQL 5.0                                     */
/* Date de création :  31/10/2019 19:27:07                      */
/*==============================================================*/


drop trigger if exists INSERT_PASS_TO_SHA2;

drop trigger if exists UPDATE_PASS_TO_SHA2;
/*
alter table ENCADRER
   drop foreign key FK_ENCADRER_ENCADRER_RESPONSA;

alter table ENCADRER
   drop foreign key FK_ENCADRER_ENCADRER2_STAGE;

alter table ENSEIGNER
   drop foreign key FK_ENSEIGNE_ENSEIGNER_MODULE;

alter table ENSEIGNER
   drop foreign key FK_ENSEIGNE_ENSEIGNER_PROFESSE;

alter table ENTREPRISE
   drop foreign key FK_ENTREPRI_AVOIR_2_ADRESSE;

alter table ENTREPRISE
   drop foreign key FK_ENTREPRI_TRAVAILLE_RESPONSA;

alter table ETUDIANT
   drop foreign key FK_ETUDIANT_H3_UTILISAT;

alter table INSCRIRE
   drop foreign key FK_INSCRIRE_INSCRIRE_MODULE;

alter table INSCRIRE
   drop foreign key FK_INSCRIRE_INSCRIRE2_ETUDIANT;

alter table MODULE
   drop foreign key FK_MODULE_POSSEDER_CANDIDAT;

alter table PROFESSEUR
   drop foreign key FK_PROFESSE_H1_UTILISAT;

alter table PROJET
   drop foreign key FK_PROJET_H4_MODULE;

alter table PROJET
   drop foreign key FK_PROJET_PROPOSER_ENTREPRI;

alter table RESPONSABLE
   drop foreign key FK_RESPONSA_H2_UTILISAT;

alter table STAGE
   drop foreign key FK_STAGE_H5_MODULE;

alter table UTILISATEUR
   drop foreign key FK_UTILISAT_AVOIR_ADRESSE;
*/

drop table if exists ADRESSE;

drop table if exists CANDIDATURE;

/*
alter table ENCADRER
   drop foreign key FK_ENCADRER_ENCADRER2_STAGE;

alter table ENCADRER
   drop foreign key FK_ENCADRER_ENCADRER_RESPONSA;
*/
drop table if exists ENCADRER;

/*
alter table ENSEIGNER
   drop foreign key FK_ENSEIGNE_ENSEIGNER_PROFESSE;

alter table ENSEIGNER
   drop foreign key FK_ENSEIGNE_ENSEIGNER_MODULE;
*/
drop table if exists ENSEIGNER;

/*
alter table ENTREPRISE
   drop foreign key FK_ENTREPRI_TRAVAILLE_RESPONSA;

alter table ENTREPRISE
   drop foreign key FK_ENTREPRI_AVOIR_2_ADRESSE;
*/
drop table if exists ENTREPRISE;

/*
alter table ETUDIANT
   drop foreign key FK_ETUDIANT_H3_UTILISAT;
*/
drop table if exists ETUDIANT;

/*
alter table INSCRIRE
   drop foreign key FK_INSCRIRE_INSCRIRE2_ETUDIANT;

alter table INSCRIRE
   drop foreign key FK_INSCRIRE_INSCRIRE_MODULE;
*/
drop table if exists INSCRIRE;

/*
alter table MODULE
   drop foreign key FK_MODULE_POSSEDER_CANDIDAT;
*/
drop table if exists MODULE;

/*
alter table PROFESSEUR
   drop foreign key FK_PROFESSE_H1_UTILISAT;
*/
drop table if exists PROFESSEUR;

/*
alter table PROJET
   drop foreign key FK_PROJET_PROPOSER_ENTREPRI;

alter table PROJET
   drop foreign key FK_PROJET_H4_MODULE;
*/
drop table if exists PROJET;

/*
alter table RESPONSABLE
   drop foreign key FK_RESPONSA_H2_UTILISAT;
*/
drop table if exists RESPONSABLE;

/*
alter table STAGE
   drop foreign key FK_STAGE_H5_MODULE;
*/
drop table if exists STAGE;

/*
alter table UTILISATEUR
   drop foreign key FK_UTILISAT_AVOIR_ADRESSE;
*/
drop table if exists UTILISATEUR;

/*==============================================================*/
/* Table : ADRESSE                                              */
/*==============================================================*/
create table ADRESSE
(
   ID_ADRESSE           int not null auto_increment  comment '',
   RUE                  varchar(100)  comment '',
   CODE_POSTAL          varchar(5)  comment '',
   VILLE                varchar(25)  comment '',
   primary key (ID_ADRESSE)
);

/*==============================================================*/
/* Table : CANDIDATURE                                          */
/*==============================================================*/
create table CANDIDATURE
(
   ID_CANDIDATURE       int not null  comment '',
   DESCRIPTION          varchar(1024)  comment '',
   primary key (ID_CANDIDATURE)
);

/*==============================================================*/
/* Table : ENCADRER                                             */
/*==============================================================*/
create table ENCADRER
(
   N_PERS               int not null  comment '',
   ID_MODULE            varchar(10) not null  comment '',
   primary key (N_PERS, ID_MODULE)
);

/*==============================================================*/
/* Table : ENSEIGNER                                            */
/*==============================================================*/
create table ENSEIGNER
(
   ID_MODULE            varchar(10) not null  comment '',
   N_PERS               int not null  comment '',
   primary key (ID_MODULE, N_PERS)
);

/*==============================================================*/
/* Table : ENTREPRISE                                           */
/*==============================================================*/
create table ENTREPRISE
(
   N_ENTREPRISE         int not null auto_increment  comment '',
   ID_ADRESSE           int  comment '',
   N_PERS               int  comment '',
   NOM_E                varchar(100)  comment '',
   primary key (N_ENTREPRISE)
);

/*==============================================================*/
/* Table : ETUDIANT                                             */
/*==============================================================*/
create table ETUDIANT
(
   N_PERS               int not null  comment '',
   N_ETUD               int not null  comment '',
   primary key (N_PERS)
);

/*==============================================================*/
/* Table : INSCRIRE                                             */
/*==============================================================*/
create table INSCRIRE
(
   ID_MODULE            varchar(10) not null  comment '',
   N_PERS               int not null  comment '',
   NOTE                 decimal(4)  comment '',
   primary key (ID_MODULE, N_PERS)
);

/*==============================================================*/
/* Table : MODULE                                               */
/*==============================================================*/
create table MODULE
(
   ID_MODULE            varchar(10) not null  comment '',
   ID_CANDIDATURE       int  comment '',
   LIBMODULE            varchar(100)  comment '',
   DATE_DEBUT           date  comment '',
   DATE_FIN             date  comment '',
   primary key (ID_MODULE)
);

/*==============================================================*/
/* Table : PROFESSEUR                                           */
/*==============================================================*/
create table PROFESSEUR
(
   N_PERS               int not null  comment '',
   N_PROF               int not null  comment '',
   primary key (N_PERS)
);

/*==============================================================*/
/* Table : PROJET                                               */
/*==============================================================*/
create table PROJET
(
   ID_MODULE            varchar(10) not null  comment '',
   N_ENTREPRISE         int  comment '',
   ID_CANDIDATURE       int  comment '',
   LIBMODULE            varchar(100)  comment '',
   DATE_DEBUT           date  comment '',
   DATE_FIN             date  comment '',
   primary key (ID_MODULE)
);

/*==============================================================*/
/* Table : RESPONSABLE                                          */
/*==============================================================*/
create table RESPONSABLE
(
   N_PERS               int not null  comment '',
   primary key (N_PERS)
);

/*==============================================================*/
/* Table : STAGE                                                */
/*==============================================================*/
create table STAGE
(
   ID_MODULE            varchar(10) not null  comment '',
   ID_CANDIDATURE       int  comment '',
   LIBMODULE            varchar(100)  comment '',
   DATE_DEBUT           date  comment '',
   DATE_FIN             date  comment '',
   primary key (ID_MODULE)
);

/*==============================================================*/
/* Table : UTILISATEUR                                          */
/*==============================================================*/
create table UTILISATEUR
(
   N_PERS               int not null auto_increment  comment '',
   ID_ADRESSE           int  comment '',
   NOM_U                varchar(100)  comment '',
   PRENOM               varchar(25) not null  comment '',
   GENRE                varchar(1)  comment '',
   DATENAIS             date  comment '',
   MAIL                 varchar(100)  comment '',
   LOGIN                varchar(25)  comment '',
   SHA_MDP              varchar(25)  comment '',
   primary key (N_PERS)
);

alter table ENCADRER add constraint FK_ENCADRER_ENCADRER_RESPONSA foreign key (N_PERS)
      references RESPONSABLE (N_PERS) on delete restrict on update restrict;

alter table ENCADRER add constraint FK_ENCADRER_ENCADRER2_STAGE foreign key (ID_MODULE)
      references STAGE (ID_MODULE) on delete restrict on update restrict;

alter table ENSEIGNER add constraint FK_ENSEIGNE_ENSEIGNER_MODULE foreign key (ID_MODULE)
      references MODULE (ID_MODULE) on delete restrict on update restrict;

alter table ENSEIGNER add constraint FK_ENSEIGNE_ENSEIGNER_PROFESSE foreign key (N_PERS)
      references PROFESSEUR (N_PERS) on delete restrict on update restrict;

alter table ENTREPRISE add constraint FK_ENTREPRI_AVOIR_2_ADRESSE foreign key (ID_ADRESSE)
      references ADRESSE (ID_ADRESSE) on delete restrict on update restrict;

alter table ENTREPRISE add constraint FK_ENTREPRI_TRAVAILLE_RESPONSA foreign key (N_PERS)
      references RESPONSABLE (N_PERS) on delete restrict on update restrict;

alter table ETUDIANT add constraint FK_ETUDIANT_H3_UTILISAT foreign key (N_PERS)
      references UTILISATEUR (N_PERS) on delete restrict on update restrict;

alter table INSCRIRE add constraint FK_INSCRIRE_INSCRIRE_MODULE foreign key (ID_MODULE)
      references MODULE (ID_MODULE) on delete restrict on update restrict;

alter table INSCRIRE add constraint FK_INSCRIRE_INSCRIRE2_ETUDIANT foreign key (N_PERS)
      references ETUDIANT (N_PERS) on delete restrict on update restrict;

alter table MODULE add constraint FK_MODULE_POSSEDER_CANDIDAT foreign key (ID_CANDIDATURE)
      references CANDIDATURE (ID_CANDIDATURE) on delete restrict on update restrict;

alter table PROFESSEUR add constraint FK_PROFESSE_H1_UTILISAT foreign key (N_PERS)
      references UTILISATEUR (N_PERS) on delete restrict on update restrict;

alter table PROJET add constraint FK_PROJET_H4_MODULE foreign key (ID_MODULE)
      references MODULE (ID_MODULE) on delete restrict on update restrict;

alter table PROJET add constraint FK_PROJET_PROPOSER_ENTREPRI foreign key (N_ENTREPRISE)
      references ENTREPRISE (N_ENTREPRISE) on delete restrict on update restrict;

alter table RESPONSABLE add constraint FK_RESPONSA_H2_UTILISAT foreign key (N_PERS)
      references UTILISATEUR (N_PERS) on delete restrict on update restrict;

alter table STAGE add constraint FK_STAGE_H5_MODULE foreign key (ID_MODULE)
      references MODULE (ID_MODULE) on delete restrict on update restrict;

alter table UTILISATEUR add constraint FK_UTILISAT_AVOIR_ADRESSE foreign key (ID_ADRESSE)
      references ADRESSE (ID_ADRESSE) on delete restrict on update restrict;


create or replace trigger INSERT_PASS_TO_SHA2 before insert
on UTILISATEUR for each row
begin
    set new.SHA_MDP = sha2(new.SHA_MDP,512);
end;


create or replace trigger UPDATE_PASS_TO_SHA2 before update
on UTILISATEUR for each row
begin
    set new.SHA_MDP = sha2(new.SHA_MDP,512);
end;
