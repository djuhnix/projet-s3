/*==============================================================*/
/* Nom de SGBD :  MySQL 5.0                                     */
/* Date de cr�ation :  04/01/2020 18:34:59                      */
/*==============================================================*/


drop table if exists adresse;

drop table if exists enseigner;

drop table if exists entreprise;

drop table if exists etudiant;

drop table if exists etudiant_candidater;

drop table if exists inscrire;

drop table if exists module;

drop table if exists professeur;

drop table if exists projet;

drop table if exists proposition;

drop table if exists responsable;

drop table if exists stage;

drop table if exists user_adresse;

drop table if exists utilisateur;

/*==============================================================*/
/* Table : adresse                                              */
/*==============================================================*/
create table adresse
(
   id_adresse           int(10) not null auto_increment  comment '',
   rue                  varchar(100)  comment '',
   code_postal          varchar(5)  comment '',
   ville                varchar(25)  comment '',
   primary key (id_adresse)
)
auto_increment = 1;

/*==============================================================*/
/* Table : utilisateur                                          */
/*==============================================================*/
create table utilisateur
(
   id_pers              int(10) not null auto_increment  comment '',
   firstname            varchar(25) not null  comment '',
   lastname             varchar(25)  comment '',
   genre                varchar(1)  comment '',
   datenaisssance       date  comment '',
   mail                 varchar(100)  comment '',
   login                varchar(25) not null  comment '',
   sha512pass           varchar(25) not null  comment '',
   primary key (id_pers)
)
auto_increment = 1;

/*==============================================================*/
/* Table : professeur                                           */
/*==============================================================*/
create table professeur
(
   id_pers              int(10) not null  comment '',
   num_prof             int not null  comment '',
   primary key (id_pers),
   constraint fk_professe_h_tilisat_utilisat foreign key (id_pers)
      references utilisateur (id_pers) on delete restrict on update restrict
)
auto_increment = 1;

/*==============================================================*/
/* Table : module                                               */
/*==============================================================*/
create table module
(
   id_module            varchar(5) not null  comment '',
   lib_module           varchar(100)  comment '',
   date_deb_module      date  comment '',
   date_fin_module      date  comment '',
   coefficient          decimal(4)  comment '',
   primary key (id_module)
)
auto_increment = 1;

/*==============================================================*/
/* Table : enseigner                                            */
/*==============================================================*/
create table enseigner
(
   id_module            varchar(5) not null  comment '',
   id_pers              int(10) not null  comment '',
   primary key (id_module, id_pers),
   constraint fk_enseigne_enseigner_professe foreign key (id_pers)
      references professeur (id_pers) on delete restrict on update restrict,
   constraint fk_enseigne_enseigner_module foreign key (id_module)
      references module (id_module) on delete restrict on update restrict
)
auto_increment = 1;

/*==============================================================*/
/* Table : entreprise                                           */
/*==============================================================*/
create table entreprise
(
   id_entreprise        int(10) not null auto_increment  comment '',
   id_adresse           int(10)  comment '',
   lib_entreprise       varchar(100)  comment '',
   primary key (id_entreprise),
   constraint fk_entrepri_ent_avoir_adresse foreign key (id_adresse)
      references adresse (id_adresse) on delete restrict on update restrict
)
auto_increment = 1;

/*==============================================================*/
/* Table : projet                                               */
/*==============================================================*/
create table projet
(
   id_projet            int(5) not null auto_increment  comment '',
   professeur_id_pers   int(10)  comment '',
   lib_projet           varchar(100) not null  comment '',
   date_deb_projet      date  comment '',
   date_fin_projet      date  comment '',
   primary key (id_projet),
   constraint fk_projet_proposer__professe foreign key (professeur_id_pers)
      references professeur (id_pers) on delete restrict on update restrict
)
auto_increment = 1;

/*==============================================================*/
/* Table : responsable                                          */
/*==============================================================*/
create table responsable
(
   id_pers              int(10) not null  comment '',
   id_entreprise        int(10)  comment '',
   primary key (id_pers),
   constraint fk_responsa_employer_entrepri foreign key (id_entreprise)
      references entreprise (id_entreprise) on delete restrict on update restrict,
   constraint fk_responsa_h_tilisat_utilisat foreign key (id_pers)
      references utilisateur (id_pers) on delete restrict on update restrict
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
   primary key (id_stage),
   constraint fk_stage_encadrer_responsa foreign key (responsable_id_pers)
      references responsable (id_pers) on delete restrict on update restrict,
   constraint fk_stage_stage_rea_entrepri foreign key (id_entreprise)
      references entreprise (id_entreprise) on delete restrict on update restrict,
   constraint fk_stage_prof_prop_professe foreign key (professeur_id_pers)
      references professeur (id_pers) on delete restrict on update restrict
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
   num_etud             int not null  comment '',
   primary key (id_pers),
   constraint fk_etudiant_realiser__projet foreign key (id_projet)
      references projet (id_projet) on delete restrict on update restrict,
   constraint fk_etudiant_realiser__stage foreign key (id_stage)
      references stage (id_stage) on delete restrict on update restrict,
   constraint fk_etudiant_h_tilisat_utilisat foreign key (id_pers)
      references utilisateur (id_pers) on delete restrict on update restrict
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
   primary key (id_proposition),
   constraint fk_proposit_lier_stag_stage foreign key (id_stage)
      references stage (id_stage) on delete restrict on update restrict,
   constraint fk_proposit_lier_proj_projet foreign key (id_projet)
      references projet (id_projet) on delete restrict on update restrict
)
auto_increment = 1;

/*==============================================================*/
/* Table : etudiant_candidater                                  */
/*==============================================================*/
create table etudiant_candidater
(
   etudiant_id_pers     int(10) not null  comment '',
   id_proposition       int(10) not null  comment '',
   date_cand            date  comment '',
   primary key (etudiant_id_pers, id_proposition),
   constraint fk_etudiant_etudiant__proposit foreign key (id_proposition)
      references proposition (id_proposition) on delete restrict on update restrict,
   constraint fk_etudiant_etudiant__etudiant foreign key (etudiant_id_pers)
      references etudiant (id_pers) on delete restrict on update restrict
)
auto_increment = 1;

/*==============================================================*/
/* Table : inscrire                                             */
/*==============================================================*/
create table inscrire
(
   id_module            varchar(5) not null  comment '',
   id_pers              int(10) not null  comment '',
   note_cc              decimal(4)  comment '',
   note_tp              decimal(4)  comment '',
   primary key (id_module, id_pers),
   constraint fk_inscrire_inscrire2_etudiant foreign key (id_pers)
      references etudiant (id_pers) on delete restrict on update restrict,
   constraint fk_inscrire_inscrire_module foreign key (id_module)
      references module (id_module) on delete restrict on update restrict
)
auto_increment = 1;

/*==============================================================*/
/* Table : user_adresse                                         */
/*==============================================================*/
create table user_adresse
(
   id_pers              int(10) not null  comment '',
   id_adresse           int(10) not null  comment '',
   primary key (id_pers, id_adresse),
   constraint fk_user_adr_user_adre_adresse foreign key (id_adresse)
      references adresse (id_adresse) on delete restrict on update restrict,
   constraint fk_user_adr_user_adre_utilisat foreign key (id_pers)
      references utilisateur (id_pers) on delete restrict on update restrict
)
auto_increment = 1;
