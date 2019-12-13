/*==============================================================*/
/* Nom de SGBD :  MySQL 5.0                                     */
/* Date de création :  29/11/2019 14:04:46                      */
/*==============================================================*/


drop table if exists ADRESSE;

drop table if exists CANDIDATURE;

drop table if exists ENCADRER;

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
   ID_ADRESSE           int not null,
   RUE                  varchar(100),
   CODE_POSTAL          numeric(5,0),
   VILLE                varchar(25),
   primary key (ID_ADRESSE)
);

/*==============================================================*/
/* Table : CANDIDATURE                                          */
/*==============================================================*/
create table CANDIDATURE
(
   ID_CANDIDATURE       int not null,
   DESCRIPTION          varchar(1024),
   primary key (ID_CANDIDATURE)
);

/*==============================================================*/
/* Table : ENCADRER                                             */
/*==============================================================*/
create table ENCADRER
(
   N_PERS               int not null,
   ID_MODULE            int not null,
   primary key (N_PERS, ID_MODULE)
);

/*==============================================================*/
/* Table : ENSEIGNER                                            */
/*==============================================================*/
create table ENSEIGNER
(
   ID_MODULE            int not null,
   N_PERS               int not null,
   primary key (ID_MODULE, N_PERS)
);

/*==============================================================*/
/* Table : ENTREPRISE                                           */
/*==============================================================*/
create table ENTREPRISE
(
   N_ENTREPRISE         varchar(1024) not null,
   ID_ADRESSE           int,
   N_PERS               int,
   NOM_E                varchar(100),
   primary key (N_ENTREPRISE)
);

/*==============================================================*/
/* Table : ETUDIANT                                             */
/*==============================================================*/
create table ETUDIANT
(
   N_PERS               int not null,
   N_ETUD               int not null,
   primary key (N_PERS)
);

/*==============================================================*/
/* Table : INSCRIRE                                             */
/*==============================================================*/
create table INSCRIRE
(
   ID_MODULE            int not null,
   N_PERS               int not null,
   NOTE                 decimal(4),
   primary key (ID_MODULE, N_PERS)
);

/*==============================================================*/
/* Table : MODULE                                               */
/*==============================================================*/
create table MODULE
(
   ID_MODULE            int not null,
   ID_CANDIDATURE       int,
   LIBMODULE            varchar(100),
   DATE_DEBUT           date,
   DATE_FIN             date,
   primary key (ID_MODULE)
);

/*==============================================================*/
/* Table : PROFESSEUR                                           */
/*==============================================================*/
create table PROFESSEUR
(
   N_PERS               int not null,
   N_PROF               int not null,
   primary key (N_PERS)
);

/*==============================================================*/
/* Table : PROJET                                               */
/*==============================================================*/
create table PROJET
(
   ID_MODULE            int not null,
   N_ENTREPRISE         varchar(1024),
   ID_CANDIDATURE       int,
   LIBMODULE            varchar(100),
   DATE_DEBUT           date,
   DATE_FIN             date,
   primary key (ID_MODULE)
);

/*==============================================================*/
/* Table : RESPONSABLE                                          */
/*==============================================================*/
create table RESPONSABLE
(
   N_PERS               int not null,
   primary key (N_PERS)
);

/*==============================================================*/
/* Table : STAGE                                                */
/*==============================================================*/
create table STAGE
(
   ID_MODULE            int not null,
   ID_CANDIDATURE       int,
   LIBMODULE            varchar(100),
   DATE_DEBUT           date,
   DATE_FIN             date,
   primary key (ID_MODULE)
);

/*==============================================================*/
/* Table : UTILISATEUR                                          */
/*==============================================================*/
create table UTILISATEUR
(
   N_PERS               int not null,
   ID_ADRESSE           int,
   NOM_U                varchar(100),
   PRENOM               varchar(25) not null,
   DATENAIS             date,
   MAIL                 varchar(100),
   LOGIN                varchar(25),
   MDP                  varchar(25),
   primary key (N_PERS)
);

alter table ENCADRER add constraint FK_ENCADRER foreign key (N_PERS)
      references RESPONSABLE (N_PERS) on delete restrict on update restrict;

alter table ENCADRER add constraint FK_ENCADRER2 foreign key (ID_MODULE)
      references STAGE (ID_MODULE) on delete restrict on update restrict;

alter table ENSEIGNER add constraint FK_ENSEIGNER foreign key (ID_MODULE)
      references MODULE (ID_MODULE) on delete restrict on update restrict;

alter table ENSEIGNER add constraint FK_ENSEIGNER2 foreign key (N_PERS)
      references PROFESSEUR (N_PERS) on delete restrict on update restrict;

alter table ENTREPRISE add constraint FK_AVOIR_2 foreign key (ID_ADRESSE)
      references ADRESSE (ID_ADRESSE) on delete restrict on update restrict;

alter table ENTREPRISE add constraint FK_TRAVAILLER foreign key (N_PERS)
      references RESPONSABLE (N_PERS) on delete restrict on update restrict;

alter table ETUDIANT add constraint FK_H3 foreign key (N_PERS)
      references UTILISATEUR (N_PERS) on delete restrict on update restrict;

alter table INSCRIRE add constraint FK_INSCRIRE foreign key (ID_MODULE)
      references MODULE (ID_MODULE) on delete restrict on update restrict;

alter table INSCRIRE add constraint FK_INSCRIRE2 foreign key (N_PERS)
      references ETUDIANT (N_PERS) on delete restrict on update restrict;

alter table MODULE add constraint FK_POSSEDER foreign key (ID_CANDIDATURE)
      references CANDIDATURE (ID_CANDIDATURE) on delete restrict on update restrict;

alter table PROFESSEUR add constraint FK_H1 foreign key (N_PERS)
      references UTILISATEUR (N_PERS) on delete restrict on update restrict;

alter table PROJET add constraint FK_H4 foreign key (ID_MODULE)
      references MODULE (ID_MODULE) on delete restrict on update restrict;

alter table PROJET add constraint FK_PROPOSER foreign key (N_ENTREPRISE)
      references ENTREPRISE (N_ENTREPRISE) on delete restrict on update restrict;

alter table RESPONSABLE add constraint FK_H2 foreign key (N_PERS)
      references UTILISATEUR (N_PERS) on delete restrict on update restrict;

alter table STAGE add constraint FK_H5 foreign key (ID_MODULE)
      references MODULE (ID_MODULE) on delete restrict on update restrict;

alter table UTILISATEUR add constraint FK_AVOIR foreign key (ID_ADRESSE)
      references ADRESSE (ID_ADRESSE) on delete restrict on update restrict;

