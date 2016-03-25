/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2016/2/19 16:03:15                           */
/*==============================================================*/


drop table if exists T_CLIENT;

drop table if exists T_CLIENT_INV;

drop table if exists T_DATA_DICT;

drop table if exists T_FISCAL_YEAR_PERIOD;

drop table if exists T_FLOW_CARD_DETAIL;

drop table if exists T_FLOW_CARD_MASTER;

drop table if exists T_ITEMS;

drop table if exists T_TABLE_ID;

drop table if exists T_TEMI_CLIENT;

drop table if exists T_USER;

/*==============================================================*/
/* Table: T_CLIENT                                              */
/*==============================================================*/
create table T_CLIENT
(
   ID                   numeric(10,0) not null,
   PID                  numeric(10,0),
   CLIENT_LEVEL_ID      char(3),
   NAME                 varchar(30) not null,
   CLIENT_ID            varchar(10),
   BANK_ACCT_NO         varchar(40),
   CONTACT_TEL          varchar(30),
   ADDRESS              varchar(30),
   ZIP_CODE             varchar(10),
   IS_LEAF              char(1) not null default 'Y' comment 'Y:叶子
            N：非叶子',
   IS_CLIENT            char(1) not null default 'Y' comment 'Y:分销商
            N:不是分销商',
   primary key (ID)
);

/*==============================================================*/
/* Table: T_CLIENT_INV                                          */
/*==============================================================*/
create table T_CLIENT_INV
(
   FISCAL_YEAR_PERIOD_ID numeric(10,0),
   CLIENT_ID            numeric(10,0),
   ITEM_NO              varchar(10),
   INIT_QTY             numeric(12,2) default 0,
   IN_QTY               numeric(12,2) default 0,
   OUT_QTY              numeric(12,2) default 0
);

/*==============================================================*/
/* Table: T_DATA_DICT                                           */
/*==============================================================*/
create table T_DATA_DICT
(
   ID                   char(3) not null,
   NAME                 varchar(30) not null,
   CATEGORY             char(1) not null comment 'A：分销商级别
            B：终端客户类型
            C：物料类别
            D：物料计量单位',
   primary key (ID)
);

/*==============================================================*/
/* Table: T_FISCAL_YEAR_PERIOD                                  */
/*==============================================================*/
create table T_FISCAL_YEAR_PERIOD
(
   ID                   numeric(10,0) not null,
   FISCAL_YEAR          numeric(4,0) not null,
   FISCAL_PERIOD        numeric(2,0) not null,
   BEGIN_DATE           datetime not null,
   END_DATE             datetime not null,
   PERIOD_STS           char(1) not null comment 'Y：可用
            N：不可用',
   primary key (ID)
);

/*==============================================================*/
/* Table: T_FLOW_CARD_DETAIL                                    */
/*==============================================================*/
create table T_FLOW_CARD_DETAIL
(
   FLOW_CARD_NO         varchar(20) not null,
   ITEM_NO              varchar(10) not null,
   OPT_QTY              numeric(12,2) default 0,
   ADJUST_QTY           numeric(12,2) default 0,
   ADJUST_REASON        varchar(40),
   ADJUST_FLAG          char(1) comment 'Y：调整
            N：未调整',
   AIM_CLIENT_ID        numeric(10,0),
   primary key (FLOW_CARD_NO, ITEM_NO)
);

/*==============================================================*/
/* Table: T_FLOW_CARD_MASTER                                    */
/*==============================================================*/
create table T_FLOW_CARD_MASTER
(
   FLOW_CARD_NO         varchar(20) not null,
   OPT_TYPE             char(1) comment 'A：流向单
            B：盘点单据',
   FISCAL_YEAR_PERIOD_ID numeric(10,0) not null,
   CLIENT_ID            numeric(10,0) not null,
   RECODER_ID           varchar(10) not null,
   OPT_DATE             datetime not null,
   VOU_STS              char(1) not null default 'N' comment 'S：送审
            N：录入
            
            ',
   ADJUSTER_ID          varchar(10),
   ADJUST_DATE          datetime,
   SPOTTER_ID           varchar(10),
   SPOT_DATE            datetime,
   SPOT_DESC            varchar(40),
   CONFIRMER_ID         varchar(10),
   CONF_DATE            datetime,
   primary key (FLOW_CARD_NO)
);

/*==============================================================*/
/* Table: T_ITEMS                                               */
/*==============================================================*/
create table T_ITEMS
(
   ITEM_NO              varchar(10) not null,
   ITEM_CATEGORY_ID     char(3),
   ITEM_UNIT_ID         char(3),
   ITEM_NAME            varchar(20) not null,
   SPEC                 varchar(20),
   PATTERN              varchar(20),
   primary key (ITEM_NO)
);

/*==============================================================*/
/* Table: T_TABLE_ID                                            */
/*==============================================================*/
create table T_TABLE_ID
(
   TABLE_NAME           varchar(30),
   VALUE                numeric(10,0)
);

/*==============================================================*/
/* Table: T_TEMI_CLIENT                                         */
/*==============================================================*/
create table T_TEMI_CLIENT
(
   ID                   numeric(10,0) not null,
   PID                  numeric(10,0),
   TEMI_CLIENT_LEVEL_ID char(3),
   NAME                 varchar(40) not null,
   TEMI_CLIENT_ID       varchar(10),
   CONTACT_TEL          varchar(30),
   CONTACTOR            varchar(20),
   ADDRESS              varchar(30),
   ZIP_CODE             varchar(10),
   IS_LEAF              char(1) not null default 'Y' comment 'Y:叶子
            N：非叶子',
   IS_TEMI_CLIENT       char(1) not null default 'Y' comment 'Y:终端
            N:不是终端',
   primary key (ID)
);

/*==============================================================*/
/* Table: T_USER                                                */
/*==============================================================*/
create table T_USER
(
   USER_ID              varchar(10) not null,
   USER_NAME            varchar(30) not null,
   PASSWORD             varchar(20) not null,
   CONTACT_TEL          varchar(30),
   EMAIL                varchar(30),
   CREATE_DATE          datetime,
   primary key (USER_ID)
);

