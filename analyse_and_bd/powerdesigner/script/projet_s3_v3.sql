/*==============================================================*/
/* Nom de SGBD :  MySQL 5.0                                     */
/* Date de cr�ation :  03/01/2020 01:50:34                      */
/*==============================================================*/

/*
alter table adresse
   drop foreign key fk_adresse_avoir_adr_entrepri;

alter table candidater
   drop foreign key fk_candidat_candidate_etudiant;

alter table candidater
   drop foreign key fk_candidat_candidate_proposit;

alter table enseigner
   drop foreign key fk_enseigne_enseigner_module;

alter table enseigner
   drop foreign key fk_enseigne_enseigner_professe;

alter table etudiant
   drop foreign key fk_etudiant_h_tilisat_utilisat;

alter table etudiant
   drop foreign key fk_etudiant_realiser__projet;

alter table etudiant
   drop foreign key fk_etudiant_realiser__stage;

alter table inscrire
   drop foreign key fk_inscrire_inscrire_module;

alter table inscrire
   drop foreign key fk_inscrire_inscrire2_etudiant;

alter table professeur
   drop foreign key fk_professe_h_tilisat_utilisat;

alter table projet
   drop foreign key fk_projet_proposer__professe;

alter table proposition
   drop foreign key fk_proposit_lier_proj_projet;

alter table proposition
   drop foreign key fk_proposit_lier_stag_stage;

alter table responsable
   drop foreign key fk_responsa_employer_entrepri;

alter table responsable
   drop foreign key fk_responsa_encadrer2_stage;

alter table responsable
   drop foreign key fk_responsa_h_tilisat_utilisat;

alter table stage
   drop foreign key fk_stage_encadrer_responsa;

alter table stage
   drop foreign key fk_stage_proposer__entrepri;

alter table stage
   drop foreign key fk_stage_stage_pro_professe;

alter table utilisateur
   drop foreign key fk_utilisat_avoir_adr_adresse;


alter table adresse
   drop foreign key fk_adresse_avoir_adr_entrepri;

   alter table candidater
      drop foreign key fk_candidat_candidate_proposit;

   alter table candidater
      drop foreign key fk_candidat_candidate_etudiant;

   alter table enseigner
      drop foreign key fk_enseigne_enseigner_module;

   alter table enseigner
      drop foreign key fk_enseigne_enseigner_professe;

   alter table etudiant
      drop foreign key fk_etudiant_realiser__projet;

   alter table etudiant
      drop foreign key fk_etudiant_realiser__stage;

   alter table etudiant
      drop foreign key fk_etudiant_h_tilisat_utilisat;

   alter table inscrire
      drop foreign key fk_inscrire_inscrire_module;

   alter table inscrire
      drop foreign key fk_inscrire_inscrire2_etudiant;

   alter table professeur
      drop foreign key fk_professe_h_tilisat_utilisat;

   alter table projet
      drop foreign key fk_projet_proposer__professe;

   alter table proposition
      drop foreign key fk_proposit_lier_stag_stage;

   alter table proposition
      drop foreign key fk_proposit_lier_proj_projet;

   alter table responsable
      drop foreign key fk_responsa_employer_entrepri;

   alter table responsable
      drop foreign key fk_responsa_encadrer2_stage;

   alter table responsable
      drop foreign key fk_responsa_h_tilisat_utilisat;

   alter table stage
      drop foreign key fk_stage_encadrer_responsa;

   alter table stage
      drop foreign key fk_stage_proposer__entrepri;

   alter table stage
      drop foreign key fk_stage_stage_pro_professe;

   alter table utilisateur
      drop foreign key fk_utilisat_avoir_adr_adresse;

*/
drop table if exists adresse;

drop table if exists candidater;

drop table if exists enseigner;

drop table if exists entreprise;

drop table if exists etudiant;

drop table if exists inscrire;

drop table if exists module;

drop table if exists professeur;

drop table if exists projet;

drop table if exists proposition;

drop table if exists responsable;

drop table if exists stage;

drop table if exists utilisateur;

/*==============================================================*/
/* Table : adresse                                              */
/*==============================================================*/
create table adresse
(
   id_adresse           int(10) not null auto_increment  comment '',
   id_entreprise        int(10)  comment '',
   rue                  varchar(100)  comment '',
   code_postal          varchar(5)  comment '',
   ville                varchar(25)  comment '',
   primary key (id_adresse)
)
auto_increment = 1;

/*==============================================================*/
/* Table : candidater                                           */
/*==============================================================*/
create table candidater
(
   etudiant_id_pers     int(10) not null  comment '',
   id_proposition       int(10) not null  comment '',
   date_cand            date  comment '',
   primary key (etudiant_id_pers, id_proposition)
)
auto_increment = 1;

/*==============================================================*/
/* Table : enseigner                                            */
/*==============================================================*/
create table enseigner
(
   id_module            varchar(5) not null  comment '',
   professeur_id_pers   int(10) not null  comment '',
   primary key (id_module, professeur_id_pers)
)
auto_increment = 1;

/*==============================================================*/
/* Table : entreprise                                           */
/*==============================================================*/
create table entreprise
(
   id_entreprise        int(10) not null auto_increment  comment '',
   lib_entreprise       varchar(100)  comment '',
   primary key (id_entreprise)
)
auto_increment = 1;

/*==============================================================*/
/* Table : etudiant                                             */
/*==============================================================*/
create table etudiant
(
   id_pers              int(10) not null  comment '',
   id_projet            int(5)  comment '',
   id_stage             int(5)  comment '',
   n_etud               int not null  comment '',
   primary key (id_pers)
)
auto_increment = 1;

/*==============================================================*/
/* Table : inscrire                                             */
/*==============================================================*/
create table inscrire
(
   id_module            varchar(5) not null  comment '',
   etudiant_id_pers     int(10) not null  comment '',
   note_cc              decimal(4)  comment '',
   note_tp              decimal(4)  comment '',
   primary key (id_module, etudiant_id_pers)
)
auto_increment = 1;

/*==============================================================*/
/* Table : module                                               */
/*==============================================================*/
create table module
(
   id_module            varchar(5) not null  comment '',
   lib_module           varchar(100) not null  comment '',
   code                 varchar(25)  comment '',
   nature               varchar(25)  comment '',
   primary key (id_module)
)
auto_increment = 1;

/*==============================================================*/
/* Table : professeur                                           */
/*==============================================================*/
create table professeur
(
   id_pers              int(10) not null  comment '',
   n_prof               int not null  comment '',
   primary key (id_pers)
)
auto_increment = 1;

/*==============================================================*/
/* Table : projet                                               */
/*==============================================================*/
create table projet
(
   id_projet            int(5) not null auto_increment  comment '',
   id_pers              int(10)  comment '',
   lib_projet           varchar(100) not null  comment '',
   date_deb_projet      date  comment '',
   date_fin_projet      date  comment '',
   primary key (id_projet)
)
auto_increment = 1;

/*==============================================================*/
/* Table : proposition                                          */
/*==============================================================*/
create table proposition
(
   id_proposition       int(10) not null auto_increment  comment '',
   id_stage             int(5)  comment '',
   id_projet            int(5)  comment '',
   description          varchar(500)  comment '',
   acceptee             bool  comment '',
   primary key (id_proposition)
)
auto_increment = 1;

/*==============================================================*/
/* Table : responsable                                          */
/*==============================================================*/
create table responsable
(
   responsable_id_pers  int(10) not null  comment '',
   id_entreprise        int(10)  comment '',
   id_stage             int(5)  comment '',
   primary key (responsable_id_pers)
)
auto_increment = 1;

/*==============================================================*/
/* Table : stage                                                */
/*==============================================================*/
create table stage
(
   id_stage             int(5) not null auto_increment  comment '',
   id_entreprise        int(10)  comment '',
   responsable_id_pers  int(10)  comment '',
   professeur_id_pers   int(10)  comment '',
   lib_stage            varchar(100)  comment '',
   date_deb_stage       date not null  comment '',
   date_fin_stage       date not null  comment '',
   primary key (id_stage)
)
auto_increment = 1;

/*==============================================================*/
/* Table : utilisateur                                          */
/*==============================================================*/
create table utilisateur
(
   id_pers              int(10) not null auto_increment  comment '',
   id_adresse           int(10)  comment '',
   firstname            varchar(25) not null  comment '',
   lastname             varchar(25)  comment '',
   genre                varchar(1)  comment '',
   datenaissance        date  comment '',
   mail                 varchar(100)  comment '',
   login                varchar(25) not null  comment '',
   sha512pass           varchar(25) not null  comment '',
   phone                varchar(25)  comment '',
   primary key (id_pers)
)
auto_increment = 1;

alter table adresse add constraint fk_adresse_avoir_adr_entrepri foreign key (id_entreprise)
      references entreprise (id_entreprise) on delete restrict on update restrict;

alter table candidater add constraint fk_candidat_candidate_etudiant foreign key (etudiant_id_pers)
      references etudiant (id_pers) on delete restrict on update restrict;

alter table candidater add constraint fk_candidat_candidate_proposit foreign key (id_proposition)
      references proposition (id_proposition) on delete restrict on update restrict;

alter table enseigner add constraint fk_enseigne_enseigner_module foreign key (id_module)
      references module (id_module) on delete restrict on update restrict;

alter table enseigner add constraint fk_enseigne_enseigner_professe foreign key (professeur_id_pers)
      references professeur (id_pers) on delete restrict on update restrict;

alter table etudiant add constraint fk_etudiant_h_tilisat_utilisat foreign key (id_pers)
      references utilisateur (id_pers) on delete restrict on update restrict;

alter table etudiant add constraint fk_etudiant_realiser__projet foreign key (id_projet)
      references projet (id_projet) on delete restrict on update restrict;

alter table etudiant add constraint fk_etudiant_realiser__stage foreign key (id_stage)
      references stage (id_stage) on delete restrict on update restrict;

alter table inscrire add constraint fk_inscrire_inscrire_module foreign key (id_module)
      references module (id_module) on delete restrict on update restrict;

alter table inscrire add constraint fk_inscrire_inscrire2_etudiant foreign key (etudiant_id_pers)
      references etudiant (id_pers) on delete restrict on update restrict;

alter table professeur add constraint fk_professe_h_tilisat_utilisat foreign key (id_pers)
      references utilisateur (id_pers) on delete restrict on update restrict;

alter table projet add constraint fk_projet_proposer__professe foreign key (id_pers)
      references professeur (id_pers) on delete restrict on update restrict;

alter table proposition add constraint fk_proposit_lier_proj_projet foreign key (id_projet)
      references projet (id_projet) on delete restrict on update restrict;

alter table proposition add constraint fk_proposit_lier_stag_stage foreign key (id_stage)
      references stage (id_stage) on delete restrict on update restrict;

alter table responsable add constraint fk_responsa_employer_entrepri foreign key (id_entreprise)
      references entreprise (id_entreprise) on delete restrict on update restrict;

alter table responsable add constraint fk_responsa_encadrer2_stage foreign key (id_stage)
      references stage (id_stage) on delete restrict on update restrict;

alter table responsable add constraint fk_responsa_h_tilisat_utilisat foreign key (responsable_id_pers)
      references utilisateur (id_pers) on delete restrict on update restrict;

alter table stage add constraint fk_stage_encadrer_responsa foreign key (responsable_id_pers)
      references responsable (responsable_id_pers) on delete restrict on update restrict;

alter table stage add constraint fk_stage_proposer__entrepri foreign key (id_entreprise)
      references entreprise (id_entreprise) on delete restrict on update restrict;

alter table stage add constraint fk_stage_stage_pro_professe foreign key (professeur_id_pers)
      references professeur (id_pers) on delete restrict on update restrict;

alter table utilisateur add constraint fk_utilisat_avoir_adr_adresse foreign key (id_adresse)
      references adresse (id_adresse) on delete restrict on update restrict;
