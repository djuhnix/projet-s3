/*==============================================================*/
/* Nom de SGBD :  MySQL 5.0                                     */
/* Date de création :  06/12/2019 14:36:24                      */
/*==============================================================*/
SET FOREIGN_KEY_CHECKS = 0;

drop table if exists ADRESSE;

drop table if exists CANDIDATER;

drop table if exists CANDIDATURE;

drop table if exists ENSEIGNER;

drop table if exists ENTREPRISE;

drop table if exists ETUDIANT;

drop table if exists INSCRIRE;

drop table if exists MODULE;

drop table if exists PROFESSEUR;

drop table if exists PROJET;

drop table if exists RESPONSABLE;

drop table if exists STAGE;

drop table if exists UTILISATEUR;

/*==============================================================*/
/* Table : ADRESSE                                              */
/*==============================================================*/
create table ADRESSE
(
   ID_ADRESSE           int(10) not null auto_increment,
   ID_ENTREPRISE        int(10),
   RUE                  varchar(100),
   CODE_POSTAL          varchar(5),
   VILLE                varchar(25),
   primary key (ID_ADRESSE)
)
auto_increment = 1;

/*==============================================================*/
/* Table : CANDIDATER                                           */
/*==============================================================*/
create table CANDIDATER
(
   ID_PERS              int(10) not null,
   ID_CANDIDATURE       int(10) not null,
   DATE_CAND            date,
   primary key (ID_PERS, ID_CANDIDATURE)
)
auto_increment = 1;

/*==============================================================*/
/* Table : CANDIDATURE                                          */
/*==============================================================*/
create table CANDIDATURE
(
   ID_CANDIDATURE       int(10) not null auto_increment,
   ID_STAGE             int(5),
   ID_PROJET            int(5),
   DESCRIPTION          varchar(500),
   ACCEPTEE             bool,
   primary key (ID_CANDIDATURE)
)
auto_increment = 1;

/*==============================================================*/
/* Table : ENSEIGNER                                            */
/*==============================================================*/
create table ENSEIGNER
(
   ID_MODULE            varchar(5) not null,
   ID_PERS              int(10) not null,
   primary key (ID_MODULE, ID_PERS)
)
auto_increment = 1;

/*==============================================================*/
/* Table : ENTREPRISE                                           */
/*==============================================================*/
create table ENTREPRISE
(
   ID_ENTREPRISE        int(10) not null auto_increment,
   LIB_ENTREPRISE       varchar(100),
   primary key (ID_ENTREPRISE)
)
auto_increment = 1;

/*==============================================================*/
/* Table : ETUDIANT                                             */
/*==============================================================*/
create table ETUDIANT
(
   ID_PERS              int(10) not null,
   ID_PROJET            int(5),
   ID_STAGE             int(5),
   N_ETUD               int not null,
   primary key (ID_PERS)
)
auto_increment = 1;

/*==============================================================*/
/* Table : INSCRIRE                                             */
/*==============================================================*/
create table INSCRIRE
(
   ID_MODULE            varchar(5) not null,
   ID_PERS              int(10) not null,
   NOTE_CC              decimal(4),
   NOTE_TP              decimal(4),
   primary key (ID_MODULE, ID_PERS)
)
auto_increment = 1;

/*==============================================================*/
/* Table : MODULE                                               */
/*==============================================================*/
create table MODULE
(
   ID_MODULE            varchar(5) not null,
   LIB_MODULE           varchar(100),
   primary key (ID_MODULE)
)
auto_increment = 1;

/*==============================================================*/
/* Table : PROFESSEUR                                           */
/*==============================================================*/
create table PROFESSEUR
(
   ID_PERS              int(10) not null,
   N_PROF               int not null,
   primary key (ID_PERS)
)
auto_increment = 1;

/*==============================================================*/
/* Table : PROJET                                               */
/*==============================================================*/
create table PROJET
(
   ID_PROJET            int(5) not null auto_increment,
   ID_PERS              int(10),
   LIB_PROJET           varchar(100) not null,
   DATE_DEB_PROJET      date,
   DATE_FIN_PROJET      date,
   primary key (ID_PROJET)
)
auto_increment = 1;

/*==============================================================*/
/* Table : RESPONSABLE                                          */
/*==============================================================*/
create table RESPONSABLE
(
   ID_PERS              int(10) not null,
   ID_ENTREPRISE        int(10),
   ID_STAGE             int(5),
   primary key (ID_PERS)
)
auto_increment = 1;

/*==============================================================*/
/* Table : STAGE                                                */
/*==============================================================*/
create table STAGE
(
   ID_STAGE             int(5) not null auto_increment,
   ID_ENTREPRISE        int(10),
   ID_PERS              int(10),
   LIB_STAGE            varchar(100),
   DATE_DEB_STAGE       date not null,
   DATE_FIN_STAGE       date not null,
   primary key (ID_STAGE)
)
auto_increment = 1;

/*==============================================================*/
/* Table : UTILISATEUR                                          */
/*==============================================================*/
create table UTILISATEUR
(
   ID_PERS              int(10) not null auto_increment,
   ID_ADRESSE           int(10),
   NOM                  varchar(25) not null,
   PRENOM               varchar(25),
   GENRE                varchar(1),
   DATENAIS             date,
   MAIL                 varchar(100),
   LOGIN                varchar(25) not null,
   MDP                  varchar(25) not null,
   primary key (ID_PERS)
)
auto_increment = 1;

alter table ADRESSE add constraint FK_AVOIR_ADRSS_ENT foreign key (ID_ENTREPRISE)
      references ENTREPRISE (ID_ENTREPRISE) on delete restrict on update restrict;

alter table CANDIDATER add constraint FK_CANDIDATER foreign key (ID_PERS)
      references ETUDIANT (ID_PERS) on delete restrict on update restrict;

alter table CANDIDATER add constraint FK_CANDIDATER2 foreign key (ID_CANDIDATURE)
      references CANDIDATURE (ID_CANDIDATURE) on delete restrict on update restrict;

alter table CANDIDATURE add constraint FK_LIER_PROJ_CAND foreign key (ID_PROJET)
      references PROJET (ID_PROJET) on delete restrict on update restrict;

alter table CANDIDATURE add constraint FK_LIER_STAGE_CAND foreign key (ID_STAGE)
      references STAGE (ID_STAGE) on delete restrict on update restrict;

alter table ENSEIGNER add constraint FK_ENSEIGNER foreign key (ID_MODULE)
      references MODULE (ID_MODULE) on delete restrict on update restrict;

alter table ENSEIGNER add constraint FK_ENSEIGNER2 foreign key (ID_PERS)
      references PROFESSEUR (ID_PERS) on delete restrict on update restrict;

alter table ETUDIANT add constraint FK_H_TILISATEUR3 foreign key (ID_PERS)
      references UTILISATEUR (ID_PERS) on delete restrict on update restrict;

alter table ETUDIANT add constraint FK_REALISER_PROJET foreign key (ID_PROJET)
      references PROJET (ID_PROJET) on delete restrict on update restrict;

alter table ETUDIANT add constraint FK_REALISER_STAGE foreign key (ID_STAGE)
      references STAGE (ID_STAGE) on delete restrict on update restrict;

alter table INSCRIRE add constraint FK_INSCRIRE foreign key (ID_MODULE)
      references MODULE (ID_MODULE) on delete restrict on update restrict;

alter table INSCRIRE add constraint FK_INSCRIRE2 foreign key (ID_PERS)
      references ETUDIANT (ID_PERS) on delete restrict on update restrict;

alter table PROFESSEUR add constraint FK_H_TILISATEUR foreign key (ID_PERS)
      references UTILISATEUR (ID_PERS) on delete restrict on update restrict;

alter table PROJET add constraint FK_PROPOSER_PROJET foreign key (ID_PERS)
      references PROFESSEUR (ID_PERS) on delete restrict on update restrict;

alter table RESPONSABLE add constraint FK_EMPLOYER foreign key (ID_ENTREPRISE)
      references ENTREPRISE (ID_ENTREPRISE) on delete restrict on update restrict;

alter table RESPONSABLE add constraint FK_ENCADRER2 foreign key (ID_STAGE)
      references STAGE (ID_STAGE) on delete restrict on update restrict;

alter table RESPONSABLE add constraint FK_H_TILISATEUR2 foreign key (ID_PERS)
      references UTILISATEUR (ID_PERS) on delete restrict on update restrict;

alter table STAGE add constraint FK_ENCADRER foreign key (ID_PERS)
      references RESPONSABLE (ID_PERS) on delete restrict on update restrict;

alter table STAGE add constraint FK_PROPOSER_STAGE foreign key (ID_ENTREPRISE)
      references ENTREPRISE (ID_ENTREPRISE) on delete restrict on update restrict;

alter table UTILISATEUR add constraint FK_AVOIR_ADRSS_UTIL foreign key (ID_ADRESSE)
      references ADRESSE (ID_ADRESSE) on delete restrict on update restrict;

