/*==============================================================*/
/* Nom de SGBD :  MySQL 5.0                                     */
/* Date de création :  16/06/2021 14:30:52                      */
/*==============================================================*/


drop table if exists ADMIN;

drop table if exists CATEGORY;

drop table if exists COMMENT;

drop table if exists "ORDER";

drop table if exists PRODUCT;

drop table if exists USER;

/*==============================================================*/
/* Table : ADMIN                                                */
/*==============================================================*/
create table ADMIN
(
   ID_ADMIN             numeric(8,0) not null,
   NAME                 longtext,
   EMAIL                longtext,
   PASSWORD             longtext,
   primary key (ID_ADMIN)
);

/*==============================================================*/
/* Table : CATEGORY                                             */
/*==============================================================*/
create table CATEGORY
(
   ID_CATEGORY          numeric(8,0) not null,
   NAME                 longtext,
   STATE                int,
   primary key (ID_CATEGORY)
);

/*==============================================================*/
/* Table : COMMENT                                              */
/*==============================================================*/
create table COMMENT
(
   ID_COMMENT           numeric(8,0) not null,
   ID_USER              numeric(8,0),
   NAME                 longtext,
   EMAIL                longtext,
   MESSAGE              longtext,
   primary key (ID_COMMENT)
);

/*==============================================================*/
/* Table : "ORDER"                                              */
/*==============================================================*/
create table "ORDER"
(
   ID_ORDER             numeric(8,0) not null,
   ID_USER              numeric(8,0),
   ID_PRODUCT           numeric(8,0),
   CODE                 int,
   TOTAL_PRICE          int,
   STATE                int,
   primary key (ID_ORDER)
);

/*==============================================================*/
/* Table : PRODUCT                                              */
/*==============================================================*/
create table PRODUCT
(
   ID_PRODUCT           numeric(8,0) not null,
   ID_COMMENT           numeric(8,0),
   ID_CATEGORY          numeric(8,0),
   ID_ADMIN             numeric(8,0),
   NAME                 longtext,
   QTE                  numeric(8,0),
   PRICE                numeric(8,0),
   primary key (ID_PRODUCT)
);

/*==============================================================*/
/* Table : USER                                                 */
/*==============================================================*/
create table USER
(
   ID_USER              numeric(8,0) not null,
   NAME                 longtext,
   ROLE                 longtext,
   PASSWORD             longtext,
   PHONE                numeric(8,0),
   primary key (ID_USER)
);

alter table COMMENT add constraint FK_ADD_EDIT_COMMENT foreign key (ID_USER)
      references USER (ID_USER) on delete restrict on update restrict;

alter table "ORDER" add constraint FK_ADD_ORDER foreign key (ID_USER)
      references USER (ID_USER) on delete restrict on update restrict;

alter table "ORDER" add constraint FK_POSSESSE foreign key (ID_PRODUCT)
      references PRODUCT (ID_PRODUCT) on delete restrict on update restrict;

alter table PRODUCT add constraint FK_BELONGS foreign key (ID_CATEGORY)
      references CATEGORY (ID_CATEGORY) on delete restrict on update restrict;

alter table PRODUCT add constraint FK_GET_COMMENT foreign key (ID_COMMENT)
      references COMMENT (ID_COMMENT) on delete restrict on update restrict;

alter table PRODUCT add constraint FK_MANAGE foreign key (ID_ADMIN)
      references ADMIN (ID_ADMIN) on delete restrict on update restrict;

