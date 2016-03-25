/*==============================================================*/
/* DBMS name:      ORACLE Version 10g                           */
/* Created on:     2015-1-18 12:37:00                           */
/*==============================================================*/


drop view V_AIM_CLIENT;

drop table T_CLIENT cascade constraints;

drop table T_CLIENT_INV cascade constraints;

drop table T_DATA_DICT cascade constraints;

drop table T_FISCAL_YEAR_PERIOD cascade constraints;

drop table T_FLOW_CARD_DETAIL cascade constraints;

drop table T_FLOW_CARD_MASTER cascade constraints;

drop table T_ITEMS cascade constraints;

drop table T_TABLE_ID cascade constraints;

drop table T_TEMI_CLIENT cascade constraints;

drop table T_USER cascade constraints;

/*==============================================================*/
/* Table: T_CLIENT                                              */
/*==============================================================*/
create table T_CLIENT  (
   ID                   number(10)                      not null,
   PID                  number(10),
   CLIENT_LEVEL_ID      char(3),
   NAME                 VARCHAR2(30)                    not null,
   CLIENT_ID            VARCHAR2(10),
   BANK_ACCT_NO         VARCHAR2(40),
   CONTACT_TEL          VARCHAR2(30),
   ADDRESS              VARCHAR2(30),
   ZIP_CODE             VARCHAR2(10),
   IS_LEAF              char(1)                        default 'Y' not null,
   IS_CLIENT            char(1)                        default 'Y' not null,
   constraint PK_T_CLIENT primary key (ID)
);

comment on column T_CLIENT.IS_LEAF is
'Y:Ҷ��
N����Ҷ��';

comment on column T_CLIENT.IS_CLIENT is
'Y:������
N:���Ƿ�����';

/*==============================================================*/
/* Table: T_CLIENT_INV                                          */
/*==============================================================*/
create table T_CLIENT_INV  (
   FISCAL_YEAR_PERIOD_ID number(10),
   CLIENT_ID            number(10),
   ITEM_NO              varchar2(10),
   INIT_QTY             number(12,2)                   default 0,
   IN_QTY               number(12,2)                   default 0,
   OUT_QTY              number(12,2)                   default 0
);

/*==============================================================*/
/* Table: T_DATA_DICT                                           */
/*==============================================================*/
create table T_DATA_DICT  (
   ID                   char(3)                         not null,
   NAME                 varchar2(30)                    not null,
   CATEGORY             char(1)                         not null,
   constraint PK_T_DATA_DICT primary key (ID)
);

comment on column T_DATA_DICT.CATEGORY is
'A�������̼���
B���ն˿ͻ�����
C���������
D�����ϼ�����λ';

/*==============================================================*/
/* Table: T_FISCAL_YEAR_PERIOD                                  */
/*==============================================================*/
create table T_FISCAL_YEAR_PERIOD  (
   ID                   number(10)                      not null,
   FISCAL_YEAR          number(4)                       not null,
   FISCAL_PERIOD        number(2)                       not null,
   BEGIN_DATE           date                            not null,
   END_DATE             date                            not null,
   PERIOD_STS           char(1)                         not null,
   constraint PK_T_FISCAL_YEAR_PERIOD primary key (ID)
);

comment on column T_FISCAL_YEAR_PERIOD.PERIOD_STS is
'Y������
N��������';

/*==============================================================*/
/* Table: T_FLOW_CARD_DETAIL                                    */
/*==============================================================*/
create table T_FLOW_CARD_DETAIL  (
   FLOW_CARD_NO         varchar2(20)                    not null,
   ITEM_NO              varchar2(10)                    not null,
   OPT_QTY              number(12,2)                   default 0,
   ADJUST_QTY           number(12,2)                   default 0,
   ADJUST_REASON        varchar2(40),
   ADJUST_FLAG          char(1),
   AIM_CLIENT_ID        number(10),
   constraint PK_T_FLOW_CARD_DETAIL primary key (FLOW_CARD_NO, ITEM_NO)
);

comment on column T_FLOW_CARD_DETAIL.ADJUST_FLAG is
'Y������
N��δ����';

/*==============================================================*/
/* Table: T_FLOW_CARD_MASTER                                    */
/*==============================================================*/
create table T_FLOW_CARD_MASTER  (
   FLOW_CARD_NO         varchar2(20)                    not null,
   OPT_TYPE             char(1),
   FISCAL_YEAR_PERIOD_ID number(10)                      not null,
   CLIENT_ID            number(10)                      not null,
   RECODER_ID           VARCHAR2(10)                    not null,
   OPT_DATE             date                            not null,
   VOU_STS              char(1)                        default 'N' not null,
   ADJUSTER_ID          VARCHAR2(10),
   ADJUST_DATE          date,
   SPOTTER_ID           VARCHAR2(10),
   SPOT_DATE            date,
   SPOT_DESC            varchar(40),
   CONFIRMER_ID         VARCHAR2(10),
   CONF_DATE            date,
   constraint PK_T_FLOW_CARD_MASTER primary key (FLOW_CARD_NO)
);

comment on column T_FLOW_CARD_MASTER.OPT_TYPE is
'A������
B���̵㵥��';

comment on column T_FLOW_CARD_MASTER.VOU_STS is
'S������
N��¼��

';

/*==============================================================*/
/* Table: T_ITEMS                                               */
/*==============================================================*/
create table T_ITEMS  (
   ITEM_NO              varchar2(10)                    not null,
   ITEM_CATEGORY_ID     char(3),
   ITEM_UNIT_ID         char(3),
   ITEM_NAME            varchar2(20)                    not null,
   SPEC                 varchar2(20),
   PATTERN              varchar2(20),
   constraint PK_T_ITEMS primary key (ITEM_NO)
);

/*==============================================================*/
/* Table: T_TABLE_ID                                            */
/*==============================================================*/
create table T_TABLE_ID  (
   TABLE_NAME           varchar2(30),
   VALUE                number(10)
);

/*==============================================================*/
/* Table: T_TEMI_CLIENT                                         */
/*==============================================================*/
create table T_TEMI_CLIENT  (
   ID                   number(10)                      not null,
   PID                  number(10),
   TEMI_CLIENT_LEVEL_ID char(3),
   NAME                 VARCHAR2(40)                    not null,
   TEMI_CLIENT_ID       VARCHAR2(10),
   CONTACT_TEL          VARCHAR2(30),
   CONTACTOR            VARCHAR2(20),
   ADDRESS              VARCHAR2(30),
   ZIP_CODE             VARCHAR2(10),
   IS_LEAF              char(1)                        default 'Y' not null,
   IS_TEMI_CLIENT       char(1)                        default 'Y' not null,
   constraint PK_T_TEMI_CLIENT primary key (ID)
);

comment on column T_TEMI_CLIENT.IS_LEAF is
'Y:Ҷ��
N����Ҷ��';

comment on column T_TEMI_CLIENT.IS_TEMI_CLIENT is
'Y:�ն�
N:�����ն�';

/*==============================================================*/
/* Table: T_USER                                                */
/*==============================================================*/
create table T_USER  (
   USER_ID              VARCHAR2(10)                    not null,
   USER_NAME            VARCHAR2(30)                    not null,
   PASSWORD             VARCHAR2(20)                    not null,
   CONTACT_TEL          VARCHAR2(30),
   EMAIL                VARCHAR2(30),
   CREATE_DATE          date,
   constraint PK_T_USER primary key (USER_ID)
);

/*==============================================================*/
/* View: V_AIM_CLIENT                                           */
/*==============================================================*/
create or replace view V_AIM_CLIENT as
select
   c.id,
   c.name,
   c.client_id as client_temi_id,
   c.client_level_id as client_temi_level_id,
   d.NAME as client_temi_level_name
from
   T_CLIENT c
   join T_DATA_DICT d on  c.client_level_id = d.id
where
   c.is_client = 'Y'
union
select
   t.id,
   t.name,
   t.TEMI_CLIENT_ID as client_temi_id,
   t.TEMI_CLIENT_LEVEL_ID as client_temi_level_id,
   d.NAME as client_temi_level_name
from
   T_TEMI_CLIENT t
   join T_DATA_DICT d on  t.TEMI_CLIENT_LEVEL_ID = d.id
where
   t.is_temi_client = 'Y'
with read only;
