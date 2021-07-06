/*==============================================================*/
/* Nom de SGBD :  MySQL 5.0                                     */
/* Date de création :  16/06/2021 16:01:11                      */
/*==============================================================*/


drop table if exists ADMIN;

drop table if exists CATEGORY;

drop table if exists COMMENT;

drop table if exists "ORDER";

drop table if exists ORDER_PRODUCT;

drop table if exists PRODUCT;

drop table if exists USER;

/*==============================================================*/
/* Table : ADMIN                                                */
/*==============================================================*/
create table ADMIN
(
   ID_ADMIN             numeric(8,0) not null,
   NAME                 text,
   EMAIL                text,
   PASSWORD             text,
   primary key (ID_ADMIN)
);

/*==============================================================*/
/* Table : CATEGORY                                             */
/*==============================================================*/
create table CATEGORY
(
   ID_CATEGORY          numeric(8,0) not null,
   NAME                 text,
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
   NAME                 text,
   EMAIL                text,
   MESSAGE              text,
   primary key (ID_COMMENT)
);

/*==============================================================*/
/* Table : "ORDER"                                              */
/*==============================================================*/
create table "ORDER"
(
   ID_ORDER             numeric(8,0) not null,
   ID_USER              numeric(8,0),
   CODE                 int,
   TOTAL_PRICE          int,
   STATE                int,
   primary key (ID_ORDER)
);

/*==============================================================*/
/* Table : ORDER_PRODUCT                                        */
/*==============================================================*/
create table ORDER_PRODUCT
(
   ID_ORDER             numeric(8,0) not null,
   ID_PRODUCT           numeric(8,0) not null,
   primary key (ID_ORDER, ID_PRODUCT)
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
   NAME                 text,
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
   NAME                 text,
   ROLE                 text,
   PASSWORD             text,
   PHONE                numeric(8,0),
   primary key (ID_USER)
);

alter table COMMENT add constraint FK_ADD_EDIT_COMMENT foreign key (ID_USER)
      references USER (ID_USER) on delete restrict on update restrict;

alter table "ORDER" add constraint FK_ADD_ORDER foreign key (ID_USER)
      references USER (ID_USER) on delete restrict on update restrict;

alter table ORDER_PRODUCT add constraint FK_POSSESSE foreign key (ID_ORDER)
      references "ORDER" (ID_ORDER) on delete restrict on update restrict;

alter table ORDER_PRODUCT add constraint FK_POSSESSES foreign key (ID_PRODUCT)
      references PRODUCT (ID_PRODUCT) on delete restrict on update restrict;

alter table PRODUCT add constraint FK_BELONGS foreign key (ID_CATEGORY)
      references CATEGORY (ID_CATEGORY) on delete restrict on update restrict;

alter table PRODUCT add constraint FK_GET_COMMENT foreign key (ID_COMMENT)
      references COMMENT (ID_COMMENT) on delete restrict on update restrict;

alter table PRODUCT add constraint FK_MANAGE foreign key (ID_ADMIN)
      references ADMIN (ID_ADMIN) on delete restrict on update restrict;

