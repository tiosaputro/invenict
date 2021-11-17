--------------------------------------------------------
--  File created - Wednesday-November-17-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence CASH_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "INVENICT"."CASH_SEQUENCE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 141 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence DIV_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "INVENICT"."DIV_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1187 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ICTDTL_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "INVENICT"."ICTDTL_SEQUENCE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 241 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ICT_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "INVENICT"."ICT_SEQUENCE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 281 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MIGRATIONS_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "INVENICT"."MIGRATIONS_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MNG_MENUS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "INVENICT"."MNG_MENUS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 101 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MNG_ROLES_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "INVENICT"."MNG_ROLES_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 73 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MNG_ROLE_MENUS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "INVENICT"."MNG_ROLE_MENUS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 299 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MNG_USERS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "INVENICT"."MNG_USERS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1530 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MNG_USR_ROLES_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "INVENICT"."MNG_USR_ROLES_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 121 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MODULES_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "INVENICT"."MODULES_SEQUENCE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MUTASI_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "INVENICT"."MUTASI_SEQUENCE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 141 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PEGAWAIS_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "INVENICT"."PEGAWAIS_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PERSONAL_ACCESS_TOKENS_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "INVENICT"."PERSONAL_ACCESS_TOKENS_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 301 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PUCRCHASE_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "INVENICT"."PUCRCHASE_SEQUENCE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 121 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PURCHASEDTL_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "INVENICT"."PURCHASEDTL_SEQUENCE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 161 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table CA_MST
--------------------------------------------------------

  CREATE TABLE "INVENICT"."CA_MST" 
   (	"CA_ID" NUMBER(20,0), 
	"IREQ_ID" NUMBER(20,0), 
	"CA_PIC_NAME" VARCHAR2(30 BYTE), 
	"CA_SUBMIT_DATE" DATE, 
	"CA_RECV_CASH_DATE" DATE, 
	"CA_PURCHASE_DATE" DATE, 
	"CA_RECV_ITEM_DATE" DATE, 
	"CA_HAND_OVER_DATE" DATE, 
	"CREATION_DATE" DATE, 
	"CREATED_BY" VARCHAR2(30 BYTE), 
	"LAST_UPDATE_DATE" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(30 BYTE), 
	"PROGRAM_NAME" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table DIVISI_REFS
--------------------------------------------------------

  CREATE TABLE "INVENICT"."DIVISI_REFS" 
   (	"DIV_ID" NUMBER(20,0), 
	"DIV_CODE" VARCHAR2(10 BYTE), 
	"DIV_NAME" VARCHAR2(100 BYTE), 
	"DIV_VERIFICATOR" VARCHAR2(20 BYTE), 
	"DIV_ACTIVE" VARCHAR2(1 BYTE), 
	"CREATION_DATE" DATE, 
	"CREATED_BY" VARCHAR2(30 BYTE), 
	"LAST_UPDATE_DATE" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(30 BYTE), 
	"PROGRAM_NAME" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table INVENT_MST
--------------------------------------------------------

  CREATE TABLE "INVENICT"."INVENT_MST" 
   (	"INVENT_CODE" VARCHAR2(20 BYTE), 
	"INVENT_DESC" VARCHAR2(100 BYTE), 
	"INVENT_BRAND" VARCHAR2(50 BYTE), 
	"INVENT_TYPE" VARCHAR2(20 BYTE), 
	"INVENT_SN" VARCHAR2(20 BYTE), 
	"INVENT_TGL_PEROLEHAN" DATE, 
	"INVENT_LAMA_GARANSI" NUMBER(2,0), 
	"INVENT_KONDISI" VARCHAR2(1 BYTE), 
	"CREATION_DATE" DATE, 
	"CREATED_BY" VARCHAR2(30 BYTE), 
	"LAST_UPDATE_DATE" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(30 BYTE), 
	"PROGRAM_NAME" VARCHAR2(30 BYTE), 
	"INVENT_BARCODE" VARCHAR2(20 BYTE), 
	"INVENT_LOKASI_UPDATE" VARCHAR2(200 BYTE), 
	"INVENT_PENGGUNA_UPDATE" VARCHAR2(50 BYTE), 
	"INVENT_LOKASI_PREVIOUS" VARCHAR2(200 BYTE), 
	"INVENT_PENGGUNA_PREVIOUS" VARCHAR2(50 BYTE), 
	"INVENT_BU" VARCHAR2(2 BYTE), 
	"INVENT_PHOTO" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table INVENT_MUTASI
--------------------------------------------------------

  CREATE TABLE "INVENICT"."INVENT_MUTASI" 
   (	"IMUTASI_ID" NUMBER(20,0), 
	"INVENT_CODE" VARCHAR2(20 BYTE), 
	"IMUTASI_TGL_DARI" DATE, 
	"IMUTASI_TGL_SD" DATE, 
	"IMUTASI_LOKASI" VARCHAR2(200 BYTE), 
	"IMUTASI_PENGGUNA" VARCHAR2(50 BYTE), 
	"IMUTASI_KETERANGAN" VARCHAR2(500 BYTE), 
	"CREATION_DATE" DATE, 
	"CREATED_BY" VARCHAR2(30 BYTE), 
	"LAST_UPDATE_DATE" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(30 BYTE), 
	"PROGRAM_NAME" VARCHAR2(30 BYTE), 
	"IMUTASI_BU" VARCHAR2(2 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table IREQ_DTL
--------------------------------------------------------

  CREATE TABLE "INVENICT"."IREQ_DTL" 
   (	"IREQD_ID" NUMBER, 
	"IREQ_ID" NUMBER, 
	"IREQ_TYPE" VARCHAR2(1 BYTE), 
	"INVENT_CODE" VARCHAR2(20 BYTE), 
	"IREQ_DESC" VARCHAR2(200 BYTE), 
	"IREQ_QTY" NUMBER(5,0), 
	"IREQ_STATUS" VARCHAR2(1 BYTE), 
	"IREQ_REASON" VARCHAR2(200 BYTE), 
	"IREQ_REMARK" VARCHAR2(500 BYTE), 
	"CREATION_DATE" DATE, 
	"CREATED_BY" VARCHAR2(30 BYTE), 
	"LAST_UPDATE_DATE" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(30 BYTE), 
	"PROGRAM_NAME" VARCHAR2(50 BYTE), 
	"IREQ_ASSIGNED_TO" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table IREQ_MST
--------------------------------------------------------

  CREATE TABLE "INVENICT"."IREQ_MST" 
   (	"IREQ_ID" NUMBER(20,0), 
	"IREQ_NO" VARCHAR2(20 BYTE), 
	"IREQ_DATE" DATE, 
	"IREQ_TYPE" VARCHAR2(1 BYTE), 
	"IREQ_REQUESTOR" VARCHAR2(50 BYTE), 
	"IREQ_BU" VARCHAR2(2 BYTE), 
	"IREQ_APPROVER1" VARCHAR2(50 BYTE), 
	"IREQ_VERIFICATOR" VARCHAR2(50 BYTE), 
	"IREQ_APPROVER2" VARCHAR2(50 BYTE), 
	"IREQ_STATUS" VARCHAR2(1 BYTE), 
	"IREQ_REASON" VARCHAR2(200 BYTE), 
	"IREC_REMARK" VARCHAR2(500 BYTE), 
	"CREATION_DATE" DATE, 
	"CREATED_BY" VARCHAR2(30 BYTE), 
	"LAST_UPDATE_DATE" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(30 BYTE), 
	"PROGRAM_NAME" VARCHAR2(50 BYTE), 
	"IREQ_ASSIGNED_TO" VARCHAR2(50 BYTE), 
	"IREQ_USER" VARCHAR2(50 BYTE), 
	"IREQ_DIVISI_REQUESTOR" NUMBER(20,0), 
	"IREQ_DIVISI_USER" NUMBER(20,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table LOOKUP_REFS
--------------------------------------------------------

  CREATE TABLE "INVENICT"."LOOKUP_REFS" 
   (	"LOOKUP_TYPE" VARCHAR2(30 BYTE), 
	"LOOKUP_CODE" VARCHAR2(20 BYTE), 
	"LOOKUP_DESC" VARCHAR2(200 BYTE), 
	"LOOKUP_STATUS" VARCHAR2(1 BYTE), 
	"CREATION_DATE" DATE, 
	"CREATED_BY" VARCHAR2(30 BYTE), 
	"LAST_UPDATE_DATE" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(30 BYTE), 
	"PROGRAM_NAME" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MENU
--------------------------------------------------------

  CREATE TABLE "INVENICT"."MENU" 
   (	"ID" NUMBER, 
	"M_NAME" VARCHAR2(100 BYTE), 
	"M_DESC" VARCHAR2(4000 BYTE), 
	"M_DISPLAY" VARCHAR2(100 BYTE), 
	"PARENT_ID" NUMBER, 
	"M_TYPE" VARCHAR2(6 BYTE) DEFAULT 'leaf', 
	"ISAJAX" CHAR(1 BYTE) DEFAULT 'N', 
	"ISACTIVE" CHAR(1 BYTE) DEFAULT 'Y', 
	"CSS" CHAR(10 BYTE), 
	"CONTROLLER" VARCHAR2(20 BYTE), 
	"ACTION" VARCHAR2(20 BYTE), 
	"SORTORDER" NUMBER, 
	"CREATION_DATE" DATE, 
	"CREATED_BY" VARCHAR2(30 BYTE), 
	"LAST_UPDATE_DATE" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(30 BYTE), 
	"PROGRAM_NAME" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MIGRATIONS
--------------------------------------------------------

  CREATE TABLE "INVENICT"."MIGRATIONS" 
   (	"ID" NUMBER(10,0), 
	"MIGRATION" VARCHAR2(255 BYTE), 
	"BATCH" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MNG_HELPS
--------------------------------------------------------

  CREATE TABLE "INVENICT"."MNG_HELPS" 
   (	"HLP_ID" NUMBER(20,0), 
	"PERTANYAAN" VARCHAR2(255 CHAR), 
	"JAWABAN" VARCHAR2(2000 BYTE), 
	"CREATION_DATE" DATE, 
	"CREATED_BY" VARCHAR2(30 CHAR), 
	"LAST_UPDATE_DATE" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(30 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MNG_MENUS
--------------------------------------------------------

  CREATE TABLE "INVENICT"."MNG_MENUS" 
   (	"MENU_ID" NUMBER(20,0), 
	"MOD_ID" VARCHAR2(4 BYTE), 
	"MNG_MENU_ID" NUMBER(20,0), 
	"MENU_NAME" VARCHAR2(100 BYTE), 
	"MENU_DESC" VARCHAR2(4000 BYTE), 
	"MENU_DISPLAY" VARCHAR2(100 BYTE), 
	"MENU_TYPE" VARCHAR2(3 BYTE), 
	"MENU_STAT" VARCHAR2(1 BYTE), 
	"CREATION_DATE" DATE, 
	"CREATED_BY" VARCHAR2(30 BYTE), 
	"LAST_UPDATE_DATE" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(30 BYTE), 
	"PROGRAM_NAME" VARCHAR2(30 BYTE), 
	"CONTROLLER" VARCHAR2(25 BYTE), 
	"ACTION" VARCHAR2(20 BYTE), 
	"PARENT_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MNG_MODULES
--------------------------------------------------------

  CREATE TABLE "INVENICT"."MNG_MODULES" 
   (	"MOD_ID" VARCHAR2(4 BYTE), 
	"MOD_NAME" VARCHAR2(100 BYTE), 
	"MOD_DESC" VARCHAR2(4000 BYTE), 
	"MOD_STAT" VARCHAR2(1 BYTE), 
	"CREATED_BY" VARCHAR2(30 BYTE), 
	"LAST_UPDATE_DATE" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(30 BYTE), 
	"PROGRAM_NAME" VARCHAR2(30 BYTE), 
	"CREATION_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MNG_ROLES
--------------------------------------------------------

  CREATE TABLE "INVENICT"."MNG_ROLES" 
   (	"ROL_ID" NUMBER, 
	"ROL_NAME" VARCHAR2(100 BYTE), 
	"ROL_DESC" VARCHAR2(4000 BYTE), 
	"ROL_STAT" VARCHAR2(1 BYTE), 
	"CREATED_BY" VARCHAR2(30 BYTE), 
	"LAST_UPDATE_DATE" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(30 BYTE), 
	"PROGRAM_NAME" VARCHAR2(30 BYTE), 
	"CREATION_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MNG_ROLE_MENUS
--------------------------------------------------------

  CREATE TABLE "INVENICT"."MNG_ROLE_MENUS" 
   (	"ROLM_ID" NUMBER(20,0), 
	"MENU_ID" NUMBER(20,0), 
	"ROL_ID" NUMBER, 
	"ROLM_PRIV" VARCHAR2(5 BYTE), 
	"ROLM_STAT" VARCHAR2(1 BYTE), 
	"CREATION_DATE" DATE, 
	"CREATED_BY" VARCHAR2(30 BYTE), 
	"LAST_UPDATE_DATE" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(30 BYTE), 
	"PROGRAM_NAME" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MNG_USERS
--------------------------------------------------------

  CREATE TABLE "INVENICT"."MNG_USERS" 
   (	"USR_ID" NUMBER(20,0), 
	"UREG_NUM" NUMBER(30,0), 
	"KDSATKER" VARCHAR2(10 BYTE), 
	"KDDEPT" VARCHAR2(10 BYTE), 
	"KDUNIT" VARCHAR2(10 BYTE), 
	"USR_NAME" VARCHAR2(100 BYTE), 
	"USR_FULLNAME" VARCHAR2(100 BYTE), 
	"USR_PASSWD" VARCHAR2(100 BYTE), 
	"USR_ALAMAT" VARCHAR2(200 BYTE), 
	"USR_NIP" VARCHAR2(50 BYTE), 
	"USR_EMAIL" VARCHAR2(100 BYTE), 
	"USR_NPWP" VARCHAR2(50 BYTE), 
	"USR_JABATAN" VARCHAR2(50 BYTE), 
	"USR_NM_PERUSH" VARCHAR2(100 BYTE), 
	"USR_STAT" VARCHAR2(1 BYTE), 
	"CREATION_DATE" DATE, 
	"CREATED_BY" VARCHAR2(30 BYTE), 
	"LAST_UPDATE_DATE" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(30 BYTE), 
	"PROGRAM_NAME" VARCHAR2(30 BYTE), 
	"KDDEPT_UNIT" VARCHAR2(10 BYTE), 
	"WABA_ID" NUMBER, 
	"USR_FOTO" VARCHAR2(200 BYTE), 
	"DIV_ID" NUMBER(20,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MNG_USR_DEPT
--------------------------------------------------------

  CREATE TABLE "INVENICT"."MNG_USR_DEPT" 
   (	"USR_ID" NUMBER(20,0), 
	"KDDEPT" VARCHAR2(10 BYTE), 
	"CREATION_DATE" DATE, 
	"CREATED_BY" VARCHAR2(30 BYTE), 
	"LAST_UPDATE_DATE" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(30 BYTE), 
	"PROGRAM_NAME" VARCHAR2(30 BYTE), 
	"KDUNIT" VARCHAR2(10 BYTE), 
	"KDSATKER" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MNG_USR_ROLES
--------------------------------------------------------

  CREATE TABLE "INVENICT"."MNG_USR_ROLES" 
   (	"UROL_ID" NUMBER(20,0), 
	"USR_ID" NUMBER(20,0), 
	"ROL_ID" NUMBER, 
	"UROL_STAT" VARCHAR2(1 BYTE), 
	"CREATION_DATE" DATE, 
	"CREATED_BY" VARCHAR2(30 BYTE), 
	"LAST_UPDATE_DATE" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(30 BYTE), 
	"PROGRAM_NAME" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PASSWORD_RESETS
--------------------------------------------------------

  CREATE TABLE "INVENICT"."PASSWORD_RESETS" 
   (	"EMAIL" VARCHAR2(255 BYTE), 
	"TOKEN" VARCHAR2(255 BYTE), 
	"CREATED_AT" TIMESTAMP (6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PERSONAL_ACCESS_TOKENS
--------------------------------------------------------

  CREATE TABLE "INVENICT"."PERSONAL_ACCESS_TOKENS" 
   (	"ID" NUMBER(19,0), 
	"TOKENABLE_TYPE" VARCHAR2(255 BYTE), 
	"TOKENABLE_ID" NUMBER(19,0), 
	"NAME" VARCHAR2(255 BYTE), 
	"TOKEN" VARCHAR2(64 BYTE), 
	"ABILITIES" CLOB, 
	"LAST_USED_AT" TIMESTAMP (6), 
	"CREATED_AT" TIMESTAMP (6), 
	"UPDATED_AT" TIMESTAMP (6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
 LOB ("ABILITIES") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table PURCHASE_DTL
--------------------------------------------------------

  CREATE TABLE "INVENICT"."PURCHASE_DTL" 
   (	"DPURCHASE_ID" NUMBER(20,0), 
	"PURCHASE_ID" NUMBER(20,0), 
	"INVENT_CODE" VARCHAR2(20 BYTE), 
	"DPURCHASE_QTY" NUMBER(5,0), 
	"DPURCHASE_SAT" VARCHAR2(5 BYTE), 
	"DPURCHASE_PRC_SAT" NUMBER(20,3), 
	"DPURCHASE_PRC" NUMBER(20,3), 
	"DPURCHASE_STAT" VARCHAR2(1 BYTE), 
	"DPURCHASE_REMARK" VARCHAR2(500 BYTE), 
	"CREATION_DATE" DATE, 
	"CREATED_BY" VARCHAR2(30 BYTE), 
	"LAST_UPDATE_DATE" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(30 BYTE), 
	"PROGRAM_NAME" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PURCHASE_MST
--------------------------------------------------------

  CREATE TABLE "INVENICT"."PURCHASE_MST" 
   (	"PURCHASE_ID" NUMBER(20,0), 
	"PURCHASE_DATE" DATE, 
	"PURCHASE_PETUGAS" VARCHAR2(50 BYTE), 
	"SUPLIER_CODE" VARCHAR2(20 BYTE), 
	"PURCHASE_PAY_METHODE" VARCHAR2(2 BYTE), 
	"VALUTA_CODE" VARCHAR2(10 BYTE), 
	"PURCHASE_RATE" NUMBER(10,3), 
	"PURCHASE_TOTAL" NUMBER(20,3), 
	"PURCHASE_TOTAL_RP" NUMBER(20,3), 
	"PURCHASE_STATUS" VARCHAR2(1 BYTE), 
	"PURCHASE_REMARK" VARCHAR2(500 BYTE), 
	"CREATION_DATE" DATE, 
	"CREATED_BY" VARCHAR2(30 BYTE), 
	"LAST_UPDATE_DATE" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(30 BYTE), 
	"PROGRAM_NAME" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SUPLIER_MST
--------------------------------------------------------

  CREATE TABLE "INVENICT"."SUPLIER_MST" 
   (	"SUPLIER_CODE" VARCHAR2(20 BYTE), 
	"SUPLIER_NAME" VARCHAR2(100 BYTE), 
	"SUPLIER_CONTACT" VARCHAR2(50 BYTE), 
	"SUPLIER_ADDRESS1" VARCHAR2(100 BYTE), 
	"SUPLIER_ADDRESS2" VARCHAR2(100 BYTE), 
	"SUPLIER_CITY" VARCHAR2(50 BYTE), 
	"SUPLIER_PROV" VARCHAR2(50 BYTE), 
	"SUPLIER_EMAIL" VARCHAR2(30 BYTE), 
	"SUPLIER_FAX" VARCHAR2(20 BYTE), 
	"SUPLIER_TLP1" VARCHAR2(20 BYTE), 
	"SUPLIER_TLP2" VARCHAR2(20 BYTE), 
	"SUPLIER_STATUS" VARCHAR2(1 BYTE), 
	"CREATION_DATE" DATE, 
	"CREATED_BY" VARCHAR2(30 BYTE), 
	"LAST_UPDATE_DATE" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(30 BYTE), 
	"PROGRAM_NAME" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table VCOMPANY_REFS
--------------------------------------------------------

  CREATE TABLE "INVENICT"."VCOMPANY_REFS" 
   (	"COMPANY_CODE" VARCHAR2(2 BYTE), 
	"NAME" VARCHAR2(30 BYTE), 
	"SHORT_NAME" VARCHAR2(20 BYTE), 
	"START_DATE" DATE, 
	"END_DATE" DATE, 
	"ADDRESS1" VARCHAR2(100 BYTE), 
	"ADDRESS2" VARCHAR2(100 BYTE), 
	"ADDRESS3" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table VPEKERJA_ICT
--------------------------------------------------------

  CREATE TABLE "INVENICT"."VPEKERJA_ICT" 
   (	"EMPLOYEE_NUMBER" VARCHAR2(20 BYTE), 
	"OFFICIAL_NAME" VARCHAR2(40 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for View VREQ_MST
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "INVENICT"."VREQ_MST" ("IREQ_DATE", "IREQ_TYPE", "IREQ_DIVISI_REQUESTOR", "IREQ_REQUESTOR", "IREQ_DIVISI_USER", "IREQ_USER", "IREQ_BU", "IREQ_ASSIGNED_TO", "IREQ_STATUS", "JUMLAH") AS 
  SELECT   ireq_date, ireq_type, ireq_divisi_requestor, ireq_requestor,
            ireq_divisi_user, ireq_user, ireq_bu, ireq_assigned_to,
            ireq_status, COUNT (*) jumlah
       FROM ireq_mst
   GROUP BY ireq_date,
            ireq_type,
            ireq_divisi_requestor,
            ireq_requestor,
            ireq_divisi_user,
            ireq_user,
            ireq_bu,
            ireq_assigned_to,
            ireq_status
   ORDER BY ireq_date, ireq_type, ireq_requestor
;
--------------------------------------------------------
--  DDL for View VREQ_MST_BULAN
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "INVENICT"."VREQ_MST_BULAN" ("NAME", "CODE") AS 
  SELECT TO_CHAR (ireq_date, 'Month') name, TO_CHAR(ireq_date,'MM') code
    
FROM vreq_mst
GROUP BY TO_CHAR (ireq_date, 'Month'),TO_CHAR(ireq_date,'MM')
ORDER BY name ASC
;
--------------------------------------------------------
--  DDL for View VREQ_MST_STATUS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "INVENICT"."VREQ_MST_STATUS" ("CODE", "NAME") AS 
  SELECT ireq_status as code,
    CASE ireq_status
        WHEN 'P' THEN 'Permohonan'
        WHEN 'R' THEN 'Reject'
        WHEN 'A' THEN 'Approve'
        WHEN 'T' THEN 'Penugasan'
        WHEN 'D' THEN 'Done'
        WHEN 'C' THEN 'Close'
    END as name
FROM vreq_mst
GROUP BY ireq_status
   ORDER BY decode(name, 'Permohonan', 1,'Reject', 2,'Approve',3,'Penugasan',4,'Done',5,'Close',6)
;
--------------------------------------------------------
--  DDL for View VREQ_MST_TAHUN
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "INVENICT"."VREQ_MST_TAHUN" ("TAHUN") AS 
  SELECT TO_CHAR (ireq_date, 'yyyy') tahun
    
FROM vreq_mst
GROUP BY TO_CHAR (ireq_date, 'yyyy')
ORDER BY tahun DESC
;
--------------------------------------------------------
--  DDL for View VREQ_PER_DIVREQ_BULAN
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "INVENICT"."VREQ_PER_DIVREQ_BULAN" ("IREQ_DIVISI_REQUESTOR", "BULAN", "JUMLAH") AS 
  SELECT   ireq_divisi_requestor, TO_CHAR (ireq_date, 'yyyymm') bulan,
            SUM (jumlah) jumlah
       FROM vreq_mst
   GROUP BY ireq_divisi_requestor, TO_CHAR (ireq_date, 'yyyymm')
   ORDER BY ireq_divisi_requestor, TO_CHAR (ireq_date, 'yyyymm')
;
--------------------------------------------------------
--  DDL for View VREQ_PER_DIVREQ_STATUS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "INVENICT"."VREQ_PER_DIVREQ_STATUS" ("IREQ_DIVISI_REQUESTOR", "IREQ_STATUS", "JUMLAH") AS 
  SELECT   ireq_divisi_requestor, ireq_status, SUM (jumlah) jumlah
       FROM vreq_mst
   GROUP BY ireq_divisi_requestor, ireq_status
   ORDER BY ireq_divisi_requestor, ireq_status
;
--------------------------------------------------------
--  DDL for View VREQ_PER_DIVREQ_TAHUN
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "INVENICT"."VREQ_PER_DIVREQ_TAHUN" ("IREQ_DIVISI_REQUESTOR", "TAHUN", "JUMLAH") AS 
  SELECT   ireq_divisi_requestor, TO_CHAR (ireq_date, 'yyyy') tahun,
            SUM (jumlah) jumlah
       FROM vreq_mst
   GROUP BY ireq_divisi_requestor, TO_CHAR (ireq_date, 'yyyy')
   ORDER BY ireq_divisi_requestor, TO_CHAR (ireq_date, 'yyyy')
;
--------------------------------------------------------
--  DDL for View VREQ_PER_DIVUSER_BULAN
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "INVENICT"."VREQ_PER_DIVUSER_BULAN" ("IREQ_DIVISI_USER", "BULAN", "JUMLAH") AS 
  SELECT   ireq_divisi_user, TO_CHAR (ireq_date, 'yyyymm') bulan,
            SUM (jumlah) jumlah
       FROM vreq_mst
   GROUP BY ireq_divisi_user, TO_CHAR (ireq_date, 'yyyymm')
   ORDER BY ireq_divisi_user, TO_CHAR (ireq_date, 'yyyymm')
;
--------------------------------------------------------
--  DDL for View VREQ_PER_DIVUSER_STATUS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "INVENICT"."VREQ_PER_DIVUSER_STATUS" ("DIV_NAME", "JUMLAH", "IREQ_STATUS") AS 
  SELECT   dr.div_name, SUM (vm.jumlah) jumlah,
CASE vm.ireq_status
        WHEN 'A' THEN 'Approve'
        WHEN 'D' THEN 'Done'
        WHEN 'C' THEN 'Close'
        WHEN 'P' THEN 'Permohonan'
        WHEN 'R' THEN 'Reject'
        WHEN 'T' THEN 'Penugasan'
    END as ireq_status
       FROM vreq_mst vm
       LEFT JOIN divisi_refs dr ON vm.ireq_divisi_user = dr.div_id
   GROUP BY dr.div_name, ireq_status
   ORDER BY dr.div_name ASC
;
--------------------------------------------------------
--  DDL for View VREQ_PER_DIVUSER_TAHUN
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "INVENICT"."VREQ_PER_DIVUSER_TAHUN" ("DIV_NAME", "TAHUN", "JUMLAH") AS 
  SELECT dr.div_name, TO_CHAR (vm.ireq_date, 'yyyy') tahun,
            SUM (vm.jumlah) jumlah
       FROM vreq_mst vm
       LEFT JOIN divisi_refs dr ON vm.ireq_divisi_user = dr.div_id
   GROUP BY  dr.div_name, TO_CHAR (vm.ireq_date, 'yyyy')
   ORDER BY  tahun DESC
;
--------------------------------------------------------
--  DDL for View VREQ_PER_ICTPERSON
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "INVENICT"."VREQ_PER_ICTPERSON" ("IREQ_ASSIGNED_TO", "JUMLAH") AS 
  SELECT   ireq_assigned_to, SUM (jumlah) jumlah
       FROM vreq_mst
       WHERE ireq_assigned_to IS NOT NULL
   GROUP BY ireq_assigned_to
   ORDER BY ireq_assigned_to
;
--------------------------------------------------------
--  DDL for View VREQ_PER_ICTPERSON_STATUS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "INVENICT"."VREQ_PER_ICTPERSON_STATUS" ("IREQ_ASSIGNED_TO", "JUMLAH", "IREQ_STATUS") AS 
  SELECT   ireq_assigned_to, SUM (jumlah) jumlah,
CASE ireq_status
        WHEN 'A' THEN 'Approve'
        WHEN 'D' THEN 'Done'
        WHEN 'C' THEN 'Close'
        WHEN 'P' THEN 'Permohonan'
        WHEN 'R' THEN 'Reject'
        WHEN 'T' THEN 'Penugasan'
    END as ireq_status
   FROM vreq_mst
   WHERE ireq_assigned_to IS NOT NULL
   GROUP BY ireq_assigned_to, ireq_status
   ORDER BY ireq_assigned_to, ireq_status
;
--------------------------------------------------------
--  DDL for View VREQ_PER_STATUS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "INVENICT"."VREQ_PER_STATUS" ("JUMLAH", "IREQ_STATUS") AS 
  SELECT COUNT (*) jumlah,
    CASE ireq_status
        WHEN 'P' THEN 'Permohonan'
        WHEN 'R' THEN 'Reject'
        WHEN 'A' THEN 'Approve'
        WHEN 'T' THEN 'Penugasan'
        WHEN 'D' THEN 'Done'
        WHEN 'C' THEN 'Close'
    END as ireq_status
FROM vreq_mst
GROUP BY ireq_status
   ORDER BY decode(ireq_status, 'Permohonan', 1,'Reject', 2,'Approve',3,'Penugasan',4,'Done',5,'Close',6)
;
--------------------------------------------------------
--  DDL for View V_CASH_ADVANCE
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "INVENICT"."V_CASH_ADVANCE" ("CA_ID", "CA_PIC_NAME", "CA_SUBMIT_DATE", "CA_IDD", "IREQ_ID") AS 
  SELECT ca.ca_id, ca.ca_pic_name, ca.ca_submit_date, im.ireq_no as ca_idd, 
im.ireq_requestor as ireq_id
    
FROM ca_mst ca
LEFT JOIN ireq_mst im ON ca.ireq_id = im.ireq_id

ORDER BY ca.creation_date ASC
;
--------------------------------------------------------
--  DDL for View V_COMPANY_REFS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "INVENICT"."V_COMPANY_REFS" ("CODE", "NAME") AS 
  SELECT COMPANY_CODE AS CODE, NAME
    
FROM vcompany_refs
ORDER BY NAME ASC
;
--------------------------------------------------------
--  DDL for View V_IREQ_MST
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "INVENICT"."V_IREQ_MST" ("IREQ_ID", "IREQ_NO", "IREQ_DATE", "IREQ_REQUESTOR", "IREQ_STATUS", "COUNT") AS 
  SELECT im.ireq_id, im.ireq_no, im.ireq_date,im.ireq_requestor,im.ireq_status, COUNT(distinct idm.ireq_id) as count  
FROM ireq_mst im
LEFT JOIN ireq_dtl idm ON idm.ireq_id = im.ireq_id
WHERE im.ireq_status IS NULL OR im.ireq_status = 'P' 
GROUP BY im.ireq_id,im.ireq_no, im.ireq_date, im.ireq_requestor, im.creation_date, im.ireq_status
ORDER BY im.creation_date ASC
;
--------------------------------------------------------
--  DDL for View V_IREQ_MST_PERMOHONAN
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "INVENICT"."V_IREQ_MST_PERMOHONAN" ("IREQ_ID", "IREQ_NO", "IREQ_DATE", "IREQ_REQUESTOR", "IREQ_USER") AS 
  SELECT ireq_id, ireq_no, ireq_date,ireq_requestor, ireq_user
FROM ireq_mst
WHERE ireq_status = 'P' 
ORDER BY creation_date ASC
;
--------------------------------------------------------
--  DDL for View V_IREQ_MST_PERMOHONAN_DIVISI
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "INVENICT"."V_IREQ_MST_PERMOHONAN_DIVISI" ("IREQ_ID", "IREQ_NO", "IREQ_DATE", "IREQ_REQUESTOR", "IREQ_USER", "IREQ_ASSIGNED_TO", "IREQ_COUNT_STATUS", "IREQ_COUNT_ID") AS 
  SELECT im.ireq_id, im.ireq_no, im.ireq_date, im.ireq_requestor, im.ireq_user, im.ireq_assigned_to,
count(idm.ireq_assigned_to) as ireq_count_status, count(idm.ireq_id) as ireq_count_id
FROM ireq_mst im
JOIN ireq_dtl idm ON im.ireq_id = idm.ireq_id
WHERE im.ireq_status = 'A'
GROUP BY im.ireq_id, im.ireq_no, im.ireq_date, im.ireq_requestor, im.ireq_user, im.ireq_assigned_to
;
--------------------------------------------------------
--  DDL for View V_IREQ_MST_REJECT
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "INVENICT"."V_IREQ_MST_REJECT" ("IREQ_ID", "IREQ_NO", "IREQ_DATE", "IREQ_REQUESTOR", "IREQ_REASON", "IREQ_USER") AS 
  SELECT ireq_id, ireq_no, ireq_date, ireq_requestor, ireq_reason, ireq_user  
FROM ireq_mst
WHERE ireq_status = 'R'
ORDER BY creation_date ASC
;
--------------------------------------------------------
--  DDL for View V_IREQ_MST_SEDANG_DIKERJAKAN
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "INVENICT"."V_IREQ_MST_SEDANG_DIKERJAKAN" ("IREQ_ID", "IREQ_NO", "IREQ_DATE", "IREQ_REQUESTOR", "IREQ_USER", "IREQ_STATUS") AS 
  SELECT ireq_id, ireq_no, ireq_date,ireq_requestor, ireq_user,
CASE ireq_status
    WHEN 'T' THEN 'Penugasan'
END as ireq_status
FROM ireq_mst
WHERE ireq_status = 'T' 
ORDER BY creation_date ASC
;
--------------------------------------------------------
--  DDL for View V_IREQ_MST_SELESAI
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "INVENICT"."V_IREQ_MST_SELESAI" ("IREQ_ID", "IREQ_NO", "IREQ_DATE", "IREQ_REQUESTOR", "IREQ_USER") AS 
  SELECT ireq_id, ireq_no, ireq_date,ireq_requestor, ireq_user
FROM ireq_mst
WHERE ireq_status = 'C' 
ORDER BY creation_date ASC
;
--------------------------------------------------------
--  DDL for View V_IREQ_MST_SUDAH_DIKERJAKAN
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "INVENICT"."V_IREQ_MST_SUDAH_DIKERJAKAN" ("IREQ_ID", "IREQ_NO", "IREQ_DATE", "IREQ_REQUESTOR", "IREQ_USER", "IREQ_ASSIGNED_TO", "IREQ_STATUS") AS 
  SELECT ireq_id, ireq_no, ireq_date,ireq_requestor,ireq_user, ireq_assigned_to,
CASE ireq_status
    WHEN 'D' THEN 'Done'
END as ireq_status
FROM ireq_mst
WHERE ireq_status = 'D' 
ORDER BY creation_date ASC
;
--------------------------------------------------------
--  DDL for View V_IREQ_MST_VERIFIKASI
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "INVENICT"."V_IREQ_MST_VERIFIKASI" ("IREQ_ID", "IREQ_NO", "IREQ_DATE", "IREQ_REQUESTOR", "IREQ_USER") AS 
  SELECT ireq_id, ireq_no, ireq_date, ireq_requestor,ireq_user  
FROM ireq_mst
WHERE ireq_status = 'A'
ORDER BY creation_date ASC
;
--------------------------------------------------------
--  DDL for View V_LOOKUP_REFS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "INVENICT"."V_LOOKUP_REFS" ("LOOKUP_CODE", "LOOKUP_TYPE", "LOOKUP_DESC", "LOOKUP_STATUS") AS 
  SELECT lookup_code, lookup_type, lookup_desc,
CASE lookup_status
    WHEN 'T' THEN 'Aktif'
    WHEN 'F' THEN 'Tidak Aktif'
END As lookup_status
FROM lookup_refs
ORDER BY lookup_type ASC
;
--------------------------------------------------------
--  DDL for View V_MNG_MODULES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "INVENICT"."V_MNG_MODULES" ("MOD_ID", "MOD_NAME", "MOD_DESC", "MOD_STAT") AS 
  SELECT mod_id, mod_name, mod_desc,
CASE mod_stat
    WHEN 'T' THEN 'Aktif'
    WHEN 'F' THEN 'Tidak Aktif'
END AS mod_stat    
FROM mng_modules
ORDER BY mod_id
;
--------------------------------------------------------
--  DDL for View V_MNG_USERS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "INVENICT"."V_MNG_USERS" ("USR_ID", "USR_NAME", "USR_FULLNAME", "USR_EMAIL", "USR_FOTO", "DIV_NAME", "USR_STAT") AS 
  SELECT mu.usr_id, mu.usr_name, mu.usr_fullname, mu.usr_email, mu.usr_foto, dr.div_name,
CASE mu.usr_stat
    WHEN 'T' THEN 'Aktif'
    WHEN 'F' THEN 'Tidak Aktif'
END as usr_stat
    
FROM mng_users mu
left join divisi_refs dr ON mu.div_id = dr.div_id 
WHERE mu.usr_stat='T'
ORDER BY mu.usr_name ASC
;
REM INSERTING into INVENICT.CA_MST
SET DEFINE OFF;
REM INSERTING into INVENICT.DIVISI_REFS
SET DEFINE OFF;
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1093','97B0013V','GENERAL SUPPORT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1094','97B0014V','SHE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1095','01C0010V','CORP. HUMAN CAPITAL & SERVICES',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1096','01C0012V','OIL & GAS COMMERCIAL',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1097','01C0013V','RISK MANAGEMENT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1098','01B0013V','INTERNAL AUDIT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1099','01B0014V','INVESTOR RELATION & CORP. COMMUNICATION',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1100','01C0014V','EXECUTIVE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1101','01B0015V','FINANCE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1102','01C0015V','EXECUTIVE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1103','01C0016V','CORPORATE FINANCE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1104','01C0017V','FINANCE & ACCOUNTING',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1105','01B0016V','TECHNICAL & INTERNATIONAL OPERATIONS',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1106','99B0049V','OPERATION',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1107','99B0050V','INVESTOR RELATIONS & CORP. COMMUNICATION',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1108','99C0127V','HUMAN CAPITAL & SERVICES',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1109','99D0211V','COMPENSATION & DEVELOPMENT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1110','99D0212V','IR & SERVICES',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1111','99D0213V','MEDICAL',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1112','99C0128V','LEGAL OPERATIONS',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1113','99C0129V','LEGAL ADVISORY',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1114','99C0130V','INTERNAL CONTROL',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1115','99C0131V','RISK MANAGEMENT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1116','99C0132V','GCG',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1117','99C0133V','CORPORATE FINANCE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1118','99C0134V','BUDGET & PERF. MANAGEMENT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1119','99C0135V','TREASURY',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1120','99C0136V','FINANCE CONTROLLER',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1121','99C0137V','TAX',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1122','99C0138V','ECONOMIC & PLANNING',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1123','99D0214V','BUDGET, REPORTING & ASSETS',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1124','99C0139V','DRILLING & WORKOVER',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1125','99D0215V','WELL SERVICE/WORKOVER',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1126','99D0216V','DRILLING',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1127','99D0217V','GPA',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1128','99D0218V','ICT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('07-11-2021','DD-MM-RRRR'),'user 1','DivisiRefs_Update');
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1129','01C0021V','BUZI',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1130','02C0069V','EMP MALACCA STRAIT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1131','02D0145V','PETROLEUM ENGINEERING',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1132','02D0146V','GEOSCIENCE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1133','99C0142V','BU OPERATED BY OTHERS',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1134','12C0008V','EMP TONGA',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1135','12D0013V','DEVELOPMENT & OPERATIONS',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1136','05D0004V','DEVELOPMENT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1137','99D0225V','MEDICAL',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1138','99D0226V','ICT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1139','99C0152V','OIL & GAS COMMERCIAL',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1140','02D0148V','OPS. & FACILITY ENGINEERING',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1141','01D0006V','GEOSCIENCE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1142','01C0022V','EMO',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1143','01D0003V','EXECUTIVE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1144','01D0004V','PROJECT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1145','01D0005V','TECHNICAL & SUPPORT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1146','25B0000V','PEMA GLOBAL ENERGI',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1147','05D0003V','EMP GEBANG',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1148','99C0153V','PROJECT & FACILITY',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1149','22C0000V','EMP DAYA NUSANTARA',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1150','22B0000V','EMP DAYA NUSANTARA',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1151','99D0227V','OPS. & FACILITY ENGINEERING',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1152','99C0154V','BUSINESS PARTNERSHIP',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1153','99C0140V','ENGINEERING',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1154','99C0141V','GEOSCIENCE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1155','99C0143V','TECHNICAL AUDIT & MONITORING',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1156','02E0008V','FIELD OPS.',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1157','99D0219V','GEOSCIENCE OPS. & DATABASE SUPPORT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1158','99D0220V','GEOSCIENCE INTEGRITY',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1159','99D0221V','PETROLEUM ENGINEERING',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1160','99D0222V','OPS. & FACILITY ENGINEERING',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1161','21B0000V','EMP ENERGI TERBARUKAN',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1162','21C0000V','G & G',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1163','21C0001V','RENEWABLE ENERGY',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1164','14C0005V','VMA (CBM SANGATTA II)',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1165','14D0004V','DEVELOPMENT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1166','08C0011V','EMP BENTU',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1167','08D0016V','GEOSCIENCE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1168','08D0017V','PETROLEUM ENGINEERING',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1169','08D0018V','OPS. & FACILITY ENGINEERING',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1170','08D0019V','PROJECT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1171','08D0020V','OPERATIONS AREA',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1172','02D0147V','OPERATIONS',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1173','12E0001V','FIELD OPS.',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1174','99C0144V','GPA',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1175','99C0145V','LEGAL OPS. & COMPLIANCE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1176','05D0002V','GEOSCIENCE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1177','99C0146V','PROCUREMENT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1178','99C0147V','MATERIAL MANAGEMENT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1179','99C0148V','SHE PERF. & COMPLIANCE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1180','99C0149V','SHE OPERATIONS',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1181','99C0150V','PROJECT & FACILITY',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1182','99B0052V','COMMUNICATION',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1183','99C0151V','HUMAN CAPITAL & SERVICES',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1184','05D0005V','OPERATIONS & SUPPORT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1185','99D0223V','COMPENSATION & DEVELOPMENT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1186','99D0224V','INDUSTRIAL RELATIONS & SERVICES',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('991','99C0100V','PROJECT & INFRASTRUCTURE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('992','99C0101V','CERTIFICATION & CLASSIFICATION',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('993','99C0102V','FACILITY INTEGRITY',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('994','02D0130V','GEOSCIENCE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('995','99E0127V','PETROLEUM ENGINEERING',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('996','07D0004V','DEVELOPMENT & OPERATIONS',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('997','99C0113V','COMPENSATION & BENEFITS',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('998','99D0188V','IR & GENERAL SERVICES',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('999','99D0189V','MEDICAL SERVICES',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1000','99D0190V','OUTSOURCING & TRAINING',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1001','99D0191V','SHE SUPPORT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1002','99D0192V','SHE OPERATIONS',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1003','01C0018V','EXECUTIVE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1004','01C0019V','DRILLING & WO',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1005','12F0000V','PRODUCTION & MAINTENANCE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1006','99B0040V','LEGAL COUNSEL',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1007','99C0115V','INTERNAL CONTROL',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1008','99C0116V','HUMAN CAPITAL & SERVICES',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1009','99D0193V','RISK MANAGEMENT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1010','99D0194V','HR OD & STAFFING',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1011','99D0195V','OUTSOURCING & TRAINING',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1012','99D0196V','COMPENSATION & BENEFITS',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1013','99D0197V','IR & GENERAL SERVICES',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1014','99D0198V','SECURITY',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1015','99C0117V','MEDICAL',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1016','99D0199V','ICT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1017','99D0200V','COMMERCIAL',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1018','99C0118V','BUSINESS DEVELOPMENT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1019','99C0119V','OIL & GAS COMMERCIAL',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1020','99C0120V','ECONOMIC & PLANNING',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1021','99C0121V','BUDGET & PERFORMANCE MANAGEMENT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1022','99D0203V','BUDGET, REPORTING & ASSETS',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1023','99C0122V','SCM',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1024','99D0204V','SC & EP',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1025','02D0140V','FINANCE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1026','02D0141V','GOVERNMENT & PUBLIC AFFAIRS',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1027','02D0142V','HUMAN CAPITAL',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1028','02D0143V','LEGAL & INTERNAL CONTROL',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1029','02D0144V','SCM & COMMERCIAL',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1030','99C0114V','HUMAN CAPITAL & SERVICES',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1031','99C0123V','CORPORATE FINANCE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1032','99C0124V','INVESTOR RELATION & CORP. COMM.',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1033','99B0041V','INTERNAL AUDIT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1034','99B0042V','SCM',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1035','99B0043V','OIL & GAS COMMERCIAL',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1036','99B0044V','BUSINESS DEVELOPMENT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1037','99B0045V','SHE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1038','99B0046V','LEGAL COMPLIANCE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1039','99B0047V','FINANCE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1040','99B0048V','TECHNICAL INTEGRITY',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1041','08D0008V','EXECUTIVE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1042','08D0009V','FINANCE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1043','08D0010V','HC, GPA & COMPLIANCE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1044','08D0011V','OPERATIONS AREA',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1045','08D0012V','OPERATIONS ENGINEERING',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1046','08D0013V','PROJECT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1047','08D0014V','SCM & COMMERCIAL',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1048','08D0015V','SHE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1049','08C0002V','TECHNICAL PLANNING',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1050','08C0003V','DRILLING & WO',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1051','08C0004V','GEOSCIENCE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1052','08C0005V','PETROLEUM ENGINEERING',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1053','12C0006V','EXECUTIVE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1054','12D0010V','SHE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1055','12D0011V','DEVELOPMENT & OPERATIONS',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1056','12D0012V','GENERAL SUPPORT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1057','99D0201V','FINANCE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1058','99D0202V','FINANCE CONTROLLER',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1059','99D0207V','TAX',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1060','99D0208V','TREASURY',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1061','12D0009V','DEVELOPMENT & OPERATIONS',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1062','12E0000V','FIELD OPERATIONS',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1063','02D0135V','EXECUTIVE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1064','02D0136V','SHE & SECURITY',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1065','02D0137V','GEOSCIENCE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1066','02D0138V','ENGINEERING',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1067','01C0020V','LEGAL',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1068','99D0205V','INVENTORY & LOGISTICS',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1069','99D0206V','PROCUREMENT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1070','99D0209V','GPA',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1071','14B0002V','EMP SANGATTA II',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1072','14C0004V','TECHNICAL PLANNING',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1073','05D0000V','EMP GEBANG',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1074','05D0001V','TECHNICAL PLANNING',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1075','99C0125V','SHE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1076','99D0210V','SHE OPERATIONS',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1077','99C0126V','EXECUTIVE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1078','02C0066V','OPERATIONS',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1079','02D0139V','FIELD OPS.',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1080','01B0008V','BUSINESS DEVELOPMENT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1081','01C0004V','EXECUTIVE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1082','01B0009V','BUSINESS UNITS OPERATED BY OTHERS',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1083','01B0010V','BUZI',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1084','01C0005V','EXECUTIVE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1085','01B0011V','COMMERCIAL',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1086','01C0006V','BUDGET & PERFORMANCE MANAGEMENT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1087','01C0007V','ECONOMIC PLANNING',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1088','01C0008V','EXECUTIVE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1089','01B0012V','COUNSEL',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1090','01C0009V','EXECUTIVE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1091','97B0011V','EXECUTIVE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('1092','97B0012V','TECHNICAL PLANNING',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('893','99B0034V','OPERATIONS',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('894','99C0105V','FACILITY ENGINEERING',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('895','99C0106V','FACILITY INTEGRITY',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('896','99C0107V','GEOSCIENCE INTEGRITY',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('897','99D0169V','RISK & OPERATIONS INTEGRITY',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('898','99D0170V','EMPL. RELATIONS & DEVELOPMENT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('899','99D0171V','INDUSTRIAL RELATIONS',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('900','99C0111V','SPECIAL PROJECT & RISK MANAGEMENT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('901','99D0174V','RISK MANAGEMENT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('902','99D0175V','INFORMATION SYSTEM',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('903','99D0176V','ICT OPERATIONS & INFRASTRUCTURE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('904','99C0112V','HR & GPA',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('905','99D0180V','LAND MATTERS & SECURITY',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('906','99D0181V','COMMUNICATION',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('907','97A0000V','VMA & EMP GEBANG',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('908','97B0008V','GEOSCIENCE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('909','97B0009V','DEVELOPMENT & ENGINEERING',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('910','97B0010V','EXECUTIVE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('911','02D0133V','PRODUCTION & MAINTENANCE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('912','04A0000V','LAPINDO BRANTAS',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('913','98A0000V','EMP BENTU / EMP TONGA',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('914','98B0000V','EXECUTIVE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('915','98B0001V','G & G',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('916','98B0002V','PRODUCTION & RESERVOIR ENGINEERING',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('917','98B0003V','OPERATIONS & FACILITIES ENGINEERING',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('918','08B0000V','EMP BENTU OPS. AREA',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('919','14D0003V','GEOSCIENCE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('920','06D0003V','PETROLEUM ENGINEERING',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('921','06D0004V','OPS. & FACILITY ENGINEERING',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('922','99C0109V','BUDGET','rahayu','Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('08-11-2021','DD-MM-RRRR'),'user 1','DivisiRefs_Update');
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('923','99C0110V','ECONOMIC PLANNING & TREASURY',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('924','99D0172V','ECONOMIC & PLANNING',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('925','99D0173V','TREASURY',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('926','99D0182V','SHE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('927','08B0011V','PROJECT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('928','02D0132V','FIELD OPERATIONS SUPPORT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('929','99D0183V','ENVIRONMENTAL & REGULATORY COMPLIANCE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('930','99D0184V','SHE OPERATIONS',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('931','99D0187V','GPA',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('932','99E0128V','PETROLEUM ENGINEERING ASSET 3',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('933','99B0039V','LEGAL',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('934','99C0095V','FACILITY INTEGRITY',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('935','99C0096V','FACILITY INTEGRITY',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('936','12D0008V','ENGINEERING & DEVELOPMENT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('937','06D0005V','FIELD OPERATIONS',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('938','99D0168V','WELL SERVICE / WORKOVER',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('939','99C0108V','EXECUTIVE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('940','99D0177V','HR OD & STAFFING',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('941','99D0178V','MEDICAL SERVICES',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('942','99D0179V','LEARNING & DEVELOPMENT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('943','05C0002V','OPERATION',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('944','02D0134V','ENGINEERING & OPERATIONS',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('945','99D0185V','ENGINEERING',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('946','99D0186V','EXECUTIVE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('947','99E0125V','FACILITY ENGINEERING',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('948','99E0126V','FACILITY INTEGRITY',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('949','19B0002V','INPEX',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('950','99C0076V','EXECUTIVE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('951','99D0149V','INVESTOR RELATIONS',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('952','03B0004V','KANGEAN ENERGI INDONESIA',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('953','99C0077V','EXECUTIVE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('954','99C0078V','INTERNAL CONTROL',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('955','99C0079V','GCG',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('956','99C0080V','LEGAL ADVISORY & CONTRACTS',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('957','99C0081V','LEGAL OPERATIONS & COMPLIANCE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('958','99C0082V','ENVIRONMENT & REGULATORY COMPLIANCE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('959','99C0083V','EXECUTIVE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('960','99D0150V','SECRETARIAL EXECUTIVE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('961','99C0085V','SHE OPERATIONS',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('962','99D0151V','SHE OPS. BENTU & KORINCI BARU',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('963','99D0152V','SHE OPS. GELAM',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('964','99D0153V','SHE OPS. MALACCA STRAIT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('965','99D0154V','SHE OPS. SEMBERAH',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('966','99D0155V','SHE OPS. TONGA',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('967','99C0086V','SHE PERF. MANAGEMENT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('968','13D0002V','EXPLORATION & ENGINEERING',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('969','02C0063V','EXECUTIVE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('970','99B0027V','EXECUTIVE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('971','99D0156V','COMMUNITY RELATIONS',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('972','99C0087V','PRINCIPAL',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('973','99B0023V','EXECUTIVE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('974','99B0024V','BUSINESS DEVELOPMENT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('975','99C0052V','EXECUTIVE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('976','02D0054V','EXECUTIVE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('977','99B0030V','INSPECTION INTEGRITY & CERTIFICATION/CLASSIFIC.',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('978','02D0117V','FIELD SUPPORT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('979','02D0119V','MAINTENANCE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('980','02D0121V','MARINE & TERMINAL',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('981','02D0125V','OPERATIONS ADMIN.',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('982','02D0127V','OPERATIONS ENGINEERING',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('983','02D0128V','PRODUCTION',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('984','02D0129V','PRODUCTION   ',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('985','99B0035V','PROJECT/INFRASTRUCTURE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('986','12B0002V','EMP TONGA OPS. AREA',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('987','99B0029V','EXECUTIVE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('988','99C0098V','GEOSCIENCE INTEGRITY',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('989','99B0037V','PETROLEUM ENGINEERING',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('990','99B0038V','PROJECT & FACILITY ENGINEERING',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('797','14C0003V','EXECUTIVE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('798','14D0001V','EXPLORATION',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('799','14D0002V','OPERATIONS',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('800','13D0001V','EXPLORATION',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('801','99C0053V','BUDGET CONTROL & PERFORMANCE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('802','99D0123V','BUDGET, REPORTING & ASSETS',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('803','99D0124V','FINANCE PERF. MANAGEMENT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('804','99C0054V','COMMERCIAL',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('805','99C0055V','ECONOMIC & PLANNING',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('806','99C0056V','EXECUTIVE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('807','99D0125V','FINANCE CONTROLLER',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('808','99D0126V','DCRM',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('809','99D0127V','ICT OPERATIONS','Nanda','Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('08-11-2021','DD-MM-RRRR'),'user 1','DivisiRefs_Update');
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('810','99C0070V','COMMUNICATION & SECURITY',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('811','99D0135V','MEDIA RELATIONS',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('812','99D0136V','SECURITY',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('813','99D0137V','COMMUNITY RELATIONS',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('814','99D0138V','CSR',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('815','99C0071V','CSR & LAND MATTERS',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('816','99D0139V','LAND MATTERS',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('817','99C0072V','EXECUTIVE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('818','99D0140V','SECRETARIAL EXECUTIVE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('819','99D0141V','FORMALITIES',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('820','99D0142V','GOVERNMENT RELATIONS  ',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('821','99C0073V','GOVERNMENT RELATIONS & FORMALITIES',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('822','99D0143V','COMPENSATIONS & BENEFITS',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('823','99D0144V','DEVELOPMENT & RELATIONS',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('824','99D0145V','GENERAL SERVICES',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('825','99C0074V','HR ADMIN. & SERVICES',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('826','99D0146V','HR INFORMATION SYSTEM',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('827','99D0147V','HR PLANNING',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('828','99D0148V','MEDICAL SERVICES',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('829','99C0075V','HR PLANNING & ORGANIZATION DEVELOPMENT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('830','99D0128V','ICT SYSTEM & INFRASTRUCTURE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('831','99C0057V','INFORMATION & COMMUNICATION TECHNOLOGY (ICT)',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('832','99D0129V','INVENTORY & LOGISTICS',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('833','99D0130V','PROCUREMENT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('834','99C0058V','SCM',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('835','99D0131V','STRATEGIC CONTROL & EXCELLENT PRACTICES',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('836','99C0059V','TAX',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('837','99C0060V','DRILLING ENGINEERING',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('838','99D0132V','DRILLING & WO SUPPORT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('839','99C0061V','EXECUTIVE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('840','99C0062V','WELL SERVICE / WORKOVER',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('841','08D0003V','ENGINEERING & DEVELOPMENT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('842','08C0001V','EXECUTIVE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('843','08D0004V','G & G',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('844','08D0005V','OPS. AREA',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('845','08D0006V','PROJECT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('846','08D0007V','OPS. AREA',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('847','05B0006V','EMP GEBANG',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('848','07D0001V','DEVELOPMENT & ENGINEERING',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('849','07C0008V','EXECUTIVE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('850','07D0002V','OPERATIONS',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('851','02D0044V','G & G',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('852','02D0045V','PRODUCTION ENGINEERING',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('853','02D0046V','RESERVOIR ENGINEERING',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('854','06D0001V','DEVELOPMENT & ENGINEERING',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('855','06C0008V','EXECUTIVE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('856','06D0002V','OPERATIONS',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('857','01C0001V','EXECUTIVE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('858','01C0002V','EXECUTIVE SUPPORT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('859','01C0003V','GOVERNMENT AFFAIRS',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('860','12C0005V','EXECUTIVE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('861','12D0005V','EXPLORATION',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('862','12D0006V','OPERATIONS',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('863','12D0007V','OPERATIONS SUPPORT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('864','99D0133V','ENGINEERING',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('865','99C0063V','EXECUTIVE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('866','99C0064V','CORPORATE FINANCE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('867','99D0134V','RISK MANAGEMENT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('868','99C0065V','TREASURY',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('869','99C0088V','EXECUTIVE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('870','99D0158V','EXECUTIVE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('871','99A0000V','EXECUTIVE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('872','99C0089V','EXECUTIVE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('873','99C0091V','EXECUTIVE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('874','99D0160V','EXECUTIVE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('875','99C0092V','EXECUTIVE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('876','99D0161V','EXECUTIVE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('877','99C0093V','EXECUTIVE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('878','99D0162V','EXECUTIVE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('879','99D0163V','INTERNAL COMMUNICATION',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('880','19C0000V','RESERVOIR ENGINEERING',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('881','98B0004V','GEOSCIENCE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('882','99C0103V','GEOSCIENCE PETROTECHNICAL DATA & TECHNOLOGY',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('883','02D0131V','PETROLEUM ENGINEERING',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('884','98B0005V','PETROLEUM ENGINEERING',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('885','99C0104V','EXECUTIVE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('886','98B0006V','OPERATIONS ENGINEERING',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('887','07D0003V','ASSET & OPERATIONS','user 1','Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('08-11-2021','DD-MM-RRRR'),'user 1','DivisiRefs_Update');
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('888','13D0003V','OPERATIONS',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('889','02C0065V','OPERATIONS AREA',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('890','99B0031V','INTERNATIONAL OPERATIONS',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('891','99B0032V','EXECUTIVE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('792','99C0066V','EXECUTIVE',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('793','99C0067V','GEOSCIENCE INTEGRITY',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('794','99C0068V','GEOSCIENCE OPERATIONS',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('795','99C0069V','PETROTECHNICAL DATA & TECHNOLOGY',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('796','99B0026V','GOVERNMENT RELATIONS',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
Insert into INVENICT.DIVISI_REFS (DIV_ID,DIV_CODE,DIV_NAME,DIV_VERIFICATOR,DIV_ACTIVE,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('892','99B0033V','FINANCE & SUPPORT',null,'Y',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',to_date('04-11-2021','DD-MM-RRRR'),'INVENICT',null);
REM INSERTING into INVENICT.INVENT_MST
SET DEFINE OFF;
Insert into INVENICT.INVENT_MST (INVENT_CODE,INVENT_DESC,INVENT_BRAND,INVENT_TYPE,INVENT_SN,INVENT_TGL_PEROLEHAN,INVENT_LAMA_GARANSI,INVENT_KONDISI,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,INVENT_BARCODE,INVENT_LOKASI_UPDATE,INVENT_PENGGUNA_UPDATE,INVENT_LOKASI_PREVIOUS,INVENT_PENGGUNA_PREVIOUS,INVENT_BU,INVENT_PHOTO) values ('11','Printer','L','Xxiqw8wj','21323131',to_date('29-07-2021','DD-MM-RRRR'),'5','B',to_date('28-07-2021','DD-MM-RRRR'),'test',to_date('16-09-2021','DD-MM-RRRR'),'coba','Master_Update','0009283726','dssd','fddff','lantai 30','sumanto','98','1631712212.jpeg');
Insert into INVENICT.INVENT_MST (INVENT_CODE,INVENT_DESC,INVENT_BRAND,INVENT_TYPE,INVENT_SN,INVENT_TGL_PEROLEHAN,INVENT_LAMA_GARANSI,INVENT_KONDISI,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,INVENT_BARCODE,INVENT_LOKASI_UPDATE,INVENT_PENGGUNA_UPDATE,INVENT_LOKASI_PREVIOUS,INVENT_PENGGUNA_PREVIOUS,INVENT_BU,INVENT_PHOTO) values ('12','Mouse','H','laptop','6367326',to_date('19-07-2021','DD-MM-RRRR'),'10','B',to_date('02-08-2021','DD-MM-RRRR'),'test',to_date('10-09-2021','DD-MM-RRRR'),'coba','Master_Update','009273644545','lantai 30','deden','lantai 1','dedi','15','1631238393.jpeg');
Insert into INVENICT.INVENT_MST (INVENT_CODE,INVENT_DESC,INVENT_BRAND,INVENT_TYPE,INVENT_SN,INVENT_TGL_PEROLEHAN,INVENT_LAMA_GARANSI,INVENT_KONDISI,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,INVENT_BARCODE,INVENT_LOKASI_UPDATE,INVENT_PENGGUNA_UPDATE,INVENT_LOKASI_PREVIOUS,INVENT_PENGGUNA_PREVIOUS,INVENT_BU,INVENT_PHOTO) values ('13','Laptop','H','Laptop','5126215612',to_date('16-02-2021','DD-MM-RRRR'),'3','B',to_date('04-08-2021','DD-MM-RRRR'),'test',to_date('09-09-2021','DD-MM-RRRR'),'coba','Master_Update','0063725143','lnatai 17','dedeas','lantai 111','KAKASA','24','1628050488.jpeg');
Insert into INVENICT.INVENT_MST (INVENT_CODE,INVENT_DESC,INVENT_BRAND,INVENT_TYPE,INVENT_SN,INVENT_TGL_PEROLEHAN,INVENT_LAMA_GARANSI,INVENT_KONDISI,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,INVENT_BARCODE,INVENT_LOKASI_UPDATE,INVENT_PENGGUNA_UPDATE,INVENT_LOKASI_PREVIOUS,INVENT_PENGGUNA_PREVIOUS,INVENT_BU,INVENT_PHOTO) values ('14','Speaker','L','Laptop','3783272782',to_date('18-08-2021','DD-MM-RRRR'),'4','B',to_date('20-08-2021','DD-MM-RRRR'),'coba',to_date('07-10-2021','DD-MM-RRRR'),null,'Master_Update','82726182','Lantai 10','Gori','Lantai 9','Gogo','08','1633612413.png');
Insert into INVENICT.INVENT_MST (INVENT_CODE,INVENT_DESC,INVENT_BRAND,INVENT_TYPE,INVENT_SN,INVENT_TGL_PEROLEHAN,INVENT_LAMA_GARANSI,INVENT_KONDISI,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,INVENT_BARCODE,INVENT_LOKASI_UPDATE,INVENT_PENGGUNA_UPDATE,INVENT_LOKASI_PREVIOUS,INVENT_PENGGUNA_PREVIOUS,INVENT_BU,INVENT_PHOTO) values ('15','Keyboard','H','samsung','6725617621',to_date('09-09-2021','DD-MM-RRRR'),'2','B',to_date('06-09-2021','DD-MM-RRRR'),'coba',to_date('07-10-2021','DD-MM-RRRR'),null,'Master_Update','0036000291452','Lantai 2','Joko Santoso','Lantai 2','Joko','98','1633612364.jpeg');
Insert into INVENICT.INVENT_MST (INVENT_CODE,INVENT_DESC,INVENT_BRAND,INVENT_TYPE,INVENT_SN,INVENT_TGL_PEROLEHAN,INVENT_LAMA_GARANSI,INVENT_KONDISI,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,INVENT_BARCODE,INVENT_LOKASI_UPDATE,INVENT_PENGGUNA_UPDATE,INVENT_LOKASI_PREVIOUS,INVENT_PENGGUNA_PREVIOUS,INVENT_BU,INVENT_PHOTO) values ('A19','Harddisk','H','jhkajhkasas','12345678',to_date('08-10-2021','DD-MM-RRRR'),'3','B',to_date('08-10-2021','DD-MM-RRRR'),'user 1',to_date('08-10-2021','DD-MM-RRRR'),null,'Master_Update','123456','Lantai 20','Jaka','Lantai 20','Jaka','24','1633656567.png');
REM INSERTING into INVENICT.INVENT_MUTASI
SET DEFINE OFF;
Insert into INVENICT.INVENT_MUTASI (IMUTASI_ID,INVENT_CODE,IMUTASI_TGL_DARI,IMUTASI_TGL_SD,IMUTASI_LOKASI,IMUTASI_PENGGUNA,IMUTASI_KETERANGAN,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,IMUTASI_BU) values ('3','12',to_date('02-08-2021','DD-MM-RRRR'),to_date('03-08-2021','DD-MM-RRRR'),'lantai 10','cahya','kakadksasads',to_date('02-08-2021','DD-MM-RRRR'),'y',null,null,'test',null);
Insert into INVENICT.INVENT_MUTASI (IMUTASI_ID,INVENT_CODE,IMUTASI_TGL_DARI,IMUTASI_TGL_SD,IMUTASI_LOKASI,IMUTASI_PENGGUNA,IMUTASI_KETERANGAN,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,IMUTASI_BU) values ('2','11',to_date('17-07-2021','DD-MM-RRRR'),to_date('20-07-2021','DD-MM-RRRR'),'lantai 1','Rubi','sadsadsad',to_date('29-07-2021','DD-MM-RRRR'),'y',to_date('23-08-2021','DD-MM-RRRR'),null,'Mutasi_Update',null);
Insert into INVENICT.INVENT_MUTASI (IMUTASI_ID,INVENT_CODE,IMUTASI_TGL_DARI,IMUTASI_TGL_SD,IMUTASI_LOKASI,IMUTASI_PENGGUNA,IMUTASI_KETERANGAN,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,IMUTASI_BU) values ('21','13',to_date('13-08-2021','DD-MM-RRRR'),to_date('14-08-2021','DD-MM-RRRR'),'lantai 10','contoh pengguna','contoh keterangan',to_date('13-08-2021','DD-MM-RRRR'),'y',null,null,'test',null);
Insert into INVENICT.INVENT_MUTASI (IMUTASI_ID,INVENT_CODE,IMUTASI_TGL_DARI,IMUTASI_TGL_SD,IMUTASI_LOKASI,IMUTASI_PENGGUNA,IMUTASI_KETERANGAN,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,IMUTASI_BU) values ('61','15',to_date('09-09-2021','DD-MM-RRRR'),to_date('09-09-2021','DD-MM-RRRR'),'Lantai 32','Renaldi','Contoh keterangan kahkaskassasdd',to_date('09-09-2021','DD-MM-RRRR'),'coba',to_date('22-09-2021','DD-MM-RRRR'),'coba','Mutasi_Update',null);
Insert into INVENICT.INVENT_MUTASI (IMUTASI_ID,INVENT_CODE,IMUTASI_TGL_DARI,IMUTASI_TGL_SD,IMUTASI_LOKASI,IMUTASI_PENGGUNA,IMUTASI_KETERANGAN,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,IMUTASI_BU) values ('87','13',to_date('01-09-2021','DD-MM-RRRR'),to_date('10-09-2021','DD-MM-RRRR'),'lantai 35','cahyadi','Pinjam',to_date('16-09-2021','DD-MM-RRRR'),'coba',to_date('16-09-2021','DD-MM-RRRR'),'coba','Mutasi_Update',null);
Insert into INVENICT.INVENT_MUTASI (IMUTASI_ID,INVENT_CODE,IMUTASI_TGL_DARI,IMUTASI_TGL_SD,IMUTASI_LOKASI,IMUTASI_PENGGUNA,IMUTASI_KETERANGAN,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,IMUTASI_BU) values ('63','11',to_date('09-09-2021','DD-MM-RRRR'),null,'lantai 30','sumanto','asdadas',to_date('09-09-2021','DD-MM-RRRR'),'coba',null,null,'Mutasi_Save',null);
Insert into INVENICT.INVENT_MUTASI (IMUTASI_ID,INVENT_CODE,IMUTASI_TGL_DARI,IMUTASI_TGL_SD,IMUTASI_LOKASI,IMUTASI_PENGGUNA,IMUTASI_KETERANGAN,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,IMUTASI_BU) values ('64','12',to_date('10-09-2021','DD-MM-RRRR'),null,'lantai 30','deden','contoh keterangan',to_date('10-09-2021','DD-MM-RRRR'),'coba',null,null,'Mutasi_Save',null);
Insert into INVENICT.INVENT_MUTASI (IMUTASI_ID,INVENT_CODE,IMUTASI_TGL_DARI,IMUTASI_TGL_SD,IMUTASI_LOKASI,IMUTASI_PENGGUNA,IMUTASI_KETERANGAN,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,IMUTASI_BU) values ('102','13',to_date('22-09-2021','DD-MM-RRRR'),null,'lnatai 17','dedeas','addada',to_date('22-09-2021','DD-MM-RRRR'),'coba',null,null,'Mutasi_Save',null);
Insert into INVENICT.INVENT_MUTASI (IMUTASI_ID,INVENT_CODE,IMUTASI_TGL_DARI,IMUTASI_TGL_SD,IMUTASI_LOKASI,IMUTASI_PENGGUNA,IMUTASI_KETERANGAN,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,IMUTASI_BU) values ('122','A19',to_date('08-10-2021','DD-MM-RRRR'),to_date('09-10-2021','DD-MM-RRRR'),'Lantai 20','Jaka','Contoh Keterangan',to_date('08-10-2021','DD-MM-RRRR'),'user 1',to_date('08-10-2021','DD-MM-RRRR'),'user 1','Mutasi_Update',null);
REM INSERTING into INVENICT.IREQ_DTL
SET DEFINE OFF;
Insert into INVENICT.IREQ_DTL (IREQD_ID,IREQ_ID,IREQ_TYPE,INVENT_CODE,IREQ_DESC,IREQ_QTY,IREQ_STATUS,IREQ_REASON,IREQ_REMARK,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,IREQ_ASSIGNED_TO) values ('200','258','P','13','Laptop','1','C',null,'asdasd',to_date('09-11-2021','DD-MM-RRRR'),'Santoso',to_date('09-11-2021','DD-MM-RRRR'),'test','IctDetail_updateStatusClosingDetail','ARIEF WICAKSONO A.');
Insert into INVENICT.IREQ_DTL (IREQD_ID,IREQ_ID,IREQ_TYPE,INVENT_CODE,IREQ_DESC,IREQ_QTY,IREQ_STATUS,IREQ_REASON,IREQ_REMARK,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,IREQ_ASSIGNED_TO) values ('201','260','P','13','Laptop','2','R','Test 1','sdassdas',to_date('09-11-2021','DD-MM-RRRR'),'Santoso',to_date('09-11-2021','DD-MM-RRRR'),'Nanda','IctController_updateStatusReject',null);
Insert into INVENICT.IREQ_DTL (IREQD_ID,IREQ_ID,IREQ_TYPE,INVENT_CODE,IREQ_DESC,IREQ_QTY,IREQ_STATUS,IREQ_REASON,IREQ_REMARK,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,IREQ_ASSIGNED_TO) values ('202','262','P','11','Printer','1','T',null,'adsasd',to_date('09-11-2021','DD-MM-RRRR'),'Santoso',to_date('09-11-2021','DD-MM-RRRR'),'test','IctController_updateStatusPenugasan','DINDA WIDY PRATIWI');
Insert into INVENICT.IREQ_DTL (IREQD_ID,IREQ_ID,IREQ_TYPE,INVENT_CODE,IREQ_DESC,IREQ_QTY,IREQ_STATUS,IREQ_REASON,IREQ_REMARK,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,IREQ_ASSIGNED_TO) values ('203','262','P','12','Mouse','2','D',null,'asdsd',to_date('09-11-2021','DD-MM-RRRR'),'Santoso',to_date('09-11-2021','DD-MM-RRRR'),'ARIEF','IctController_updateStatusPenugasan','ARIEF WICAKSONO A.');
Insert into INVENICT.IREQ_DTL (IREQD_ID,IREQ_ID,IREQ_TYPE,INVENT_CODE,IREQ_DESC,IREQ_QTY,IREQ_STATUS,IREQ_REASON,IREQ_REMARK,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,IREQ_ASSIGNED_TO) values ('199','256','P','12','Mouse','21','T',null,'asasdasd',to_date('09-11-2021','DD-MM-RRRR'),'wahyu',to_date('10-11-2021','DD-MM-RRRR'),'user 1','IctController_updateStatusPenugasan','BAYU INDRAWAN');
Insert into INVENICT.IREQ_DTL (IREQD_ID,IREQ_ID,IREQ_TYPE,INVENT_CODE,IREQ_DESC,IREQ_QTY,IREQ_STATUS,IREQ_REASON,IREQ_REMARK,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,IREQ_ASSIGNED_TO) values ('204','262','P','12','Mouse','2','D',null,'asdasd',to_date('09-11-2021','DD-MM-RRRR'),'Santoso',to_date('09-11-2021','DD-MM-RRRR'),'ARIEF','IctController_updateStatusPenugasan','ARIEF WICAKSONO A.');
Insert into INVENICT.IREQ_DTL (IREQD_ID,IREQ_ID,IREQ_TYPE,INVENT_CODE,IREQ_DESC,IREQ_QTY,IREQ_STATUS,IREQ_REASON,IREQ_REMARK,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,IREQ_ASSIGNED_TO) values ('205','264','P','12','Mouse','2','P',null,'asdasd',to_date('10-11-2021','DD-MM-RRRR'),'user 1',to_date('15-11-2021','DD-MM-RRRR'),'user 1','IctController_updateStatusSubmit',null);
Insert into INVENICT.IREQ_DTL (IREQD_ID,IREQ_ID,IREQ_TYPE,INVENT_CODE,IREQ_DESC,IREQ_QTY,IREQ_STATUS,IREQ_REASON,IREQ_REMARK,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,IREQ_ASSIGNED_TO) values ('206','266','P','14','sasca','2','P',null,'asdsddsa',to_date('10-11-2021','DD-MM-RRRR'),'user 1',to_date('15-11-2021','DD-MM-RRRR'),'user 1','IctController_updateStatusSubmit',null);
Insert into INVENICT.IREQ_DTL (IREQD_ID,IREQ_ID,IREQ_TYPE,INVENT_CODE,IREQ_DESC,IREQ_QTY,IREQ_STATUS,IREQ_REASON,IREQ_REMARK,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,IREQ_ASSIGNED_TO) values ('207','268','P','15','asdasdasd','23','P',null,'sdasaddas',to_date('10-11-2021','DD-MM-RRRR'),'user 1',to_date('15-11-2021','DD-MM-RRRR'),'user 1','IctController_updateStatusSubmit',null);
Insert into INVENICT.IREQ_DTL (IREQD_ID,IREQ_ID,IREQ_TYPE,INVENT_CODE,IREQ_DESC,IREQ_QTY,IREQ_STATUS,IREQ_REASON,IREQ_REMARK,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,IREQ_ASSIGNED_TO) values ('208','270','P','12','Mouse','1','P',null,'sdsad',to_date('10-11-2021','DD-MM-RRRR'),'user 1',to_date('15-11-2021','DD-MM-RRRR'),'user 1','IctController_updateStatusSubmit',null);
Insert into INVENICT.IREQ_DTL (IREQD_ID,IREQ_ID,IREQ_TYPE,INVENT_CODE,IREQ_DESC,IREQ_QTY,IREQ_STATUS,IREQ_REASON,IREQ_REMARK,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,IREQ_ASSIGNED_TO) values ('209','272','P','15','adsasd','1','P',null,'sdsadsd',to_date('10-11-2021','DD-MM-RRRR'),'user 1',to_date('15-11-2021','DD-MM-RRRR'),'user 1','IctController_updateStatusSubmit',null);
Insert into INVENICT.IREQ_DTL (IREQD_ID,IREQ_ID,IREQ_TYPE,INVENT_CODE,IREQ_DESC,IREQ_QTY,IREQ_STATUS,IREQ_REASON,IREQ_REMARK,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,IREQ_ASSIGNED_TO) values ('221','273','S','11','Printer','1','R','Alasan Direject','Contoh keterangan',to_date('15-11-2021','DD-MM-RRRR'),'user 1',to_date('15-11-2021','DD-MM-RRRR'),'user 1','IctController_updateStatusSubmit',null);
Insert into INVENICT.IREQ_DTL (IREQD_ID,IREQ_ID,IREQ_TYPE,INVENT_CODE,IREQ_DESC,IREQ_QTY,IREQ_STATUS,IREQ_REASON,IREQ_REMARK,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,IREQ_ASSIGNED_TO) values ('222','275','P','15','Keyboard','1','P',null,'Untuk mengetik',to_date('15-11-2021','DD-MM-RRRR'),'user 1',to_date('15-11-2021','DD-MM-RRRR'),'user 1','IctController_updateStatusSubmit',null);
Insert into INVENICT.IREQ_DTL (IREQD_ID,IREQ_ID,IREQ_TYPE,INVENT_CODE,IREQ_DESC,IREQ_QTY,IREQ_STATUS,IREQ_REASON,IREQ_REMARK,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,IREQ_ASSIGNED_TO) values ('223','277','P','13','Laptop','2','R','Direject','Ketarangan laptop',to_date('15-11-2021','DD-MM-RRRR'),'user 1',to_date('15-11-2021','DD-MM-RRRR'),'user 1','IctController_updateStatusSubmit',null);
Insert into INVENICT.IREQ_DTL (IREQD_ID,IREQ_ID,IREQ_TYPE,INVENT_CODE,IREQ_DESC,IREQ_QTY,IREQ_STATUS,IREQ_REASON,IREQ_REMARK,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,IREQ_ASSIGNED_TO) values ('224','279','P','14','Speaker','3','A',null,'Keterangan Speaker',to_date('15-11-2021','DD-MM-RRRR'),'user 1',to_date('15-11-2021','DD-MM-RRRR'),'user 1','IctController_updateStatusSubmit',null);
Insert into INVENICT.IREQ_DTL (IREQD_ID,IREQ_ID,IREQ_TYPE,INVENT_CODE,IREQ_DESC,IREQ_QTY,IREQ_STATUS,IREQ_REASON,IREQ_REMARK,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,IREQ_ASSIGNED_TO) values ('225','281','P','A19','Harddisk','2','A',null,'Ketrangan harddisk',to_date('15-11-2021','DD-MM-RRRR'),'user 1',to_date('15-11-2021','DD-MM-RRRR'),'user 1','IctController_updateStatusSubmit',null);
Insert into INVENICT.IREQ_DTL (IREQD_ID,IREQ_ID,IREQ_TYPE,INVENT_CODE,IREQ_DESC,IREQ_QTY,IREQ_STATUS,IREQ_REASON,IREQ_REMARK,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,IREQ_ASSIGNED_TO) values ('226','283','P','11','Printer','3','C',null,'Keterangan Printer',to_date('15-11-2021','DD-MM-RRRR'),'user 1',to_date('15-11-2021','DD-MM-RRRR'),'user 1','IctController_updateStatusSubmit',null);
Insert into INVENICT.IREQ_DTL (IREQD_ID,IREQ_ID,IREQ_TYPE,INVENT_CODE,IREQ_DESC,IREQ_QTY,IREQ_STATUS,IREQ_REASON,IREQ_REMARK,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,IREQ_ASSIGNED_TO) values ('227','285','P','12','Mouse','12','C',null,'Keterangan Mouse',to_date('15-11-2021','DD-MM-RRRR'),'user 1',to_date('15-11-2021','DD-MM-RRRR'),'user 1','IctController_updateStatusSubmit',null);
REM INSERTING into INVENICT.IREQ_MST
SET DEFINE OFF;
Insert into INVENICT.IREQ_MST (IREQ_ID,IREQ_NO,IREQ_DATE,IREQ_TYPE,IREQ_REQUESTOR,IREQ_BU,IREQ_APPROVER1,IREQ_VERIFICATOR,IREQ_APPROVER2,IREQ_STATUS,IREQ_REASON,IREC_REMARK,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,IREQ_ASSIGNED_TO,IREQ_USER,IREQ_DIVISI_REQUESTOR,IREQ_DIVISI_USER) values ('258','257',to_date('09-11-2021','DD-MM-RRRR'),'P','Santoso','08','Nanda',null,null,'C',null,null,to_date('09-11-2021','DD-MM-RRRR'),'Santoso',to_date('09-11-2021','DD-MM-RRRR'),'test','IctController_updateStatusPenugasan','ARIEF WICAKSONO A.','Jaka','858','809');
Insert into INVENICT.IREQ_MST (IREQ_ID,IREQ_NO,IREQ_DATE,IREQ_TYPE,IREQ_REQUESTOR,IREQ_BU,IREQ_APPROVER1,IREQ_VERIFICATOR,IREQ_APPROVER2,IREQ_STATUS,IREQ_REASON,IREC_REMARK,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,IREQ_ASSIGNED_TO,IREQ_USER,IREQ_DIVISI_REQUESTOR,IREQ_DIVISI_USER) values ('260','259',to_date('11-11-2021','DD-MM-RRRR'),'P','Santoso','08',null,null,null,'R','Test 1',null,to_date('09-11-2021','DD-MM-RRRR'),'Santoso',to_date('09-11-2021','DD-MM-RRRR'),'Nanda','IctController_updateStatusReject',null,'Lala','858','809');
Insert into INVENICT.IREQ_MST (IREQ_ID,IREQ_NO,IREQ_DATE,IREQ_TYPE,IREQ_REQUESTOR,IREQ_BU,IREQ_APPROVER1,IREQ_VERIFICATOR,IREQ_APPROVER2,IREQ_STATUS,IREQ_REASON,IREC_REMARK,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,IREQ_ASSIGNED_TO,IREQ_USER,IREQ_DIVISI_REQUESTOR,IREQ_DIVISI_USER) values ('256','255',to_date('01-01-2021','DD-MM-RRRR'),'P','wahyu','20','user 1',null,null,'T',null,null,to_date('09-11-2021','DD-MM-RRRR'),'wahyu',to_date('10-11-2021','DD-MM-RRRR'),'user 1','IctController_updateStatusPenugasan','BAYU INDRAWAN','Felik','976','887');
Insert into INVENICT.IREQ_MST (IREQ_ID,IREQ_NO,IREQ_DATE,IREQ_TYPE,IREQ_REQUESTOR,IREQ_BU,IREQ_APPROVER1,IREQ_VERIFICATOR,IREQ_APPROVER2,IREQ_STATUS,IREQ_REASON,IREC_REMARK,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,IREQ_ASSIGNED_TO,IREQ_USER,IREQ_DIVISI_REQUESTOR,IREQ_DIVISI_USER) values ('262','261',to_date('11-11-2021','DD-MM-RRRR'),'P','Santoso','08','Nanda',null,null,'T',null,null,to_date('09-11-2021','DD-MM-RRRR'),'Santoso',to_date('09-11-2021','DD-MM-RRRR'),'test','IctController_updateStatusPenugasan',null,'asdsdsa','858','809');
Insert into INVENICT.IREQ_MST (IREQ_ID,IREQ_NO,IREQ_DATE,IREQ_TYPE,IREQ_REQUESTOR,IREQ_BU,IREQ_APPROVER1,IREQ_VERIFICATOR,IREQ_APPROVER2,IREQ_STATUS,IREQ_REASON,IREC_REMARK,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,IREQ_ASSIGNED_TO,IREQ_USER,IREQ_DIVISI_REQUESTOR,IREQ_DIVISI_USER) values ('264','263',to_date('11-11-2021','DD-MM-RRRR'),'P','user 1','08',null,null,null,'P',null,null,to_date('10-11-2021','DD-MM-RRRR'),'user 1',to_date('15-11-2021','DD-MM-RRRR'),'user 1','IctController_updateStatusSubmit',null,'Jaka','887','1118');
Insert into INVENICT.IREQ_MST (IREQ_ID,IREQ_NO,IREQ_DATE,IREQ_TYPE,IREQ_REQUESTOR,IREQ_BU,IREQ_APPROVER1,IREQ_VERIFICATOR,IREQ_APPROVER2,IREQ_STATUS,IREQ_REASON,IREC_REMARK,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,IREQ_ASSIGNED_TO,IREQ_USER,IREQ_DIVISI_REQUESTOR,IREQ_DIVISI_USER) values ('266','265',to_date('10-11-2018','DD-MM-RRRR'),'P','user 1','98',null,null,null,'P',null,null,to_date('10-11-2021','DD-MM-RRRR'),'user 1',to_date('15-11-2021','DD-MM-RRRR'),'user 1','IctController_updateStatusSubmit',null,'Susilo','887','1036');
Insert into INVENICT.IREQ_MST (IREQ_ID,IREQ_NO,IREQ_DATE,IREQ_TYPE,IREQ_REQUESTOR,IREQ_BU,IREQ_APPROVER1,IREQ_VERIFICATOR,IREQ_APPROVER2,IREQ_STATUS,IREQ_REASON,IREC_REMARK,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,IREQ_ASSIGNED_TO,IREQ_USER,IREQ_DIVISI_REQUESTOR,IREQ_DIVISI_USER) values ('268','267',to_date('04-11-2016','DD-MM-RRRR'),'S','user 1','98',null,null,null,'P',null,null,to_date('10-11-2021','DD-MM-RRRR'),'user 1',to_date('15-11-2021','DD-MM-RRRR'),'user 1','IctController_updateStatusSubmit',null,'Bowo','887','1086');
Insert into INVENICT.IREQ_MST (IREQ_ID,IREQ_NO,IREQ_DATE,IREQ_TYPE,IREQ_REQUESTOR,IREQ_BU,IREQ_APPROVER1,IREQ_VERIFICATOR,IREQ_APPROVER2,IREQ_STATUS,IREQ_REASON,IREC_REMARK,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,IREQ_ASSIGNED_TO,IREQ_USER,IREQ_DIVISI_REQUESTOR,IREQ_DIVISI_USER) values ('270','269',to_date('13-11-2015','DD-MM-RRRR'),'S','user 1','22',null,null,null,'P',null,null,to_date('10-11-2021','DD-MM-RRRR'),'user 1',to_date('15-11-2021','DD-MM-RRRR'),'user 1','IctController_updateStatusSubmit',null,'Siska','887','1021');
Insert into INVENICT.IREQ_MST (IREQ_ID,IREQ_NO,IREQ_DATE,IREQ_TYPE,IREQ_REQUESTOR,IREQ_BU,IREQ_APPROVER1,IREQ_VERIFICATOR,IREQ_APPROVER2,IREQ_STATUS,IREQ_REASON,IREC_REMARK,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,IREQ_ASSIGNED_TO,IREQ_USER,IREQ_DIVISI_REQUESTOR,IREQ_DIVISI_USER) values ('272','271',to_date('11-11-2016','DD-MM-RRRR'),'S','user 1','22',null,null,null,'P',null,null,to_date('10-11-2021','DD-MM-RRRR'),'user 1',to_date('15-11-2021','DD-MM-RRRR'),'user 1','IctController_updateStatusSubmit',null,'Fitri','887','1021');
Insert into INVENICT.IREQ_MST (IREQ_ID,IREQ_NO,IREQ_DATE,IREQ_TYPE,IREQ_REQUESTOR,IREQ_BU,IREQ_APPROVER1,IREQ_VERIFICATOR,IREQ_APPROVER2,IREQ_STATUS,IREQ_REASON,IREC_REMARK,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,IREQ_ASSIGNED_TO,IREQ_USER,IREQ_DIVISI_REQUESTOR,IREQ_DIVISI_USER) values ('273','274',to_date('17-11-2017','DD-MM-RRRR'),'P','user 1','08',null,null,null,'R','Alasan Di reject',null,to_date('15-11-2021','DD-MM-RRRR'),'user 1',to_date('15-11-2021','DD-MM-RRRR'),'user 1','IctController_updateStatusSubmit',null,'Wawan','1021','1021');
Insert into INVENICT.IREQ_MST (IREQ_ID,IREQ_NO,IREQ_DATE,IREQ_TYPE,IREQ_REQUESTOR,IREQ_BU,IREQ_APPROVER1,IREQ_VERIFICATOR,IREQ_APPROVER2,IREQ_STATUS,IREQ_REASON,IREC_REMARK,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,IREQ_ASSIGNED_TO,IREQ_USER,IREQ_DIVISI_REQUESTOR,IREQ_DIVISI_USER) values ('275','276',to_date('09-11-2018','DD-MM-RRRR'),'P','user 1','08',null,null,null,'A',null,null,to_date('15-11-2021','DD-MM-RRRR'),'user 1',to_date('15-11-2021','DD-MM-RRRR'),'user 1','IctController_updateStatusSubmit',null,'Farhan','1021','1021');
Insert into INVENICT.IREQ_MST (IREQ_ID,IREQ_NO,IREQ_DATE,IREQ_TYPE,IREQ_REQUESTOR,IREQ_BU,IREQ_APPROVER1,IREQ_VERIFICATOR,IREQ_APPROVER2,IREQ_STATUS,IREQ_REASON,IREC_REMARK,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,IREQ_ASSIGNED_TO,IREQ_USER,IREQ_DIVISI_REQUESTOR,IREQ_DIVISI_USER) values ('277','278',to_date('11-11-2019','DD-MM-RRRR'),'P','user 1','08',null,null,null,'R','Direject',null,to_date('15-11-2021','DD-MM-RRRR'),'user 1',to_date('15-11-2021','DD-MM-RRRR'),'user 1','IctController_updateStatusSubmit',null,'Tomi','1036','809');
Insert into INVENICT.IREQ_MST (IREQ_ID,IREQ_NO,IREQ_DATE,IREQ_TYPE,IREQ_REQUESTOR,IREQ_BU,IREQ_APPROVER1,IREQ_VERIFICATOR,IREQ_APPROVER2,IREQ_STATUS,IREQ_REASON,IREC_REMARK,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,IREQ_ASSIGNED_TO,IREQ_USER,IREQ_DIVISI_REQUESTOR,IREQ_DIVISI_USER) values ('279','280',to_date('09-11-2019','DD-MM-RRRR'),'P','user 1','08',null,null,null,'A',null,null,to_date('15-11-2021','DD-MM-RRRR'),'user 1',to_date('15-11-2021','DD-MM-RRRR'),'user 1','IctController_updateStatusSubmit',null,'Susi','1021','887');
Insert into INVENICT.IREQ_MST (IREQ_ID,IREQ_NO,IREQ_DATE,IREQ_TYPE,IREQ_REQUESTOR,IREQ_BU,IREQ_APPROVER1,IREQ_VERIFICATOR,IREQ_APPROVER2,IREQ_STATUS,IREQ_REASON,IREC_REMARK,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,IREQ_ASSIGNED_TO,IREQ_USER,IREQ_DIVISI_REQUESTOR,IREQ_DIVISI_USER) values ('281','282',to_date('11-11-2018','DD-MM-RRRR'),'S','user 1','08',null,null,null,'A',null,null,to_date('15-11-2021','DD-MM-RRRR'),'user 1',to_date('15-11-2021','DD-MM-RRRR'),'user 1','IctController_updateStatusSubmit',null,'Panji','1036','1036');
Insert into INVENICT.IREQ_MST (IREQ_ID,IREQ_NO,IREQ_DATE,IREQ_TYPE,IREQ_REQUESTOR,IREQ_BU,IREQ_APPROVER1,IREQ_VERIFICATOR,IREQ_APPROVER2,IREQ_STATUS,IREQ_REASON,IREC_REMARK,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,IREQ_ASSIGNED_TO,IREQ_USER,IREQ_DIVISI_REQUESTOR,IREQ_DIVISI_USER) values ('283','284',to_date('08-11-2019','DD-MM-RRRR'),'S','user 1','08',null,null,null,'C',null,null,to_date('15-11-2021','DD-MM-RRRR'),'user 1',to_date('15-11-2021','DD-MM-RRRR'),'user 1','IctController_updateStatusSubmit','BAYU INDRAWAN','Tito','906','906');
Insert into INVENICT.IREQ_MST (IREQ_ID,IREQ_NO,IREQ_DATE,IREQ_TYPE,IREQ_REQUESTOR,IREQ_BU,IREQ_APPROVER1,IREQ_VERIFICATOR,IREQ_APPROVER2,IREQ_STATUS,IREQ_REASON,IREC_REMARK,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,IREQ_ASSIGNED_TO,IREQ_USER,IREQ_DIVISI_REQUESTOR,IREQ_DIVISI_USER) values ('285','286',to_date('09-11-2018','DD-MM-RRRR'),'S','user 1','08',null,null,null,'C',null,null,to_date('15-11-2021','DD-MM-RRRR'),'user 1',to_date('15-11-2021','DD-MM-RRRR'),'user 1','IctController_updateStatusSubmit','ARIEF WICAKSONO A.','Deswanto','906','906');
REM INSERTING into INVENICT.LOOKUP_REFS
SET DEFINE OFF;
Insert into INVENICT.LOOKUP_REFS (LOOKUP_TYPE,LOOKUP_CODE,LOOKUP_DESC,LOOKUP_STATUS,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('Merk','L','Lenovo','T',to_date('21-07-2021','DD-MM-RRRR'),'test',to_date('21-07-2021','DD-MM-RRRR'),null,'y');
Insert into INVENICT.LOOKUP_REFS (LOOKUP_TYPE,LOOKUP_CODE,LOOKUP_DESC,LOOKUP_STATUS,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('Req_status','R','Request','T',to_date('14-09-2021','DD-MM-RRRR'),'coba',null,null,'Lookups_Save');
Insert into INVENICT.LOOKUP_REFS (LOOKUP_TYPE,LOOKUP_CODE,LOOKUP_DESC,LOOKUP_STATUS,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('Merk','S','Samsung','T',to_date('21-07-2021','DD-MM-RRRR'),'test',to_date('21-07-2021','DD-MM-RRRR'),null,'y');
Insert into INVENICT.LOOKUP_REFS (LOOKUP_TYPE,LOOKUP_CODE,LOOKUP_DESC,LOOKUP_STATUS,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('Merk','H','Hp','T',to_date('21-07-2021','DD-MM-RRRR'),'test',to_date('21-07-2021','DD-MM-RRRR'),null,'y');
Insert into INVENICT.LOOKUP_REFS (LOOKUP_TYPE,LOOKUP_CODE,LOOKUP_DESC,LOOKUP_STATUS,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('Kondisi','B','Bagus','T',to_date('21-07-2021','DD-MM-RRRR'),'test',to_date('13-09-2021','DD-MM-RRRR'),'coba','Lookups_Update');
Insert into INVENICT.LOOKUP_REFS (LOOKUP_TYPE,LOOKUP_CODE,LOOKUP_DESC,LOOKUP_STATUS,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('Kondisi','C','Cacat','T',to_date('21-07-2021','DD-MM-RRRR'),'test',to_date('21-07-2021','DD-MM-RRRR'),null,'y');
Insert into INVENICT.LOOKUP_REFS (LOOKUP_TYPE,LOOKUP_CODE,LOOKUP_DESC,LOOKUP_STATUS,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('Req_status','A','Assigned','T',to_date('21-08-2021','DD-MM-RRRR'),'test',to_date('21-08-2021','DD-MM-RRRR'),null,'y');
Insert into INVENICT.LOOKUP_REFS (LOOKUP_TYPE,LOOKUP_CODE,LOOKUP_DESC,LOOKUP_STATUS,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('Req_status','D','Done','T',to_date('14-09-2021','DD-MM-RRRR'),'coba',null,null,'Lookups_Save');
Insert into INVENICT.LOOKUP_REFS (LOOKUP_TYPE,LOOKUP_CODE,LOOKUP_DESC,LOOKUP_STATUS,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('Ict_status','T','Penugasan','T',to_date('25-10-2021','DD-MM-RRRR'),'user 1',null,null,'Lookups_Save');
Insert into INVENICT.LOOKUP_REFS (LOOKUP_TYPE,LOOKUP_CODE,LOOKUP_DESC,LOOKUP_STATUS,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('Mata Uang','Rp','Rupiah','T',to_date('10-08-2021','DD-MM-RRRR'),null,null,null,'y');
Insert into INVENICT.LOOKUP_REFS (LOOKUP_TYPE,LOOKUP_CODE,LOOKUP_DESC,LOOKUP_STATUS,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('Mata Uang','$','USD','T',to_date('10-08-2021','DD-MM-RRRR'),null,null,null,'y');
Insert into INVENICT.LOOKUP_REFS (LOOKUP_TYPE,LOOKUP_CODE,LOOKUP_DESC,LOOKUP_STATUS,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('Mata Uang','�','CNY','T',to_date('10-08-2021','DD-MM-RRRR'),null,null,null,'y');
Insert into INVENICT.LOOKUP_REFS (LOOKUP_TYPE,LOOKUP_CODE,LOOKUP_DESC,LOOKUP_STATUS,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('Req_type','S','Service','T',to_date('12-10-2021','DD-MM-RRRR'),'user 1',null,null,'Lookups_Save');
Insert into INVENICT.LOOKUP_REFS (LOOKUP_TYPE,LOOKUP_CODE,LOOKUP_DESC,LOOKUP_STATUS,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('Pay Methode','TF','Transfer Bank','T',to_date('21-08-2021','DD-MM-RRRR'),'test',to_date('21-08-2021','DD-MM-RRRR'),null,'y');
Insert into INVENICT.LOOKUP_REFS (LOOKUP_TYPE,LOOKUP_CODE,LOOKUP_DESC,LOOKUP_STATUS,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('Satuan','KG','Kilogram(Kg)','T',to_date('09-08-2021','DD-MM-RRRR'),null,null,null,'y');
Insert into INVENICT.LOOKUP_REFS (LOOKUP_TYPE,LOOKUP_CODE,LOOKUP_DESC,LOOKUP_STATUS,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('Satuan','P','Pieces (Pcs)','T',to_date('09-08-2021','DD-MM-RRRR'),null,null,null,'y');
Insert into INVENICT.LOOKUP_REFS (LOOKUP_TYPE,LOOKUP_CODE,LOOKUP_DESC,LOOKUP_STATUS,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('Req_status','C','CA','T',to_date('14-09-2021','DD-MM-RRRR'),'coba',null,null,'Lookups_Save');
Insert into INVENICT.LOOKUP_REFS (LOOKUP_TYPE,LOOKUP_CODE,LOOKUP_DESC,LOOKUP_STATUS,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('Ict_status','D','Done','T',to_date('15-10-2021','DD-MM-RRRR'),'user 1',null,null,'Lookups_Save');
Insert into INVENICT.LOOKUP_REFS (LOOKUP_TYPE,LOOKUP_CODE,LOOKUP_DESC,LOOKUP_STATUS,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('Req_type','P','Peripheral','T',to_date('12-10-2021','DD-MM-RRRR'),'user 1',null,null,'Lookups_Save');
REM INSERTING into INVENICT.MENU
SET DEFINE OFF;
REM INSERTING into INVENICT.MIGRATIONS
SET DEFINE OFF;
Insert into INVENICT.MIGRATIONS (ID,MIGRATION,BATCH) values ('1','2019_12_14_000001_create_personal_access_tokens_table','1');
REM INSERTING into INVENICT.MNG_HELPS
SET DEFINE OFF;
REM INSERTING into INVENICT.MNG_MENUS
SET DEFINE OFF;
Insert into INVENICT.MNG_MENUS (MENU_ID,MOD_ID,MNG_MENU_ID,MENU_NAME,MENU_DESC,MENU_DISPLAY,MENU_TYPE,MENU_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,CONTROLLER,ACTION,PARENT_ID) values ('5','1',null,'Cash Advance','Menampilkan menu cash advance','Cash Advance','L','T',to_date('06-10-2021','DD-MM-RRRR'),'user 1',to_date('14-10-2021','DD-MM-RRRR'),'user 1','MngMenuController@update','/cash-advance',null,null);
Insert into INVENICT.MNG_MENUS (MENU_ID,MOD_ID,MNG_MENU_ID,MENU_NAME,MENU_DESC,MENU_DISPLAY,MENU_TYPE,MENU_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,CONTROLLER,ACTION,PARENT_ID) values ('6','1',null,'ICT Request','untuk menampilkan ict  request','ICT Request','L','T',to_date('11-10-2021','DD-MM-RRRR'),'user 1',to_date('28-10-2021','DD-MM-RRRR'),'user 1','MngMenuController@update','/ict-request',null,'26');
Insert into INVENICT.MNG_MENUS (MENU_ID,MOD_ID,MNG_MENU_ID,MENU_NAME,MENU_DESC,MENU_DISPLAY,MENU_TYPE,MENU_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,CONTROLLER,ACTION,PARENT_ID) values ('7','1',null,'Mutasi Peripheral','Menampilkan Menu Mutasi Peripheral','Mutasi Peripheral','L','T',to_date('11-10-2021','DD-MM-RRRR'),'user 1',to_date('28-10-2021','DD-MM-RRRR'),'user 1','MngMenuController@update','/mutasi-peripheral',null,'21');
Insert into INVENICT.MNG_MENUS (MENU_ID,MOD_ID,MNG_MENU_ID,MENU_NAME,MENU_DESC,MENU_DISPLAY,MENU_TYPE,MENU_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,CONTROLLER,ACTION,PARENT_ID) values ('8','1',null,'Master Peripheral','Untuk menampilkan master peripheral','Master Peripheral','L','T',to_date('14-10-2021','DD-MM-RRRR'),'user 1',to_date('28-10-2021','DD-MM-RRRR'),'user 1','MngMenuController@update','/master-peripheral',null,'21');
Insert into INVENICT.MNG_MENUS (MENU_ID,MOD_ID,MNG_MENU_ID,MENU_NAME,MENU_DESC,MENU_DISPLAY,MENU_TYPE,MENU_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,CONTROLLER,ACTION,PARENT_ID) values ('21','1',null,'Peripheral','Menampilkan Node Peripheral','Peripheral','N','T',to_date('28-10-2021','DD-MM-RRRR'),'user 1',null,null,'MngMenuController_Save',null,null,null);
Insert into INVENICT.MNG_MENUS (MENU_ID,MOD_ID,MNG_MENU_ID,MENU_NAME,MENU_DESC,MENU_DISPLAY,MENU_TYPE,MENU_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,CONTROLLER,ACTION,PARENT_ID) values ('22','1',null,'Pembelian Peripheral','Untuk Menampilkan Menu Pembelian Peripheral','Pembelian Peripheral','L','T',to_date('28-10-2021','DD-MM-RRRR'),'user 1',null,null,'MngMenuController_Save','/pembelian-peripheral',null,'21');
Insert into INVENICT.MNG_MENUS (MENU_ID,MOD_ID,MNG_MENU_ID,MENU_NAME,MENU_DESC,MENU_DISPLAY,MENU_TYPE,MENU_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,CONTROLLER,ACTION,PARENT_ID) values ('23','1',null,'ICT Request Divisi 1','Menampilkan ICT Request Divisi 1','ICT Request Divisi 1','L','T',to_date('28-10-2021','DD-MM-RRRR'),'user 1',to_date('28-10-2021','DD-MM-RRRR'),'user 1','MngMenuController@update','/ict-request-divisi1',null,'26');
Insert into INVENICT.MNG_MENUS (MENU_ID,MOD_ID,MNG_MENU_ID,MENU_NAME,MENU_DESC,MENU_DISPLAY,MENU_TYPE,MENU_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,CONTROLLER,ACTION,PARENT_ID) values ('24','1',null,'Ict request divisi 2','Untuk menampilkan menu ict request divisi 2','ICT Request Divisi 2','L','T',to_date('28-10-2021','DD-MM-RRRR'),'user 1',to_date('28-10-2021','DD-MM-RRRR'),'user 1','MngMenuController@update','/ict-request-divisi2',null,'26');
Insert into INVENICT.MNG_MENUS (MENU_ID,MOD_ID,MNG_MENU_ID,MENU_NAME,MENU_DESC,MENU_DISPLAY,MENU_TYPE,MENU_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,CONTROLLER,ACTION,PARENT_ID) values ('25','1',null,'Ict request divisi 3','Untuk menampilkan menu ict request divisi 3','ICT Request Divisi 3','L','T',to_date('28-10-2021','DD-MM-RRRR'),'user 1',to_date('28-10-2021','DD-MM-RRRR'),'user 1','MngMenuController@update','/ict-request-divisi3',null,'26');
Insert into INVENICT.MNG_MENUS (MENU_ID,MOD_ID,MNG_MENU_ID,MENU_NAME,MENU_DESC,MENU_DISPLAY,MENU_TYPE,MENU_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,CONTROLLER,ACTION,PARENT_ID) values ('26','1',null,'ICT Request','Menampilkan Node Ict','ICT Request','N','T',to_date('28-10-2021','DD-MM-RRRR'),'user 1',null,null,'MngMenuController_Save',null,null,null);
Insert into INVENICT.MNG_MENUS (MENU_ID,MOD_ID,MNG_MENU_ID,MENU_NAME,MENU_DESC,MENU_DISPLAY,MENU_TYPE,MENU_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,CONTROLLER,ACTION,PARENT_ID) values ('41','1',null,'Management Menu','Menampilkan Menu','Management Menu','L','T',to_date('28-10-2021','DD-MM-RRRR'),'user 1',null,null,'MngMenuController_Save','/mng-menu',null,null);
Insert into INVENICT.MNG_MENUS (MENU_ID,MOD_ID,MNG_MENU_ID,MENU_NAME,MENU_DESC,MENU_DISPLAY,MENU_TYPE,MENU_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,CONTROLLER,ACTION,PARENT_ID) values ('42','1',null,'Management User','Menampilkan Menu User','Management User','L','T',to_date('28-10-2021','DD-MM-RRRR'),'user 1',null,null,'MngMenuController_Save','/mng-user',null,null);
Insert into INVENICT.MNG_MENUS (MENU_ID,MOD_ID,MNG_MENU_ID,MENU_NAME,MENU_DESC,MENU_DISPLAY,MENU_TYPE,MENU_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,CONTROLLER,ACTION,PARENT_ID) values ('43','1',null,'Management Role','Untuk Menampilkan Role','Management Role','L','T',to_date('28-10-2021','DD-MM-RRRR'),'user 1',null,null,'MngMenuController_Save','/mng-role',null,null);
Insert into INVENICT.MNG_MENUS (MENU_ID,MOD_ID,MNG_MENU_ID,MENU_NAME,MENU_DESC,MENU_DISPLAY,MENU_TYPE,MENU_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,CONTROLLER,ACTION,PARENT_ID) values ('44','1',null,'Referensi Lookups','Menampilkan Menu Lookups','Referensi Lookups','L','T',to_date('28-10-2021','DD-MM-RRRR'),'user 1',null,null,'MngMenuController_Save','/referensi-lookups',null,null);
Insert into INVENICT.MNG_MENUS (MENU_ID,MOD_ID,MNG_MENU_ID,MENU_NAME,MENU_DESC,MENU_DISPLAY,MENU_TYPE,MENU_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,CONTROLLER,ACTION,PARENT_ID) values ('45','1',null,'Referensi Suplier','Untuk Menampilkan Menu Suplier','Referensi Suplier','L','T',to_date('28-10-2021','DD-MM-RRRR'),'user 1',null,null,'MngMenuController_Save','/referensi-supplier',null,null);
Insert into INVENICT.MNG_MENUS (MENU_ID,MOD_ID,MNG_MENU_ID,MENU_NAME,MENU_DESC,MENU_DISPLAY,MENU_TYPE,MENU_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,CONTROLLER,ACTION,PARENT_ID) values ('61','1',null,'Divisi Refs','Menampilkan Menu Divisi','Divisi Refs','L','T',to_date('07-11-2021','DD-MM-RRRR'),'user 1',null,null,'MngMenuController_Save','/divisi-refs',null,null);
Insert into INVENICT.MNG_MENUS (MENU_ID,MOD_ID,MNG_MENU_ID,MENU_NAME,MENU_DESC,MENU_DISPLAY,MENU_TYPE,MENU_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,CONTROLLER,ACTION,PARENT_ID) values ('62','1',null,'Dashboard','Menampilkan Dashbard','Dashboard','L','T',to_date('09-11-2021','DD-MM-RRRR'),'user 1',to_date('09-11-2021','DD-MM-RRRR'),'user 1','MngMenuController@update','/dashboard',null,null);
Insert into INVENICT.MNG_MENUS (MENU_ID,MOD_ID,MNG_MENU_ID,MENU_NAME,MENU_DESC,MENU_DISPLAY,MENU_TYPE,MENU_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,CONTROLLER,ACTION,PARENT_ID) values ('81','1',null,'Grafik','Menampilkan grafik','Grafik','L','T',to_date('17-11-2021','DD-MM-RRRR'),'user 1',null,null,'MngMenuController_Save','/grafik',null,null);
REM INSERTING into INVENICT.MNG_MODULES
SET DEFINE OFF;
Insert into INVENICT.MNG_MODULES (MOD_ID,MOD_NAME,MOD_DESC,MOD_STAT,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,CREATION_DATE) values ('1','ICT','ICT','T','user 1',to_date('06-10-2021','DD-MM-RRRR'),'user 1','ModuleController_SAVE',to_date('05-10-2021','DD-MM-RRRR'));
REM INSERTING into INVENICT.MNG_ROLES
SET DEFINE OFF;
Insert into INVENICT.MNG_ROLES (ROL_ID,ROL_NAME,ROL_DESC,ROL_STAT,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,CREATION_DATE) values ('66','Helpdesk','Helpdesk','T','user 1',to_date('10-11-2021','DD-MM-RRRR'),'user 1','MngRolesController_UUPDATE',to_date('12-10-2021','DD-MM-RRRR'));
Insert into INVENICT.MNG_ROLES (ROL_ID,ROL_NAME,ROL_DESC,ROL_STAT,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,CREATION_DATE) values ('64','Admin','Admin','T','user 1',to_date('17-11-2021','DD-MM-RRRR'),'user 1','MngRolesController_UUPDATE',to_date('12-10-2021','DD-MM-RRRR'));
Insert into INVENICT.MNG_ROLES (ROL_ID,ROL_NAME,ROL_DESC,ROL_STAT,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,CREATION_DATE) values ('65','General','General','T','user 1',to_date('12-10-2021','DD-MM-RRRR'),'user 1','MngRolesController_UUPDATE',to_date('12-10-2021','DD-MM-RRRR'));
Insert into INVENICT.MNG_ROLES (ROL_ID,ROL_NAME,ROL_DESC,ROL_STAT,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,CREATION_DATE) values ('68','Admin 2','admin 2','T','user 1',to_date('07-11-2021','DD-MM-RRRR'),'user 1','MngRolesController_UUPDATE',to_date('14-10-2021','DD-MM-RRRR'));
Insert into INVENICT.MNG_ROLES (ROL_ID,ROL_NAME,ROL_DESC,ROL_STAT,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,CREATION_DATE) values ('69','IT ICT','IT ICT','T','user 1',to_date('10-11-2021','DD-MM-RRRR'),'user 1','MngRolesController_UUPDATE',to_date('08-11-2021','DD-MM-RRRR'));
Insert into INVENICT.MNG_ROLES (ROL_ID,ROL_NAME,ROL_DESC,ROL_STAT,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,CREATION_DATE) values ('70','Atasan','Atasan Tiap Divisi','T','user 1',to_date('10-11-2021','DD-MM-RRRR'),'user 1','MngRolesController_UUPDATE',to_date('08-11-2021','DD-MM-RRRR'));
Insert into INVENICT.MNG_ROLES (ROL_ID,ROL_NAME,ROL_DESC,ROL_STAT,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,CREATION_DATE) values ('71','User','User biasa','T','user 1',to_date('10-11-2021','DD-MM-RRRR'),'user 1','MngRolesController_UUPDATE',to_date('08-11-2021','DD-MM-RRRR'));
Insert into INVENICT.MNG_ROLES (ROL_ID,ROL_NAME,ROL_DESC,ROL_STAT,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,CREATION_DATE) values ('72','Personel ICT','ICT','T','user 1',to_date('10-11-2021','DD-MM-RRRR'),'user 1','MngRolesController_UUPDATE',to_date('08-11-2021','DD-MM-RRRR'));
REM INSERTING into INVENICT.MNG_ROLE_MENUS
SET DEFINE OFF;
Insert into INVENICT.MNG_ROLE_MENUS (ROLM_ID,MENU_ID,ROL_ID,ROLM_PRIV,ROLM_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('285','7','64',null,'T',to_date('12-10-2021','DD-MM-RRRR'),'user 1',to_date('17-11-2021','DD-MM-RRRR'),'user 1','MngRoleMenuController_UPDATE');
Insert into INVENICT.MNG_ROLE_MENUS (ROLM_ID,MENU_ID,ROL_ID,ROLM_PRIV,ROLM_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('195','5','65',null,'T',to_date('12-10-2021','DD-MM-RRRR'),'user 1',to_date('12-10-2021','DD-MM-RRRR'),'user 1','MngRoleMenuController_UPDATE');
Insert into INVENICT.MNG_ROLE_MENUS (ROLM_ID,MENU_ID,ROL_ID,ROLM_PRIV,ROLM_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('239','6','68',null,'T',to_date('14-10-2021','DD-MM-RRRR'),'user 1',to_date('07-11-2021','DD-MM-RRRR'),'user 1','MngRoleMenuController_UPDATE');
Insert into INVENICT.MNG_ROLE_MENUS (ROLM_ID,MENU_ID,ROL_ID,ROLM_PRIV,ROLM_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('286','8','64',null,'T',to_date('12-10-2021','DD-MM-RRRR'),'user 1',to_date('17-11-2021','DD-MM-RRRR'),'user 1','MngRoleMenuController_UPDATE');
Insert into INVENICT.MNG_ROLE_MENUS (ROLM_ID,MENU_ID,ROL_ID,ROLM_PRIV,ROLM_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('287','22','64',null,'T',to_date('12-10-2021','DD-MM-RRRR'),'user 1',to_date('17-11-2021','DD-MM-RRRR'),'user 1','MngRoleMenuController_UPDATE');
Insert into INVENICT.MNG_ROLE_MENUS (ROLM_ID,MENU_ID,ROL_ID,ROLM_PRIV,ROLM_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('197','7','65',null,'T',to_date('12-10-2021','DD-MM-RRRR'),'user 1',to_date('12-10-2021','DD-MM-RRRR'),'user 1','MngRoleMenuController_UPDATE');
Insert into INVENICT.MNG_ROLE_MENUS (ROLM_ID,MENU_ID,ROL_ID,ROLM_PRIV,ROLM_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('288','23','64',null,'T',to_date('12-10-2021','DD-MM-RRRR'),'user 1',to_date('17-11-2021','DD-MM-RRRR'),'user 1','MngRoleMenuController_UPDATE');
Insert into INVENICT.MNG_ROLE_MENUS (ROLM_ID,MENU_ID,ROL_ID,ROLM_PRIV,ROLM_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('196','6','65',null,'T',to_date('12-10-2021','DD-MM-RRRR'),'user 1',to_date('12-10-2021','DD-MM-RRRR'),'user 1','MngRoleMenuController_UPDATE');
Insert into INVENICT.MNG_ROLE_MENUS (ROLM_ID,MENU_ID,ROL_ID,ROLM_PRIV,ROLM_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('289','24','64',null,'T',to_date('12-10-2021','DD-MM-RRRR'),'user 1',to_date('17-11-2021','DD-MM-RRRR'),'user 1','MngRoleMenuController_UPDATE');
Insert into INVENICT.MNG_ROLE_MENUS (ROLM_ID,MENU_ID,ROL_ID,ROLM_PRIV,ROLM_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('290','25','64',null,'T',to_date('12-10-2021','DD-MM-RRRR'),'user 1',to_date('17-11-2021','DD-MM-RRRR'),'user 1','MngRoleMenuController_UPDATE');
Insert into INVENICT.MNG_ROLE_MENUS (ROLM_ID,MENU_ID,ROL_ID,ROLM_PRIV,ROLM_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('291','41','64',null,'T',to_date('12-10-2021','DD-MM-RRRR'),'user 1',to_date('17-11-2021','DD-MM-RRRR'),'user 1','MngRoleMenuController_UPDATE');
Insert into INVENICT.MNG_ROLE_MENUS (ROLM_ID,MENU_ID,ROL_ID,ROLM_PRIV,ROLM_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('292','42','64',null,'T',to_date('12-10-2021','DD-MM-RRRR'),'user 1',to_date('17-11-2021','DD-MM-RRRR'),'user 1','MngRoleMenuController_UPDATE');
Insert into INVENICT.MNG_ROLE_MENUS (ROLM_ID,MENU_ID,ROL_ID,ROLM_PRIV,ROLM_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('293','43','64',null,'T',to_date('12-10-2021','DD-MM-RRRR'),'user 1',to_date('17-11-2021','DD-MM-RRRR'),'user 1','MngRoleMenuController_UPDATE');
Insert into INVENICT.MNG_ROLE_MENUS (ROLM_ID,MENU_ID,ROL_ID,ROLM_PRIV,ROLM_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('294','44','64',null,'T',to_date('12-10-2021','DD-MM-RRRR'),'user 1',to_date('17-11-2021','DD-MM-RRRR'),'user 1','MngRoleMenuController_UPDATE');
Insert into INVENICT.MNG_ROLE_MENUS (ROLM_ID,MENU_ID,ROL_ID,ROLM_PRIV,ROLM_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('295','45','64',null,'T',to_date('12-10-2021','DD-MM-RRRR'),'user 1',to_date('17-11-2021','DD-MM-RRRR'),'user 1','MngRoleMenuController_UPDATE');
Insert into INVENICT.MNG_ROLE_MENUS (ROLM_ID,MENU_ID,ROL_ID,ROLM_PRIV,ROLM_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('296','61','64',null,'T',to_date('12-10-2021','DD-MM-RRRR'),'user 1',to_date('17-11-2021','DD-MM-RRRR'),'user 1','MngRoleMenuController_UPDATE');
Insert into INVENICT.MNG_ROLE_MENUS (ROLM_ID,MENU_ID,ROL_ID,ROLM_PRIV,ROLM_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('297','62','64',null,'T',to_date('12-10-2021','DD-MM-RRRR'),'user 1',to_date('17-11-2021','DD-MM-RRRR'),'user 1','MngRoleMenuController_UPDATE');
Insert into INVENICT.MNG_ROLE_MENUS (ROLM_ID,MENU_ID,ROL_ID,ROLM_PRIV,ROLM_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('298','81','64',null,'T',to_date('12-10-2021','DD-MM-RRRR'),'user 1',to_date('17-11-2021','DD-MM-RRRR'),'user 1','MngRoleMenuController_UPDATE');
Insert into INVENICT.MNG_ROLE_MENUS (ROLM_ID,MENU_ID,ROL_ID,ROLM_PRIV,ROLM_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('282','62','69',null,'T',to_date('08-11-2021','DD-MM-RRRR'),'user 1',to_date('10-11-2021','DD-MM-RRRR'),'user 1','MngRoleMenuController_UPDATE');
Insert into INVENICT.MNG_ROLE_MENUS (ROLM_ID,MENU_ID,ROL_ID,ROLM_PRIV,ROLM_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('278','62','70',null,'T',to_date('08-11-2021','DD-MM-RRRR'),'user 1',to_date('10-11-2021','DD-MM-RRRR'),'user 1','MngRoleMenuController_UPDATE');
Insert into INVENICT.MNG_ROLE_MENUS (ROLM_ID,MENU_ID,ROL_ID,ROLM_PRIV,ROLM_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('281','24','69',null,'T',to_date('08-11-2021','DD-MM-RRRR'),'user 1',to_date('10-11-2021','DD-MM-RRRR'),'user 1','MngRoleMenuController_UPDATE');
Insert into INVENICT.MNG_ROLE_MENUS (ROLM_ID,MENU_ID,ROL_ID,ROLM_PRIV,ROLM_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('277','23','70',null,'T',to_date('08-11-2021','DD-MM-RRRR'),'user 1',to_date('10-11-2021','DD-MM-RRRR'),'user 1','MngRoleMenuController_UPDATE');
Insert into INVENICT.MNG_ROLE_MENUS (ROLM_ID,MENU_ID,ROL_ID,ROLM_PRIV,ROLM_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('274','62','72',null,'T',to_date('08-11-2021','DD-MM-RRRR'),'user 1',to_date('10-11-2021','DD-MM-RRRR'),'user 1','MngRoleMenuController_UPDATE');
Insert into INVENICT.MNG_ROLE_MENUS (ROLM_ID,MENU_ID,ROL_ID,ROLM_PRIV,ROLM_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('273','25','72',null,'T',to_date('08-11-2021','DD-MM-RRRR'),'user 1',to_date('10-11-2021','DD-MM-RRRR'),'user 1','MngRoleMenuController_UPDATE');
Insert into INVENICT.MNG_ROLE_MENUS (ROLM_ID,MENU_ID,ROL_ID,ROLM_PRIV,ROLM_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('275','6','71',null,'T',to_date('08-11-2021','DD-MM-RRRR'),'user 1',to_date('10-11-2021','DD-MM-RRRR'),'user 1','MngRoleMenuController_UPDATE');
Insert into INVENICT.MNG_ROLE_MENUS (ROLM_ID,MENU_ID,ROL_ID,ROLM_PRIV,ROLM_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('276','62','71',null,'T',to_date('08-11-2021','DD-MM-RRRR'),'user 1',to_date('10-11-2021','DD-MM-RRRR'),'user 1','MngRoleMenuController_UPDATE');
Insert into INVENICT.MNG_ROLE_MENUS (ROLM_ID,MENU_ID,ROL_ID,ROLM_PRIV,ROLM_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('279','6','66',null,'T',to_date('12-10-2021','DD-MM-RRRR'),'user 1',to_date('10-11-2021','DD-MM-RRRR'),'user 1','MngRoleMenuController_UPDATE');
Insert into INVENICT.MNG_ROLE_MENUS (ROLM_ID,MENU_ID,ROL_ID,ROLM_PRIV,ROLM_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('280','62','66',null,'T',to_date('12-10-2021','DD-MM-RRRR'),'user 1',to_date('10-11-2021','DD-MM-RRRR'),'user 1','MngRoleMenuController_UPDATE');
Insert into INVENICT.MNG_ROLE_MENUS (ROLM_ID,MENU_ID,ROL_ID,ROLM_PRIV,ROLM_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('283','5','64',null,'T',to_date('12-10-2021','DD-MM-RRRR'),'user 1',to_date('17-11-2021','DD-MM-RRRR'),'user 1','MngRoleMenuController_UPDATE');
Insert into INVENICT.MNG_ROLE_MENUS (ROLM_ID,MENU_ID,ROL_ID,ROLM_PRIV,ROLM_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('284','6','64',null,'T',to_date('12-10-2021','DD-MM-RRRR'),'user 1',to_date('17-11-2021','DD-MM-RRRR'),'user 1','MngRoleMenuController_UPDATE');
REM INSERTING into INVENICT.MNG_USERS
SET DEFINE OFF;
Insert into INVENICT.MNG_USERS (USR_ID,UREG_NUM,KDSATKER,KDDEPT,KDUNIT,USR_NAME,USR_FULLNAME,USR_PASSWD,USR_ALAMAT,USR_NIP,USR_EMAIL,USR_NPWP,USR_JABATAN,USR_NM_PERUSH,USR_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,KDDEPT_UNIT,WABA_ID,USR_FOTO,DIV_ID) values ('1',null,null,null,null,'user 1','wantoko','$2y$10$L2dJUc2Ph5k/iEavQ0m22u8A14HggimKbjgz..aw91.dHnSLGwgMi','test alamat',null,'admin@gmail.com',null,null,null,'T',null,null,to_date('08-11-2021','DD-MM-RRRR'),'user 1','MngUserController_UPDATE',null,null,'1636345102.png','887');
Insert into INVENICT.MNG_USERS (USR_ID,UREG_NUM,KDSATKER,KDDEPT,KDUNIT,USR_NAME,USR_FULLNAME,USR_PASSWD,USR_ALAMAT,USR_NIP,USR_EMAIL,USR_NPWP,USR_JABATAN,USR_NM_PERUSH,USR_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,KDDEPT_UNIT,WABA_ID,USR_FOTO,DIV_ID) values ('1466',null,null,null,null,'wahyu','Wahyudi','$2y$10$JsZhdhicvJTUSZPh9aRs4.huMzggDpWs9XsqiwTu4ycukf33heX4u','jln jln',null,'wahyu@email.com',null,null,null,'T',to_date('27-09-2021','DD-MM-RRRR'),'user 1',to_date('09-11-2021','DD-MM-RRRR'),'user 1','MngUserController_UPDATE',null,null,'1634201891.png','976');
Insert into INVENICT.MNG_USERS (USR_ID,UREG_NUM,KDSATKER,KDDEPT,KDUNIT,USR_NAME,USR_FULLNAME,USR_PASSWD,USR_ALAMAT,USR_NIP,USR_EMAIL,USR_NPWP,USR_JABATAN,USR_NM_PERUSH,USR_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,KDDEPT_UNIT,WABA_ID,USR_FOTO,DIV_ID) values ('1467',null,null,null,null,'test','Test 1','$2y$10$D4c.60jz3WlkwMppcolQw.WC7mA6Lo0uIwF3ryx5UR5CYOAiD7bxa','alamat test',null,'emailtest@email.com',null,null,null,'T',to_date('06-10-2021','DD-MM-RRRR'),'user 1',to_date('08-11-2021','DD-MM-RRRR'),'user 1','MngUserController_UPDATE',null,null,'1636344196.png','1138');
Insert into INVENICT.MNG_USERS (USR_ID,UREG_NUM,KDSATKER,KDDEPT,KDUNIT,USR_NAME,USR_FULLNAME,USR_PASSWD,USR_ALAMAT,USR_NIP,USR_EMAIL,USR_NPWP,USR_JABATAN,USR_NM_PERUSH,USR_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,KDDEPT_UNIT,WABA_ID,USR_FOTO,DIV_ID) values ('1509',null,null,null,null,'Santoso','Joko','$2y$10$4EV9HC1/5TLapuqFIyFxhuFfIUoh/h4xubDtP/NuyQr8dpuXWk6TS','Jalan kodau km 4',null,'emailjoko@gmail.com',null,null,null,'T',to_date('14-10-2021','DD-MM-RRRR'),'user 1',to_date('09-11-2021','DD-MM-RRRR'),'user 1','MngUserController_UPDATE',null,null,'1634202629.png','858');
Insert into INVENICT.MNG_USERS (USR_ID,UREG_NUM,KDSATKER,KDDEPT,KDUNIT,USR_NAME,USR_FULLNAME,USR_PASSWD,USR_ALAMAT,USR_NIP,USR_EMAIL,USR_NPWP,USR_JABATAN,USR_NM_PERUSH,USR_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,KDDEPT_UNIT,WABA_ID,USR_FOTO,DIV_ID) values ('1511',null,null,null,null,'rahayu','Rahayu','$2y$10$bxenlDm30Qq7hoAG1ztWY.aPSzycolsCojjtxO4bOJU8kI7VmUEGe','asdasdasda',null,'rahayu@gmail.com',null,null,null,'T',to_date('08-11-2021','DD-MM-RRRR'),'user 1',to_date('08-11-2021','DD-MM-RRRR'),'user 1','MngUserController_UPDATE',null,null,'1636343357.png','922');
Insert into INVENICT.MNG_USERS (USR_ID,UREG_NUM,KDSATKER,KDDEPT,KDUNIT,USR_NAME,USR_FULLNAME,USR_PASSWD,USR_ALAMAT,USR_NIP,USR_EMAIL,USR_NPWP,USR_JABATAN,USR_NM_PERUSH,USR_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,KDDEPT_UNIT,WABA_ID,USR_FOTO,DIV_ID) values ('1512',null,null,null,null,'Nanda','Nanda','$2y$10$Lr8Vg87pBInLAHt2hzQr.u1N7RbESUy/TVnxiEXlUeVuzfdqNvu7e','asasdasd',null,'nanda@gmail.com',null,null,null,'T',to_date('08-11-2021','DD-MM-RRRR'),'user 1',null,null,'MngUser_SAVE',null,null,'1636343615.png','809');
Insert into INVENICT.MNG_USERS (USR_ID,UREG_NUM,KDSATKER,KDDEPT,KDUNIT,USR_NAME,USR_FULLNAME,USR_PASSWD,USR_ALAMAT,USR_NIP,USR_EMAIL,USR_NPWP,USR_JABATAN,USR_NM_PERUSH,USR_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,KDDEPT_UNIT,WABA_ID,USR_FOTO,DIV_ID) values ('1513',null,null,null,null,'ARIEF','ARIEF WICAKSONO A.','$2y$10$YQgoGgmodPhTy.75UOmtrO0IWILP.qtc/5zzPn8aQad4IcsdrwUbe','asdasdasdasd',null,'arief@email.com',null,null,null,'T',to_date('08-11-2021','DD-MM-RRRR'),'user 1',to_date('08-11-2021','DD-MM-RRRR'),'user 1','MngUserController_UPDATE',null,null,'1636372159.png','809');
Insert into INVENICT.MNG_USERS (USR_ID,UREG_NUM,KDSATKER,KDDEPT,KDUNIT,USR_NAME,USR_FULLNAME,USR_PASSWD,USR_ALAMAT,USR_NIP,USR_EMAIL,USR_NPWP,USR_JABATAN,USR_NM_PERUSH,USR_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME,KDDEPT_UNIT,WABA_ID,USR_FOTO,DIV_ID) values ('1514',null,null,null,null,'DINDA','DINDA WIDY PRATIWI','$2y$10$4grzdUNJcRqxoMk5ESq6I.30J9eC8z3YIbhs8PTbZTQ20Cw5RD2hC','asdasdas',null,'dinda@email.com',null,null,null,'T',to_date('08-11-2021','DD-MM-RRRR'),'user 1',null,null,'MngUser_SAVE',null,null,'1636375130.png','809');
REM INSERTING into INVENICT.MNG_USR_DEPT
SET DEFINE OFF;
REM INSERTING into INVENICT.MNG_USR_ROLES
SET DEFINE OFF;
Insert into INVENICT.MNG_USR_ROLES (UROL_ID,USR_ID,ROL_ID,UROL_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('104','1','65','T',to_date('24-09-2021','DD-MM-RRRR'),'user 1',null,'user 1','MngUsrRoleController_UPDATE');
Insert into INVENICT.MNG_USR_ROLES (UROL_ID,USR_ID,ROL_ID,UROL_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('108','1509','71','T',to_date('14-10-2021','DD-MM-RRRR'),'user 1',null,'user 1','MngUsrRoleController_UPDATE');
Insert into INVENICT.MNG_USR_ROLES (UROL_ID,USR_ID,ROL_ID,UROL_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('98','1467','69','T',to_date('06-10-2021','DD-MM-RRRR'),'user 1',null,'user 1','MngUsrRoleController_UPDATE');
Insert into INVENICT.MNG_USR_ROLES (UROL_ID,USR_ID,ROL_ID,UROL_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('109','1466','71','T',to_date('27-09-2021','DD-MM-RRRR'),'user 1',null,'user 1','MngUsrRoleController_UPDATE');
Insert into INVENICT.MNG_USR_ROLES (UROL_ID,USR_ID,ROL_ID,UROL_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('106','1513','72','T',to_date('08-11-2021','DD-MM-RRRR'),'user 1',null,'user 1','MngUsrRoleController_UPDATE');
Insert into INVENICT.MNG_USR_ROLES (UROL_ID,USR_ID,ROL_ID,UROL_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('102','1','64','T',to_date('24-09-2021','DD-MM-RRRR'),'user 1',null,'user 1','MngUsrRoleController_UPDATE');
Insert into INVENICT.MNG_USR_ROLES (UROL_ID,USR_ID,ROL_ID,UROL_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('94','1511','70','T',to_date('08-11-2021','DD-MM-RRRR'),'user 1',null,'user 1','MngUsrRoleController_UPDATE');
Insert into INVENICT.MNG_USR_ROLES (UROL_ID,USR_ID,ROL_ID,UROL_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('95','1512','70','T',to_date('08-11-2021','DD-MM-RRRR'),'user 1',null,null,'MngUsrRoleController_SAVE');
Insert into INVENICT.MNG_USR_ROLES (UROL_ID,USR_ID,ROL_ID,UROL_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('103','1','66','T',to_date('24-09-2021','DD-MM-RRRR'),'user 1',null,'user 1','MngUsrRoleController_UPDATE');
Insert into INVENICT.MNG_USR_ROLES (UROL_ID,USR_ID,ROL_ID,UROL_STAT,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('107','1514','72','T',to_date('08-11-2021','DD-MM-RRRR'),'user 1',null,null,'MngUsrRoleController_SAVE');
REM INSERTING into INVENICT.PASSWORD_RESETS
SET DEFINE OFF;
REM INSERTING into INVENICT.PERSONAL_ACCESS_TOKENS
SET DEFINE OFF;
Insert into INVENICT.PERSONAL_ACCESS_TOKENS (ID,TOKENABLE_TYPE,TOKENABLE_ID,NAME,TOKEN,LAST_USED_AT,CREATED_AT,UPDATED_AT) values ('223','App\Mng_User','1466','ApiToken','765ce7792880d50cc5f20724dc4baacfdc0f86476853937c381aa272930084d1',to_timestamp('09-11-2021 05.46.58000000000','DD-MM-RRRR HH24.MI.SSFF'),to_timestamp('09-11-2021 05.38.12000000000','DD-MM-RRRR HH24.MI.SSFF'),to_timestamp('09-11-2021 05.46.58000000000','DD-MM-RRRR HH24.MI.SSFF'));
Insert into INVENICT.PERSONAL_ACCESS_TOKENS (ID,TOKENABLE_TYPE,TOKENABLE_ID,NAME,TOKEN,LAST_USED_AT,CREATED_AT,UPDATED_AT) values ('216','App\Mng_User','1509','ApiToken','f289bce47a65edd9f31f499df24747aafdba73ed00c6a6d6a2377d056293d91c',to_timestamp('09-11-2021 05.30.47000000000','DD-MM-RRRR HH24.MI.SSFF'),to_timestamp('09-11-2021 05.30.43000000000','DD-MM-RRRR HH24.MI.SSFF'),to_timestamp('09-11-2021 05.30.47000000000','DD-MM-RRRR HH24.MI.SSFF'));
Insert into INVENICT.PERSONAL_ACCESS_TOKENS (ID,TOKENABLE_TYPE,TOKENABLE_ID,NAME,TOKEN,LAST_USED_AT,CREATED_AT,UPDATED_AT) values ('242','App\Mng_User','1','ApiToken','0146da9a9ed74cdbd4f8e8e3c96990c0864e95c875e1965b88e0aee0b65d9033',to_timestamp('10-11-2021 14.33.39000000000','DD-MM-RRRR HH24.MI.SSFF'),to_timestamp('10-11-2021 06.05.22000000000','DD-MM-RRRR HH24.MI.SSFF'),to_timestamp('10-11-2021 14.33.39000000000','DD-MM-RRRR HH24.MI.SSFF'));
Insert into INVENICT.PERSONAL_ACCESS_TOKENS (ID,TOKENABLE_TYPE,TOKENABLE_ID,NAME,TOKEN,LAST_USED_AT,CREATED_AT,UPDATED_AT) values ('221','App\Mng_User','1512','ApiToken','daccb900a69cef8c4cc17525b27436381e6c7cec5e66bc71e3cc9ea9c03cd43b',to_timestamp('09-11-2021 05.40.34000000000','DD-MM-RRRR HH24.MI.SSFF'),to_timestamp('09-11-2021 05.34.50000000000','DD-MM-RRRR HH24.MI.SSFF'),to_timestamp('09-11-2021 05.40.34000000000','DD-MM-RRRR HH24.MI.SSFF'));
Insert into INVENICT.PERSONAL_ACCESS_TOKENS (ID,TOKENABLE_TYPE,TOKENABLE_ID,NAME,TOKEN,LAST_USED_AT,CREATED_AT,UPDATED_AT) values ('237','App\Mng_User','1513','ApiToken','f07c39f3c1e4963154cc0e0a163da04a4a1f696b334db04517d021361c12bc11',to_timestamp('09-11-2021 07.48.55000000000','DD-MM-RRRR HH24.MI.SSFF'),to_timestamp('09-11-2021 07.38.13000000000','DD-MM-RRRR HH24.MI.SSFF'),to_timestamp('09-11-2021 07.48.55000000000','DD-MM-RRRR HH24.MI.SSFF'));
Insert into INVENICT.PERSONAL_ACCESS_TOKENS (ID,TOKENABLE_TYPE,TOKENABLE_ID,NAME,TOKEN,LAST_USED_AT,CREATED_AT,UPDATED_AT) values ('226','App\Mng_User','1466','ApiToken','3a224020f1b1206691144b7a355beddb714d9b2e3fa765f580248a929b210c68',to_timestamp('09-11-2021 06.38.34000000000','DD-MM-RRRR HH24.MI.SSFF'),to_timestamp('09-11-2021 06.34.38000000000','DD-MM-RRRR HH24.MI.SSFF'),to_timestamp('09-11-2021 06.38.34000000000','DD-MM-RRRR HH24.MI.SSFF'));
Insert into INVENICT.PERSONAL_ACCESS_TOKENS (ID,TOKENABLE_TYPE,TOKENABLE_ID,NAME,TOKEN,LAST_USED_AT,CREATED_AT,UPDATED_AT) values ('227','App\Mng_User','1','ApiToken','87240d95c5ad4d1b52827c24b5a02493a0c8ba869f9efcf7247c8c9f4795d4e0',to_timestamp('09-11-2021 07.24.40000000000','DD-MM-RRRR HH24.MI.SSFF'),to_timestamp('09-11-2021 07.06.38000000000','DD-MM-RRRR HH24.MI.SSFF'),to_timestamp('09-11-2021 07.24.40000000000','DD-MM-RRRR HH24.MI.SSFF'));
Insert into INVENICT.PERSONAL_ACCESS_TOKENS (ID,TOKENABLE_TYPE,TOKENABLE_ID,NAME,TOKEN,LAST_USED_AT,CREATED_AT,UPDATED_AT) values ('243','App\Mng_User','1','ApiToken','9384ce9939826e9895ebda4ff7280165047d6f2740ab431ca5f6c641a1aabd5a',to_timestamp('10-11-2021 15.23.36000000000','DD-MM-RRRR HH24.MI.SSFF'),to_timestamp('10-11-2021 14.34.29000000000','DD-MM-RRRR HH24.MI.SSFF'),to_timestamp('10-11-2021 15.23.36000000000','DD-MM-RRRR HH24.MI.SSFF'));
Insert into INVENICT.PERSONAL_ACCESS_TOKENS (ID,TOKENABLE_TYPE,TOKENABLE_ID,NAME,TOKEN,LAST_USED_AT,CREATED_AT,UPDATED_AT) values ('282','App\Mng_User','1','ApiToken','498dd990fb86b311e5442f203546316b71c948f4902d112c0f6b50acbe0e5891',to_timestamp('16-11-2021 03.03.02000000000','DD-MM-RRRR HH24.MI.SSFF'),to_timestamp('16-11-2021 01.12.33000000000','DD-MM-RRRR HH24.MI.SSFF'),to_timestamp('16-11-2021 03.03.02000000000','DD-MM-RRRR HH24.MI.SSFF'));
Insert into INVENICT.PERSONAL_ACCESS_TOKENS (ID,TOKENABLE_TYPE,TOKENABLE_ID,NAME,TOKEN,LAST_USED_AT,CREATED_AT,UPDATED_AT) values ('261','App\Mng_User','1','ApiToken','18b4a1732a2811bc0dd6cf02fb3e710356c07273b7a949a6bd8aa84e13740927',null,to_timestamp('12-11-2021 01.05.41000000000','DD-MM-RRRR HH24.MI.SSFF'),to_timestamp('12-11-2021 01.05.41000000000','DD-MM-RRRR HH24.MI.SSFF'));
Insert into INVENICT.PERSONAL_ACCESS_TOKENS (ID,TOKENABLE_TYPE,TOKENABLE_ID,NAME,TOKEN,LAST_USED_AT,CREATED_AT,UPDATED_AT) values ('262','App\Mng_User','1','ApiToken','c3aed4bbad3b455540cfc54a118abec7d73da88e73566718046a093e26ff9a81',to_timestamp('12-11-2021 03.29.49000000000','DD-MM-RRRR HH24.MI.SSFF'),to_timestamp('12-11-2021 01.05.43000000000','DD-MM-RRRR HH24.MI.SSFF'),to_timestamp('12-11-2021 03.29.49000000000','DD-MM-RRRR HH24.MI.SSFF'));
Insert into INVENICT.PERSONAL_ACCESS_TOKENS (ID,TOKENABLE_TYPE,TOKENABLE_ID,NAME,TOKEN,LAST_USED_AT,CREATED_AT,UPDATED_AT) values ('281','App\Mng_User','1','ApiToken','e07582abf10b128e414ca11cbe593eeab8eb5ee62b6989a0dd24fef25b89a17f',to_timestamp('15-11-2021 04.54.18000000000','DD-MM-RRRR HH24.MI.SSFF'),to_timestamp('15-11-2021 00.57.32000000000','DD-MM-RRRR HH24.MI.SSFF'),to_timestamp('15-11-2021 04.54.18000000000','DD-MM-RRRR HH24.MI.SSFF'));
Insert into INVENICT.PERSONAL_ACCESS_TOKENS (ID,TOKENABLE_TYPE,TOKENABLE_ID,NAME,TOKEN,LAST_USED_AT,CREATED_AT,UPDATED_AT) values ('285','App\Mng_User','1','ApiToken','b13a63eb97502edf945bfb0b4dadff3fdde03ae435424f6aff5526d16e64595c',to_timestamp('17-11-2021 02.36.01000000000','DD-MM-RRRR HH24.MI.SSFF'),to_timestamp('17-11-2021 02.29.07000000000','DD-MM-RRRR HH24.MI.SSFF'),to_timestamp('17-11-2021 02.36.01000000000','DD-MM-RRRR HH24.MI.SSFF'));
Insert into INVENICT.PERSONAL_ACCESS_TOKENS (ID,TOKENABLE_TYPE,TOKENABLE_ID,NAME,TOKEN,LAST_USED_AT,CREATED_AT,UPDATED_AT) values ('284','App\Mng_User','1','ApiToken','27eddbe223abf574f5c0ac00b0a8b1b9badce58c8928b427e74a502868c96fbb',to_timestamp('16-11-2021 09.07.23000000000','DD-MM-RRRR HH24.MI.SSFF'),to_timestamp('16-11-2021 08.24.37000000000','DD-MM-RRRR HH24.MI.SSFF'),to_timestamp('16-11-2021 09.07.23000000000','DD-MM-RRRR HH24.MI.SSFF'));
Insert into INVENICT.PERSONAL_ACCESS_TOKENS (ID,TOKENABLE_TYPE,TOKENABLE_ID,NAME,TOKEN,LAST_USED_AT,CREATED_AT,UPDATED_AT) values ('286','App\Mng_User','1','ApiToken','12cb9d8d151dd6bae7cac8ffc82ce287e3a3cfe213d2a8cb5d473e3f7cacfc4f',to_timestamp('17-11-2021 03.33.18000000000','DD-MM-RRRR HH24.MI.SSFF'),to_timestamp('17-11-2021 02.39.59000000000','DD-MM-RRRR HH24.MI.SSFF'),to_timestamp('17-11-2021 03.33.18000000000','DD-MM-RRRR HH24.MI.SSFF'));
REM INSERTING into INVENICT.PURCHASE_DTL
SET DEFINE OFF;
Insert into INVENICT.PURCHASE_DTL (DPURCHASE_ID,PURCHASE_ID,INVENT_CODE,DPURCHASE_QTY,DPURCHASE_SAT,DPURCHASE_PRC_SAT,DPURCHASE_PRC,DPURCHASE_STAT,DPURCHASE_REMARK,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('141','101','15','3','KG','4000','12000',null,'contoh',to_date('07-10-2021','DD-MM-RRRR'),null,to_date('07-10-2021','DD-MM-RRRR'),'user 1','PembelianDetail_Update');
Insert into INVENICT.PURCHASE_DTL (DPURCHASE_ID,PURCHASE_ID,INVENT_CODE,DPURCHASE_QTY,DPURCHASE_SAT,DPURCHASE_PRC_SAT,DPURCHASE_PRC,DPURCHASE_STAT,DPURCHASE_REMARK,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('126','24','12','4','KG','2000000','8000000',null,'DSSDF',to_date('22-09-2021','DD-MM-RRRR'),null,to_date('04-10-2021','DD-MM-RRRR'),'user 1','PembelianDetail_Update');
Insert into INVENICT.PURCHASE_DTL (DPURCHASE_ID,PURCHASE_ID,INVENT_CODE,DPURCHASE_QTY,DPURCHASE_SAT,DPURCHASE_PRC_SAT,DPURCHASE_PRC,DPURCHASE_STAT,DPURCHASE_REMARK,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('144','102','14','10','P','1000000','10000000',null,'nahs',to_date('08-10-2021','DD-MM-RRRR'),null,null,null,'PembelianDetail_Save');
Insert into INVENICT.PURCHASE_DTL (DPURCHASE_ID,PURCHASE_ID,INVENT_CODE,DPURCHASE_QTY,DPURCHASE_SAT,DPURCHASE_PRC_SAT,DPURCHASE_PRC,DPURCHASE_STAT,DPURCHASE_REMARK,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('143','102','13','12','P','5000000','60000000',null,'Contoh Keterangan',to_date('08-10-2021','DD-MM-RRRR'),null,to_date('08-10-2021','DD-MM-RRRR'),'user 1','PembelianDetail_Update');
Insert into INVENICT.PURCHASE_DTL (DPURCHASE_ID,PURCHASE_ID,INVENT_CODE,DPURCHASE_QTY,DPURCHASE_SAT,DPURCHASE_PRC_SAT,DPURCHASE_PRC,DPURCHASE_STAT,DPURCHASE_REMARK,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('124','21','15','10','KG','10000','100000',null,'ASDASD',to_date('22-09-2021','DD-MM-RRRR'),null,to_date('22-09-2021','DD-MM-RRRR'),'coba','PembelianDetail_Update');
REM INSERTING into INVENICT.PURCHASE_MST
SET DEFINE OFF;
Insert into INVENICT.PURCHASE_MST (PURCHASE_ID,PURCHASE_DATE,PURCHASE_PETUGAS,SUPLIER_CODE,PURCHASE_PAY_METHODE,VALUTA_CODE,PURCHASE_RATE,PURCHASE_TOTAL,PURCHASE_TOTAL_RP,PURCHASE_STATUS,PURCHASE_REMARK,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('21',to_date('02-08-2021','DD-MM-RRRR'),'ashjkaskja','A12','TF','Rp',null,'100000',null,'T','asdsdaasas',to_date('10-08-2021','DD-MM-RRRR'),'y',to_date('09-09-2021','DD-MM-RRRR'),null,'Pembelian_Update');
Insert into INVENICT.PURCHASE_MST (PURCHASE_ID,PURCHASE_DATE,PURCHASE_PETUGAS,SUPLIER_CODE,PURCHASE_PAY_METHODE,VALUTA_CODE,PURCHASE_RATE,PURCHASE_TOTAL,PURCHASE_TOTAL_RP,PURCHASE_STATUS,PURCHASE_REMARK,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('24',to_date('04-08-2021','DD-MM-RRRR'),'adasd','A10','TF','Rp',null,'8000000',null,'T','dasdsasda',to_date('17-08-2021','DD-MM-RRRR'),'y',to_date('09-09-2021','DD-MM-RRRR'),null,'Pembelian_Update');
Insert into INVENICT.PURCHASE_MST (PURCHASE_ID,PURCHASE_DATE,PURCHASE_PETUGAS,SUPLIER_CODE,PURCHASE_PAY_METHODE,VALUTA_CODE,PURCHASE_RATE,PURCHASE_TOTAL,PURCHASE_TOTAL_RP,PURCHASE_STATUS,PURCHASE_REMARK,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('101',to_date('07-10-2021','DD-MM-RRRR'),'Dodo','A10','TF','�',null,'12000',null,null,'Test',to_date('07-10-2021','DD-MM-RRRR'),'user 1',to_date('07-10-2021','DD-MM-RRRR'),'user 1','Pembelian_Update');
Insert into INVENICT.PURCHASE_MST (PURCHASE_ID,PURCHASE_DATE,PURCHASE_PETUGAS,SUPLIER_CODE,PURCHASE_PAY_METHODE,VALUTA_CODE,PURCHASE_RATE,PURCHASE_TOTAL,PURCHASE_TOTAL_RP,PURCHASE_STATUS,PURCHASE_REMARK,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('102',to_date('08-10-2021','DD-MM-RRRR'),'Jaka','A12','TF','Rp',null,'70000000',null,null,'Contoh keterangan',to_date('08-10-2021','DD-MM-RRRR'),'user 1',null,null,'Pembelian_Save');
REM INSERTING into INVENICT.SUPLIER_MST
SET DEFINE OFF;
Insert into INVENICT.SUPLIER_MST (SUPLIER_CODE,SUPLIER_NAME,SUPLIER_CONTACT,SUPLIER_ADDRESS1,SUPLIER_ADDRESS2,SUPLIER_CITY,SUPLIER_PROV,SUPLIER_EMAIL,SUPLIER_FAX,SUPLIER_TLP1,SUPLIER_TLP2,SUPLIER_STATUS,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('A11','PT Aman Sentosa','huda','jl raya 123','jalan mawar no 124 rt 008 rw 009 163726','kuningan','Jakarta','email@pt2.gmail.com','029182653','099192723',null,'T',to_date('21-07-2021','DD-MM-RRRR'),'test',to_date('26-08-2021','DD-MM-RRRR'),'coba','Supplier_Update');
Insert into INVENICT.SUPLIER_MST (SUPLIER_CODE,SUPLIER_NAME,SUPLIER_CONTACT,SUPLIER_ADDRESS1,SUPLIER_ADDRESS2,SUPLIER_CITY,SUPLIER_PROV,SUPLIER_EMAIL,SUPLIER_FAX,SUPLIER_TLP1,SUPLIER_TLP2,SUPLIER_STATUS,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('A12','PT Indidaya Karya','Gasra','Alamat 1',null,'Bekasi Kota','Jawa Barat','emailcontoh@gmail.com','02716251','087152634',null,'T',to_date('21-07-2021','DD-MM-RRRR'),'test',to_date('14-09-2021','DD-MM-RRRR'),'coba','Supplier_Update');
Insert into INVENICT.SUPLIER_MST (SUPLIER_CODE,SUPLIER_NAME,SUPLIER_CONTACT,SUPLIER_ADDRESS1,SUPLIER_ADDRESS2,SUPLIER_CITY,SUPLIER_PROV,SUPLIER_EMAIL,SUPLIER_FAX,SUPLIER_TLP1,SUPLIER_TLP2,SUPLIER_STATUS,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('A10','PT Jaya Raya','Jamal','Jl beringin 1 no 40 rw 007 rt 7736',null,'Bekasi','Jawa Barat','email@pt1.gmail.com','021345623','09817264152',null,'T',to_date('21-07-2021','DD-MM-RRRR'),'test',to_date('10-09-2021','DD-MM-RRRR'),'coba','Supplier_Update');
Insert into INVENICT.SUPLIER_MST (SUPLIER_CODE,SUPLIER_NAME,SUPLIER_CONTACT,SUPLIER_ADDRESS1,SUPLIER_ADDRESS2,SUPLIER_CITY,SUPLIER_PROV,SUPLIER_EMAIL,SUPLIER_FAX,SUPLIER_TLP1,SUPLIER_TLP2,SUPLIER_STATUS,CREATION_DATE,CREATED_BY,LAST_UPDATE_DATE,LAST_UPDATED_BY,PROGRAM_NAME) values ('A22','PT Jaya Baya','Jaksjd','Jln. raya kodau rw 4',null,'Bekasi','Jawa Barat','email@email.com','098273634','08132921564',null,'T',to_date('08-10-2021','DD-MM-RRRR'),'user 1',to_date('08-10-2021','DD-MM-RRRR'),'user 1','Supplier_Update');
REM INSERTING into INVENICT.VCOMPANY_REFS
SET DEFINE OFF;
Insert into INVENICT.VCOMPANY_REFS (COMPANY_CODE,NAME,SHORT_NAME,START_DATE,END_DATE,ADDRESS1,ADDRESS2,ADDRESS3) values ('01','EMP TBK','EMPTBK',to_date('01-01-1979','DD-MM-RRRR'),null,'BAKRIE TOWER','KOMPLEK RASUNA EPICENTRUM JL. HR RASUNA SAID JAKARTA 12960','JAKARTA');
Insert into INVENICT.VCOMPANY_REFS (COMPANY_CODE,NAME,SHORT_NAME,START_DATE,END_DATE,ADDRESS1,ADDRESS2,ADDRESS3) values ('02','EMP MALACCA STRAIT','MALACCA STRAIT',to_date('01-01-1979','DD-MM-RRRR'),null,'BAKRIE TOWER 30th FLOOR','KOMPLEK RASUNA EPICENTRUM JL. HR RASUNA SAID JAKARTA 12960','JAKARTA');
Insert into INVENICT.VCOMPANY_REFS (COMPANY_CODE,NAME,SHORT_NAME,START_DATE,END_DATE,ADDRESS1,ADDRESS2,ADDRESS3) values ('03','KANGEAN ENERGI INDONESIA','KANGEAN',to_date('01-01-1979','DD-MM-RRRR'),null,'WISMA MULIA, 25rd FLOOR','KOMPLEK RASUNA EPICENTRUM JL. HR RASUNA SAID JAKARTA 12960','JAKARTA');
Insert into INVENICT.VCOMPANY_REFS (COMPANY_CODE,NAME,SHORT_NAME,START_DATE,END_DATE,ADDRESS1,ADDRESS2,ADDRESS3) values ('04','LAPINDO BRANTAS','LAPINDO',to_date('01-01-1979','DD-MM-RRRR'),null,'BAKRIE TOWER','KOMPLEK RASUNA EPICENTRUM JL. HR RASUNA SAID JAKARTA 12960','JAKARTA');
Insert into INVENICT.VCOMPANY_REFS (COMPANY_CODE,NAME,SHORT_NAME,START_DATE,END_DATE,ADDRESS1,ADDRESS2,ADDRESS3) values ('05','EMP GEBANG','GEBANG',to_date('01-01-1979','DD-MM-RRRR'),null,'BAKRIE TOWER, 27th FLOOR','KOMPLEK RASUNA EPICENTRUM JL. HR RASUNA SAID JAKARTA 12960','JAKARTA');
Insert into INVENICT.VCOMPANY_REFS (COMPANY_CODE,NAME,SHORT_NAME,START_DATE,END_DATE,ADDRESS1,ADDRESS2,ADDRESS3) values ('06','EMP SEMBERAH','SEMBERAH',to_date('17-11-1995','DD-MM-RRRR'),to_date('31-12-2017','DD-MM-RRRR'),'BAKRIE TOWER','KOMPLEK RASUNA EPICENTRUM JL. HR RASUNA SAID JAKARTA 12960',null);
Insert into INVENICT.VCOMPANY_REFS (COMPANY_CODE,NAME,SHORT_NAME,START_DATE,END_DATE,ADDRESS1,ADDRESS2,ADDRESS3) values ('07','EMP GELAM','GELAM',to_date('01-01-1979','DD-MM-RRRR'),null,'BAKRIE TOWER','KOMPLEK RASUNA EPICENTRUM JL. HR RASUNA SAID JAKARTA 12960','JAKARTA');
Insert into INVENICT.VCOMPANY_REFS (COMPANY_CODE,NAME,SHORT_NAME,START_DATE,END_DATE,ADDRESS1,ADDRESS2,ADDRESS3) values ('08','EMP BENTU','BENTU',to_date('01-01-1979','DD-MM-RRRR'),null,'BAKRIE TOWER','KOMPLEK RASUNA EPICENTRUM JL. HR RASUNA SAID JAKARTA 12960','JAKARTA');
Insert into INVENICT.VCOMPANY_REFS (COMPANY_CODE,NAME,SHORT_NAME,START_DATE,END_DATE,ADDRESS1,ADDRESS2,ADDRESS3) values ('09','KORINCI BARU','KORINCI',to_date('12-05-2008','DD-MM-RRRR'),to_date('31-12-2017','DD-MM-RRRR'),'BAKRIE TOWER','KOMPLEK RASUNA EPICENTRUM JL. HR RASUNA SAID JAKARTA 12960',null);
Insert into INVENICT.VCOMPANY_REFS (COMPANY_CODE,NAME,SHORT_NAME,START_DATE,END_DATE,ADDRESS1,ADDRESS2,ADDRESS3) values ('10','INDELBERG','SUCI',to_date('01-01-1979','DD-MM-RRRR'),to_date('31-12-2017','DD-MM-RRRR'),'WISMA MULIA, 23rd FLOOR','JL. JEND. GATOT SUBROTO NO. 42','JAKARTA');
Insert into INVENICT.VCOMPANY_REFS (COMPANY_CODE,NAME,SHORT_NAME,START_DATE,END_DATE,ADDRESS1,ADDRESS2,ADDRESS3) values ('11','GERALDO/ IBUL','IBUL',to_date('12-05-2008','DD-MM-RRRR'),to_date('31-12-2017','DD-MM-RRRR'),null,null,null);
Insert into INVENICT.VCOMPANY_REFS (COMPANY_CODE,NAME,SHORT_NAME,START_DATE,END_DATE,ADDRESS1,ADDRESS2,ADDRESS3) values ('12','EMP TONGA','TONGA',to_date('12-05-2008','DD-MM-RRRR'),null,'BAKRIE TOWER',null,null);
Insert into INVENICT.VCOMPANY_REFS (COMPANY_CODE,NAME,SHORT_NAME,START_DATE,END_DATE,ADDRESS1,ADDRESS2,ADDRESS3) values ('13','CBM TABULAKO','ARTHA WIDYA PERSADA',to_date('01-05-2010','DD-MM-RRRR'),to_date('31-12-2017','DD-MM-RRRR'),'BAKRIE TOWER LT. 24','KOMPLEK RASUNA EPICENTRUM JL. HR RASUNA SAID JAKARTA 12960','JAKARTA 12960');
Insert into INVENICT.VCOMPANY_REFS (COMPANY_CODE,NAME,SHORT_NAME,START_DATE,END_DATE,ADDRESS1,ADDRESS2,ADDRESS3) values ('14','CBM SANGATTA','VISI MULTI ARTHA',to_date('01-05-2009','DD-MM-RRRR'),null,'BAKRIE TOWER','KOMPLEK RASUNA EPICENTRUM JL. HR RASUNA SAID JAKARTA 12960',null);
Insert into INVENICT.VCOMPANY_REFS (COMPANY_CODE,NAME,SHORT_NAME,START_DATE,END_DATE,ADDRESS1,ADDRESS2,ADDRESS3) values ('15','ONshore West Java','ONWJ',to_date('01-02-2012','DD-MM-RRRR'),null,null,null,null);
Insert into INVENICT.VCOMPANY_REFS (COMPANY_CODE,NAME,SHORT_NAME,START_DATE,END_DATE,ADDRESS1,ADDRESS2,ADDRESS3) values ('16','EMP ENERGI INDONESIA (MASELA)','MASELA',to_date('01-03-2012','DD-MM-RRRR'),to_date('31-12-2017','DD-MM-RRRR'),'BAKRIE TOWER LANTAI 29. JL. HR RASUNA SAID KOMPLEKS RASUNA EPICENTRUM','KOMPLEK RASUNA EPICENTRUM JL. HR RASUNA SAID JAKARTA 12960','12960');
Insert into INVENICT.VCOMPANY_REFS (COMPANY_CODE,NAME,SHORT_NAME,START_DATE,END_DATE,ADDRESS1,ADDRESS2,ADDRESS3) values ('17','PERTAMINA HULU ENERGI','PHE',to_date('01-09-2012','DD-MM-RRRR'),to_date('31-12-2017','DD-MM-RRRR'),null,null,null);
Insert into INVENICT.VCOMPANY_REFS (COMPANY_CODE,NAME,SHORT_NAME,START_DATE,END_DATE,ADDRESS1,ADDRESS2,ADDRESS3) values ('18','IMBANG TATA ALAM (ITA)','ITA',to_date('02-10-2012','DD-MM-RRRR'),null,'BAKRIE TOWER LT.29','HR RASUNA SAID JAKARTA SELATAN',null);
Insert into INVENICT.VCOMPANY_REFS (COMPANY_CODE,NAME,SHORT_NAME,START_DATE,END_DATE,ADDRESS1,ADDRESS2,ADDRESS3) values ('19','INPEX','INPEX',to_date('12-10-2012','DD-MM-RRRR'),to_date('31-12-2017','DD-MM-RRRR'),'MID PLAZA I 7th FLOOR','JL. JEND. SUDIRMAN KAVLING 10-11','JAKARTA');
Insert into INVENICT.VCOMPANY_REFS (COMPANY_CODE,NAME,SHORT_NAME,START_DATE,END_DATE,ADDRESS1,ADDRESS2,ADDRESS3) values ('20','BUZI HYDROCARBONS','BUZI',to_date('01-11-2013','DD-MM-RRRR'),null,'BAKRIE TOWER','KOMPLEK RASUNA EPICENTRUM JL. HR RASUNA SAID JAKARTA 12960','JAKARTA');
Insert into INVENICT.VCOMPANY_REFS (COMPANY_CODE,NAME,SHORT_NAME,START_DATE,END_DATE,ADDRESS1,ADDRESS2,ADDRESS3) values ('21','EMP ENERGI TERBARUKAN','EET',to_date('01-08-2020','DD-MM-RRRR'),null,'BAKRIE TOWER','KOMPLEK RASUNA EPICENTRUM JL. HR RASUNA SAID JAKARTA 12960','JAKARTA');
Insert into INVENICT.VCOMPANY_REFS (COMPANY_CODE,NAME,SHORT_NAME,START_DATE,END_DATE,ADDRESS1,ADDRESS2,ADDRESS3) values ('22','EMP DAYA NUSANTARA','EDN',to_date('01-08-2020','DD-MM-RRRR'),null,'BAKRIE TOWER','KOMPLEK RASUNA EPICENTRUM JL. HR RASUNA SAID JAKARTA 12960','JAKARTA');
Insert into INVENICT.VCOMPANY_REFS (COMPANY_CODE,NAME,SHORT_NAME,START_DATE,END_DATE,ADDRESS1,ADDRESS2,ADDRESS3) values ('23','EMP TUNAS PERSADA ','ETP',to_date('01-08-2020','DD-MM-RRRR'),null,'BAKRIE TOWER','KOMPLEK RASUNA EPICENTRUM JL. HR RASUNA SAID JAKARTA 12960','JAKARTA');
Insert into INVENICT.VCOMPANY_REFS (COMPANY_CODE,NAME,SHORT_NAME,START_DATE,END_DATE,ADDRESS1,ADDRESS2,ADDRESS3) values ('24','EMP ENERGI ACEH','EEA',to_date('01-03-2021','DD-MM-RRRR'),null,'BAKRIE TOWER LT. 32','KOMPLEK RASUNA EPICENTRUM JL. HR RASUNA SAID JAKARTA 12960','JAKARTA');
Insert into INVENICT.VCOMPANY_REFS (COMPANY_CODE,NAME,SHORT_NAME,START_DATE,END_DATE,ADDRESS1,ADDRESS2,ADDRESS3) values ('25','PEMA GLOBAL ENERGI','PGE',to_date('01-03-2021','DD-MM-RRRR'),null,null,null,'ACEH');
Insert into INVENICT.VCOMPANY_REFS (COMPANY_CODE,NAME,SHORT_NAME,START_DATE,END_DATE,ADDRESS1,ADDRESS2,ADDRESS3) values ('97','VMA / EMP GEBANG','VMA/GEBANG',to_date('01-12-2015','DD-MM-RRRR'),null,'BAKRIE TOWER','KOMPLEK RASUNA EPICENTRUM JL. HR RASUNA SAID JAKARTA 12960','JAKARTA');
Insert into INVENICT.VCOMPANY_REFS (COMPANY_CODE,NAME,SHORT_NAME,START_DATE,END_DATE,ADDRESS1,ADDRESS2,ADDRESS3) values ('98','EMP BENTU / EMP TONGA','BENTU/TONGA',to_date('01-07-2014','DD-MM-RRRR'),null,'BAKRIE TOWER, 22nd FLOOR','KOMPLEK RASUNA EPICENTRUM JL. HR RASUNA SAID JAKARTA 12960','JAKARTA');
Insert into INVENICT.VCOMPANY_REFS (COMPANY_CODE,NAME,SHORT_NAME,START_DATE,END_DATE,ADDRESS1,ADDRESS2,ADDRESS3) values ('99','SHARED SERVICE','EMP SS',to_date('01-01-1979','DD-MM-RRRR'),null,'BAKRIE TOWER','KOMPLEK RASUNA EPICENTRUM JL. HR RASUNA SAID JAKARTA 12960','JAKARTA');
REM INSERTING into INVENICT.VPEKERJA_ICT
SET DEFINE OFF;
Insert into INVENICT.VPEKERJA_ICT (EMPLOYEE_NUMBER,OFFICIAL_NAME) values ('0100158','ABDUL ROSYID');
Insert into INVENICT.VPEKERJA_ICT (EMPLOYEE_NUMBER,OFFICIAL_NAME) values ('0100159','HERRY SUDRAJAT');
Insert into INVENICT.VPEKERJA_ICT (EMPLOYEE_NUMBER,OFFICIAL_NAME) values ('0202055','AGUS SUYANTO');
Insert into INVENICT.VPEKERJA_ICT (EMPLOYEE_NUMBER,OFFICIAL_NAME) values ('0202096','IRWAN A.');
Insert into INVENICT.VPEKERJA_ICT (EMPLOYEE_NUMBER,OFFICIAL_NAME) values ('0202146','PRIYONO');
Insert into INVENICT.VPEKERJA_ICT (EMPLOYEE_NUMBER,OFFICIAL_NAME) values ('0272010','ALOYSIUS LANGGENG ADIASTO');
Insert into INVENICT.VPEKERJA_ICT (EMPLOYEE_NUMBER,OFFICIAL_NAME) values ('0272019','PERMAN');
Insert into INVENICT.VPEKERJA_ICT (EMPLOYEE_NUMBER,OFFICIAL_NAME) values ('0800007','APEN NAINGGOLAN');
Insert into INVENICT.VPEKERJA_ICT (EMPLOYEE_NUMBER,OFFICIAL_NAME) values ('0800165','ARIEF WICAKSONO A.');
Insert into INVENICT.VPEKERJA_ICT (EMPLOYEE_NUMBER,OFFICIAL_NAME) values ('0800211','BAYU INDRAWAN');
Insert into INVENICT.VPEKERJA_ICT (EMPLOYEE_NUMBER,OFFICIAL_NAME) values ('0870184','ROY KURNIAWAN');
Insert into INVENICT.VPEKERJA_ICT (EMPLOYEE_NUMBER,OFFICIAL_NAME) values ('0870194','RONI MARTINI');
Insert into INVENICT.VPEKERJA_ICT (EMPLOYEE_NUMBER,OFFICIAL_NAME) values ('1200013','SUMARSO');
Insert into INVENICT.VPEKERJA_ICT (EMPLOYEE_NUMBER,OFFICIAL_NAME) values ('1870002','DINDA WIDY PRATIWI');
--------------------------------------------------------
--  DDL for Index USER_SATKER_FK
--------------------------------------------------------

  CREATE INDEX "INVENICT"."USER_SATKER_FK" ON "INVENICT"."MNG_USERS" ("KDSATKER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PURCHASE_MST_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "INVENICT"."PURCHASE_MST_PK" ON "INVENICT"."PURCHASE_MST" ("PURCHASE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_MNG_MODULES
--------------------------------------------------------

  CREATE UNIQUE INDEX "INVENICT"."PK_MNG_MODULES" ON "INVENICT"."MNG_MODULES" ("MOD_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index ROL_UROL_FK
--------------------------------------------------------

  CREATE INDEX "INVENICT"."ROL_UROL_FK" ON "INVENICT"."MNG_USR_ROLES" ("ROL_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_MNG_ROLE_MENUS
--------------------------------------------------------

  CREATE UNIQUE INDEX "INVENICT"."PK_MNG_ROLE_MENUS" ON "INVENICT"."MNG_ROLE_MENUS" ("ROLM_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index UROL_USR_FK
--------------------------------------------------------

  CREATE INDEX "INVENICT"."UROL_USR_FK" ON "INVENICT"."MNG_USR_ROLES" ("USR_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index DIVISI_REFS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "INVENICT"."DIVISI_REFS_PK" ON "INVENICT"."DIVISI_REFS" ("DIV_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index MENUC_MENUP_FK
--------------------------------------------------------

  CREATE INDEX "INVENICT"."MENUC_MENUP_FK" ON "INVENICT"."MNG_MENUS" ("MNG_MENU_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_MNG_MENUS
--------------------------------------------------------

  CREATE UNIQUE INDEX "INVENICT"."PK_MNG_MENUS" ON "INVENICT"."MNG_MENUS" ("MENU_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index INVENT_MUTASI_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "INVENICT"."INVENT_MUTASI_PK" ON "INVENICT"."INVENT_MUTASI" ("IMUTASI_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index USR_KL_FK
--------------------------------------------------------

  CREATE INDEX "INVENICT"."USR_KL_FK" ON "INVENICT"."MNG_USR_DEPT" ("USR_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_MNG_USR_DEPT
--------------------------------------------------------

  CREATE UNIQUE INDEX "INVENICT"."PK_MNG_USR_DEPT" ON "INVENICT"."MNG_USR_DEPT" ("USR_ID", "KDDEPT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index USR_UNIT_FK
--------------------------------------------------------

  CREATE INDEX "INVENICT"."USR_UNIT_FK" ON "INVENICT"."MNG_USERS" ("KDUNIT", "KDDEPT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SUPLIER_MST_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "INVENICT"."SUPLIER_MST_PK" ON "INVENICT"."SUPLIER_MST" ("SUPLIER_CODE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index IREQ_MST_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "INVENICT"."IREQ_MST_PK" ON "INVENICT"."IREQ_MST" ("IREQ_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index CA_MST_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "INVENICT"."CA_MST_PK" ON "INVENICT"."CA_MST" ("CA_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PER_AC_TO_TOKE_TY_TOKE_ID_IN
--------------------------------------------------------

  CREATE INDEX "INVENICT"."PER_AC_TO_TOKE_TY_TOKE_ID_IN" ON "INVENICT"."PERSONAL_ACCESS_TOKENS" ("TOKENABLE_TYPE", "TOKENABLE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_MNG_ROLES
--------------------------------------------------------

  CREATE UNIQUE INDEX "INVENICT"."PK_MNG_ROLES" ON "INVENICT"."MNG_ROLES" ("ROL_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index ROLM_MENU_FK
--------------------------------------------------------

  CREATE INDEX "INVENICT"."ROLM_MENU_FK" ON "INVENICT"."MNG_ROLE_MENUS" ("MENU_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index USR_REG_FK
--------------------------------------------------------

  CREATE INDEX "INVENICT"."USR_REG_FK" ON "INVENICT"."MNG_USERS" ("UREG_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index MIGRATIONS_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "INVENICT"."MIGRATIONS_ID_PK" ON "INVENICT"."MIGRATIONS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index MENU_MODULE_FK
--------------------------------------------------------

  CREATE INDEX "INVENICT"."MENU_MODULE_FK" ON "INVENICT"."MNG_MENUS" ("MOD_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index IREQ_DTL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "INVENICT"."IREQ_DTL_PK" ON "INVENICT"."IREQ_DTL" ("IREQD_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index INVENT_MST_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "INVENICT"."INVENT_MST_PK" ON "INVENICT"."INVENT_MST" ("INVENT_CODE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_MNG_USR_ROLES
--------------------------------------------------------

  CREATE UNIQUE INDEX "INVENICT"."PK_MNG_USR_ROLES" ON "INVENICT"."MNG_USR_ROLES" ("UROL_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PERSONA_ACCES_TOKEN_TOKE_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "INVENICT"."PERSONA_ACCES_TOKEN_TOKE_UK" ON "INVENICT"."PERSONAL_ACCESS_TOKENS" (LOWER("TOKEN")) 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PASSWORD_RESETS_EMAIL_INDEX
--------------------------------------------------------

  CREATE INDEX "INVENICT"."PASSWORD_RESETS_EMAIL_INDEX" ON "INVENICT"."PASSWORD_RESETS" ("EMAIL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PURCHASE_DTL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "INVENICT"."PURCHASE_DTL_PK" ON "INVENICT"."PURCHASE_DTL" ("DPURCHASE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_MNG_USERS
--------------------------------------------------------

  CREATE UNIQUE INDEX "INVENICT"."PK_MNG_USERS" ON "INVENICT"."MNG_USERS" ("USR_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PERSONAL_ACCESS_TOKENS_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "INVENICT"."PERSONAL_ACCESS_TOKENS_ID_PK" ON "INVENICT"."PERSONAL_ACCESS_TOKENS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index ROL_MENU_FK
--------------------------------------------------------

  CREATE INDEX "INVENICT"."ROL_MENU_FK" ON "INVENICT"."MNG_ROLE_MENUS" ("ROL_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index UKL_KL_FK
--------------------------------------------------------

  CREATE INDEX "INVENICT"."UKL_KL_FK" ON "INVENICT"."MNG_USR_DEPT" ("KDDEPT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index LOOKUP_REFS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "INVENICT"."LOOKUP_REFS_PK" ON "INVENICT"."LOOKUP_REFS" ("LOOKUP_TYPE", "LOOKUP_CODE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Trigger AIUD_PURCHASE_DTL
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "INVENICT"."AIUD_PURCHASE_DTL" AFTER INSERT OR UPDATE OR DELETE ON PURCHASE_DTL
FOR EACH ROW 
BEGIN

    IF INSERTING THEN
            UPDATE PURCHASE_MST SET PURCHASE_TOTAL = NVL(PURCHASE_TOTAL,0) + :NEW.DPURCHASE_PRC
             WHERE PURCHASE_ID =:NEW.PURCHASE_ID;
    END IF;
    
    IF UPDATING THEN
        UPDATE PURCHASE_MST SET PURCHASE_TOTAL = PURCHASE_TOTAL - :OLD.DPURCHASE_PRC + :NEW.DPURCHASE_PRC
        WHERE PURCHASE_ID = :NEW.PURCHASE_ID;
    END IF;

   IF DELETING THEN
        UPDATE PURCHASE_MST SET PURCHASE_TOTAL = PURCHASE_TOTAL - :OLD.DPURCHASE_PRC
          WHERE PURCHASE_ID = :OLD.PURCHASE_ID;
    END IF;
    
END;
/
ALTER TRIGGER "INVENICT"."AIUD_PURCHASE_DTL" ENABLE;
--------------------------------------------------------
--  DDL for Trigger AIU_INVENT_MUTASI
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "INVENICT"."AIU_INVENT_MUTASI" AFTER INSERT OR UPDATE ON INVENT_MUTASI 
FOR EACH ROW 
BEGIN
  UPDATE INVENT_MST SET INVENT_LOKASI_PREVIOUS = INVENT_LOKASI_UPDATE,
                        INVENT_PENGGUNA_PREVIOUS = INVENT_PENGGUNA_UPDATE,
                        INVENT_LOKASI_UPDATE= :NEW.IMUTASI_LOKASI,
                        INVENT_PENGGUNA_UPDATE = :NEW.IMUTASI_PENGGUNA
  WHERE INVENT_CODE =:NEW.INVENT_CODE;
END;
/
ALTER TRIGGER "INVENICT"."AIU_INVENT_MUTASI" ENABLE;
--------------------------------------------------------
--  DDL for Trigger AI_CASH_ADVANCE
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "INVENICT"."AI_CASH_ADVANCE" 
AFTER INSERT ON CA_MST 
FOR EACH ROW
BEGIN
  UPDATE IREQ_MST SET ireq_status = 'C'
  WHERE ireq_id = :NEW.ireq_id;
END;
/
ALTER TRIGGER "INVENICT"."AI_CASH_ADVANCE" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BD_MNG_USERS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "INVENICT"."BD_MNG_USERS" BEFORE DELETE ON MNG_USERS 
FOR EACH ROW
BEGIN
 DELETE FROM MNG_USR_ROLES WHERE USR_ID = :OLD.USR_ID ;
END;
/
ALTER TRIGGER "INVENICT"."BD_MNG_USERS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BI_CASH_ADVANCE
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "INVENICT"."BI_CASH_ADVANCE" before insert on "INVENICT"."CA_MST" 
   for each row 
begin  
   if inserting then 
      if :NEW."CA_ID" is null then 
         select CASH_SEQUENCE.nextval into :NEW."CA_ID" from dual; 
      end if; 
   end if; 
end;


/
ALTER TRIGGER "INVENICT"."BI_CASH_ADVANCE" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BI_INVENT_MUTASI
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "INVENICT"."BI_INVENT_MUTASI" before insert on "INVENICT"."INVENT_MUTASI" 
   for each row 
begin  
   if inserting then 
      if :NEW."IMUTASI_ID" is null then 
         select MUTASI_SEQUENCE.nextval into :NEW."IMUTASI_ID" from dual; 
      end if; 
   end if; 
end;


/
ALTER TRIGGER "INVENICT"."BI_INVENT_MUTASI" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BI_IREQ_DTL
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "INVENICT"."BI_IREQ_DTL" before insert on "INVENICT"."IREQ_DTL" 
   for each row 
begin  
   if inserting then 
      if :NEW."IREQD_ID" is null then 
         select ICTDTL_SEQUENCE.nextval into :NEW."IREQD_ID" from dual; 
      end if; 
   end if; 
end;


/
ALTER TRIGGER "INVENICT"."BI_IREQ_DTL" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BI_IREQ_MST_IREQ_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "INVENICT"."BI_IREQ_MST_IREQ_ID" before insert on "INVENICT"."IREQ_MST" 
   for each row 
begin  
   if inserting then 
      if :NEW."IREQ_ID" is null then 
         select ICT_SEQUENCE.nextval into :NEW."IREQ_ID" from dual; 
      end if; 
   end if; 
end;


/
ALTER TRIGGER "INVENICT"."BI_IREQ_MST_IREQ_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BI_IREQ_MST_IREQ_NO
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "INVENICT"."BI_IREQ_MST_IREQ_NO" before insert on "INVENICT"."IREQ_MST" 
   for each row 
begin  
   if inserting then 
      if :NEW."IREQ_NO" is null then 
         select ICT_SEQUENCE.nextval into :NEW."IREQ_NO" from dual; 
      end if; 
   end if; 
end;


/
ALTER TRIGGER "INVENICT"."BI_IREQ_MST_IREQ_NO" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BI_MNG_MENUS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "INVENICT"."BI_MNG_MENUS" 
   before insert on "INVENICT"."MNG_MENUS" 
   for each row 
begin  
   if inserting then 
      if :NEW."MENU_ID" is null then 
         select MNG_MENUS_SEQ.nextval into :NEW."MENU_ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "INVENICT"."BI_MNG_MENUS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BI_MNG_MODULES
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "INVENICT"."BI_MNG_MODULES" 
   before insert on "INVENICT"."MNG_MODULES" 
   for each row 
begin  
   if inserting then 
      if :NEW."MOD_ID" is null then 
         select MODULES_SEQUENCE.nextval into :NEW."MOD_ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "INVENICT"."BI_MNG_MODULES" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BI_MNG_USERS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "INVENICT"."BI_MNG_USERS" 
   before insert on "INVENICT"."MNG_USERS" 
   for each row 
begin  
   if inserting then 
      if :NEW."USR_ID" is null then 
         select MNG_USERS_SEQ.nextval into :NEW."USR_ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "INVENICT"."BI_MNG_USERS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BI_MNG_USR_ROLES
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "INVENICT"."BI_MNG_USR_ROLES" 
   before insert on "INVENICT"."MNG_USR_ROLES" 
   for each row 
begin  
   if inserting then 
      if :NEW."UROL_ID" is null then 
         select MNG_USR_ROLES_SEQ.nextval into :NEW."UROL_ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "INVENICT"."BI_MNG_USR_ROLES" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BI_PURCHASE_DTL
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "INVENICT"."BI_PURCHASE_DTL" before insert on "INVENICT"."PURCHASE_DTL" 
   for each row 
begin  
   if inserting then 
      if :NEW."DPURCHASE_ID" is null then 
         select PURCHASEDTL_SEQUENCE.nextval into :NEW."DPURCHASE_ID" from dual; 
      end if; 
   end if; 
end;


/
ALTER TRIGGER "INVENICT"."BI_PURCHASE_DTL" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BI_PURCHASE_MST
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "INVENICT"."BI_PURCHASE_MST" before insert on "INVENICT"."PURCHASE_MST" 
   for each row 
begin  
   if inserting then 
      if :NEW."PURCHASE_ID" is null then 
         select PUCRCHASE_SEQUENCE.nextval into :NEW."PURCHASE_ID" from dual; 
      end if; 
   end if; 
end;


/
ALTER TRIGGER "INVENICT"."BI_PURCHASE_MST" ENABLE;
--------------------------------------------------------
--  DDL for Trigger DIV_INS_BEF
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "INVENICT"."DIV_INS_BEF" 
BEFORE INSERT
ON DIVISI_REFS 
REFERENCING NEW AS New OLD AS Old
FOR EACH ROW
DECLARE
tmpVar NUMBER;
/**************************
   NAME:       MST_LOG_BEF_INS
   PURPOSE:    

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        29/10/2021      bayu.indrawan       1. Created this trigger.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     MST_LOG_BEF_INS
      Sysdate:         29/10/2021
      Date and Time:   29/10/2021, 15:44:36, and 29/10/2021 15:44:36
      Username:        bayu.indrawan (set in TOAD Options, Proc Templates)
      Table Name:      MST_LOG_FINCON (set in the "New PL/SQL Object" dialog)
      Trigger Options:  (set in the "New PL/SQL Object" dialog)
**************************/
BEGIN
   tmpVar := 0;

   SELECT DIV_ID_SEQ.NEXTVAL INTO tmpVar FROM dual;
   :NEW.DIV_ID := tmpVar;
   :NEW.Creation_Date := SYSDATE;
   :NEW.Created_by := USER;
   :NEW.last_update_Date := SYSDATE;
   :NEW.last_updated_by := USER;

   EXCEPTION
     WHEN OTHERS THEN
       -- Consider logging the error and then re-raise
       RAISE;
END DIV_INS_BEF;
/
ALTER TRIGGER "INVENICT"."DIV_INS_BEF" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MIGRATIONS_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "INVENICT"."MIGRATIONS_ID_TRG" 
            before insert on MIGRATIONS
            for each row
                begin
            if :new.ID is null then
                select migrations_id_seq.nextval into :new.ID from dual;
            end if;
            end;
/
ALTER TRIGGER "INVENICT"."MIGRATIONS_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MNG_ROLES_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "INVENICT"."MNG_ROLES_TRG" BEFORE INSERT ON MNG_ROLES
FOR EACH ROW
BEGIN

  BEGIN
    IF :NEW.ROL_ID IS NULL THEN
      SELECT MNG_ROLES_SEQ.NEXTVAL INTO :NEW.ROL_ID FROM DUAL;
    END IF;
  END;
END;

/
ALTER TRIGGER "INVENICT"."MNG_ROLES_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MNG_ROLE_MENUS_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "INVENICT"."MNG_ROLE_MENUS_TRG" BEFORE INSERT ON MNG_ROLE_MENUS
FOR EACH ROW
BEGIN

  BEGIN
    IF :NEW.ROLM_ID IS NULL THEN
      SELECT MNG_ROLE_MENUS_SEQ.NEXTVAL INTO :NEW.ROLM_ID FROM DUAL;
    END IF;
  END;
END;

/
ALTER TRIGGER "INVENICT"."MNG_ROLE_MENUS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PERSONAL_ACCESS_TOKENS_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "INVENICT"."PERSONAL_ACCESS_TOKENS_ID_TRG" 
            before insert on PERSONAL_ACCESS_TOKENS
            for each row
                begin
            if :new.ID is null then
                select personal_access_tokens_id_seq.nextval into :new.ID from dual;
            end if;
            end;
/
ALTER TRIGGER "INVENICT"."PERSONAL_ACCESS_TOKENS_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Procedure SP_CLOSING_IREQ_MST
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "INVENICT"."SP_CLOSING_IREQ_MST" (p_code IN number)
AS
count_status number(5);
count_detail number(5);
BEGIN
    SELECT COUNT(ireq_id) INTO count_status FROM ireq_dtl WHERE ireq_status = 'C' AND ireq_id = p_code;
    SELECT COUNT(ireq_id) INTO count_detail FROM ireq_dtl WHERE ireq_id = p_code;
    IF count_status = count_detail
        THEN
            UPDATE ireq_mst SET ireq_status = 'C' WHERE ireq_id = p_code;
    END IF;
END SP_CLOSING_IREQ_MST;

/
--------------------------------------------------------
--  DDL for Procedure SP_DONE_IREQ_MST
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "INVENICT"."SP_DONE_IREQ_MST" (p_code IN number)
AS
count_status number(5);
count_detail number(5);
BEGIN
    SELECT COUNT(ireq_id) INTO count_status FROM ireq_dtl WHERE ireq_status = 'D' AND ireq_id = p_code;
    SELECT COUNT(ireq_id) INTO count_detail FROM ireq_dtl WHERE ireq_id = p_code;
    IF count_status = count_detail
        THEN
            UPDATE ireq_mst SET ireq_status = 'D' WHERE ireq_id = p_code;
    END IF;
END SP_DONE_IREQ_MST;

/
--------------------------------------------------------
--  Constraints for Table INVENT_MUTASI
--------------------------------------------------------

  ALTER TABLE "INVENICT"."INVENT_MUTASI" ADD CONSTRAINT "INVENT_MUTASI_PK" PRIMARY KEY ("IMUTASI_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "INVENICT"."INVENT_MUTASI" MODIFY ("IMUTASI_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PURCHASE_MST
--------------------------------------------------------

  ALTER TABLE "INVENICT"."PURCHASE_MST" ADD CONSTRAINT "PURCHASE_MST_PK" PRIMARY KEY ("PURCHASE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "INVENICT"."PURCHASE_MST" MODIFY ("PURCHASE_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PASSWORD_RESETS
--------------------------------------------------------

  ALTER TABLE "INVENICT"."PASSWORD_RESETS" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "INVENICT"."PASSWORD_RESETS" MODIFY ("TOKEN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MNG_ROLE_MENUS
--------------------------------------------------------

  ALTER TABLE "INVENICT"."MNG_ROLE_MENUS" MODIFY ("ROLM_ID" NOT NULL ENABLE);
  ALTER TABLE "INVENICT"."MNG_ROLE_MENUS" MODIFY ("MENU_ID" NOT NULL DISABLE);
  ALTER TABLE "INVENICT"."MNG_ROLE_MENUS" MODIFY ("ROL_ID" NOT NULL ENABLE);
  ALTER TABLE "INVENICT"."MNG_ROLE_MENUS" ADD CONSTRAINT "PK_MNG_ROLE_MENUS" PRIMARY KEY ("ROLM_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MENU
--------------------------------------------------------

  ALTER TABLE "INVENICT"."MENU" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table IREQ_DTL
--------------------------------------------------------

  ALTER TABLE "INVENICT"."IREQ_DTL" ADD CONSTRAINT "IREQ_DTL_PK" PRIMARY KEY ("IREQD_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "INVENICT"."IREQ_DTL" MODIFY ("IREQD_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LOOKUP_REFS
--------------------------------------------------------

  ALTER TABLE "INVENICT"."LOOKUP_REFS" ADD CONSTRAINT "LOOKUP_REFS_PK" PRIMARY KEY ("LOOKUP_CODE", "LOOKUP_TYPE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "INVENICT"."LOOKUP_REFS" MODIFY ("LOOKUP_TYPE" NOT NULL ENABLE);
  ALTER TABLE "INVENICT"."LOOKUP_REFS" MODIFY ("LOOKUP_CODE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MNG_USERS
--------------------------------------------------------

  ALTER TABLE "INVENICT"."MNG_USERS" MODIFY ("USR_ID" NOT NULL ENABLE);
  ALTER TABLE "INVENICT"."MNG_USERS" ADD CONSTRAINT "PK_MNG_USERS" PRIMARY KEY ("USR_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CA_MST
--------------------------------------------------------

  ALTER TABLE "INVENICT"."CA_MST" ADD CONSTRAINT "CA_MST_PK" PRIMARY KEY ("CA_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "INVENICT"."CA_MST" MODIFY ("CA_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MIGRATIONS
--------------------------------------------------------

  ALTER TABLE "INVENICT"."MIGRATIONS" ADD CONSTRAINT "MIGRATIONS_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "INVENICT"."MIGRATIONS" MODIFY ("BATCH" NOT NULL ENABLE);
  ALTER TABLE "INVENICT"."MIGRATIONS" MODIFY ("MIGRATION" NOT NULL ENABLE);
  ALTER TABLE "INVENICT"."MIGRATIONS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MNG_MENUS
--------------------------------------------------------

  ALTER TABLE "INVENICT"."MNG_MENUS" MODIFY ("MENU_ID" NOT NULL ENABLE);
  ALTER TABLE "INVENICT"."MNG_MENUS" MODIFY ("MOD_ID" NOT NULL ENABLE);
  ALTER TABLE "INVENICT"."MNG_MENUS" ADD CONSTRAINT "PK_MNG_MENUS" PRIMARY KEY ("MENU_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PURCHASE_DTL
--------------------------------------------------------

  ALTER TABLE "INVENICT"."PURCHASE_DTL" ADD CONSTRAINT "PURCHASE_DTL_PK" PRIMARY KEY ("DPURCHASE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "INVENICT"."PURCHASE_DTL" MODIFY ("DPURCHASE_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PERSONAL_ACCESS_TOKENS
--------------------------------------------------------

  ALTER TABLE "INVENICT"."PERSONAL_ACCESS_TOKENS" ADD CONSTRAINT "PERSONAL_ACCESS_TOKENS_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "INVENICT"."PERSONAL_ACCESS_TOKENS" MODIFY ("TOKEN" NOT NULL ENABLE);
  ALTER TABLE "INVENICT"."PERSONAL_ACCESS_TOKENS" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "INVENICT"."PERSONAL_ACCESS_TOKENS" MODIFY ("TOKENABLE_ID" NOT NULL ENABLE);
  ALTER TABLE "INVENICT"."PERSONAL_ACCESS_TOKENS" MODIFY ("TOKENABLE_TYPE" NOT NULL ENABLE);
  ALTER TABLE "INVENICT"."PERSONAL_ACCESS_TOKENS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SUPLIER_MST
--------------------------------------------------------

  ALTER TABLE "INVENICT"."SUPLIER_MST" ADD CONSTRAINT "SUPLIER_MST_PK" PRIMARY KEY ("SUPLIER_CODE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "INVENICT"."SUPLIER_MST" MODIFY ("SUPLIER_CODE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table VCOMPANY_REFS
--------------------------------------------------------

  ALTER TABLE "INVENICT"."VCOMPANY_REFS" MODIFY ("COMPANY_CODE" NOT NULL ENABLE);
  ALTER TABLE "INVENICT"."VCOMPANY_REFS" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "INVENICT"."VCOMPANY_REFS" MODIFY ("START_DATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MNG_HELPS
--------------------------------------------------------

  ALTER TABLE "INVENICT"."MNG_HELPS" MODIFY ("HLP_ID" NOT NULL ENABLE);
  ALTER TABLE "INVENICT"."MNG_HELPS" ADD CHECK ("HLP_ID" IS NOT NULL) ENABLE;
  ALTER TABLE "INVENICT"."MNG_HELPS" ADD PRIMARY KEY ("HLP_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table INVENT_MST
--------------------------------------------------------

  ALTER TABLE "INVENICT"."INVENT_MST" ADD CONSTRAINT "INVENT_MST_PK" PRIMARY KEY ("INVENT_CODE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "INVENICT"."INVENT_MST" MODIFY ("INVENT_CODE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MNG_USR_ROLES
--------------------------------------------------------

  ALTER TABLE "INVENICT"."MNG_USR_ROLES" ADD CONSTRAINT "MNG_USR_ROLES_PK" PRIMARY KEY ("UROL_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "INVENICT"."MNG_USR_ROLES" MODIFY ("UROL_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MNG_USR_DEPT
--------------------------------------------------------

  ALTER TABLE "INVENICT"."MNG_USR_DEPT" MODIFY ("USR_ID" NOT NULL ENABLE);
  ALTER TABLE "INVENICT"."MNG_USR_DEPT" MODIFY ("KDDEPT" NOT NULL ENABLE);
  ALTER TABLE "INVENICT"."MNG_USR_DEPT" ADD CONSTRAINT "PK_MNG_USR_DEPT" PRIMARY KEY ("USR_ID", "KDDEPT")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table IREQ_MST
--------------------------------------------------------

  ALTER TABLE "INVENICT"."IREQ_MST" ADD CONSTRAINT "IREQ_MST_PK" PRIMARY KEY ("IREQ_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "INVENICT"."IREQ_MST" MODIFY ("IREQ_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MNG_MODULES
--------------------------------------------------------

  ALTER TABLE "INVENICT"."MNG_MODULES" MODIFY ("MOD_ID" NOT NULL ENABLE);
  ALTER TABLE "INVENICT"."MNG_MODULES" ADD CONSTRAINT "PK_MNG_MODULES" PRIMARY KEY ("MOD_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MNG_ROLES
--------------------------------------------------------

  ALTER TABLE "INVENICT"."MNG_ROLES" MODIFY ("ROL_ID" NOT NULL ENABLE);
  ALTER TABLE "INVENICT"."MNG_ROLES" ADD CONSTRAINT "PK_MNG_ROLES" PRIMARY KEY ("ROL_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DIVISI_REFS
--------------------------------------------------------

  ALTER TABLE "INVENICT"."DIVISI_REFS" ADD CONSTRAINT "DIVISI_REFS_PK" PRIMARY KEY ("DIV_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "INVENICT"."DIVISI_REFS" MODIFY ("DIV_CODE" NOT NULL ENABLE);
  ALTER TABLE "INVENICT"."DIVISI_REFS" MODIFY ("DIV_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table MNG_MENUS
--------------------------------------------------------

  ALTER TABLE "INVENICT"."MNG_MENUS" ADD CONSTRAINT "FK_MNG_MENU_MENUC_MEN_MNG_MENU" FOREIGN KEY ("MNG_MENU_ID")
	  REFERENCES "INVENICT"."MNG_MENUS" ("MENU_ID") ENABLE;
  ALTER TABLE "INVENICT"."MNG_MENUS" ADD CONSTRAINT "FK_MNG_MENU_MENU_MODU_MNG_MODU" FOREIGN KEY ("MOD_ID")
	  REFERENCES "INVENICT"."MNG_MODULES" ("MOD_ID") DISABLE;
--------------------------------------------------------
--  Ref Constraints for Table MNG_ROLE_MENUS
--------------------------------------------------------

  ALTER TABLE "INVENICT"."MNG_ROLE_MENUS" ADD CONSTRAINT "FK_MNG_ROLE_ROLM_MENU_MNG_MENU" FOREIGN KEY ("MENU_ID")
	  REFERENCES "INVENICT"."MNG_MENUS" ("MENU_ID") DISABLE;
  ALTER TABLE "INVENICT"."MNG_ROLE_MENUS" ADD CONSTRAINT "FK_MNG_ROLE_ROL_MENU_MNG_ROLE" FOREIGN KEY ("ROL_ID")
	  REFERENCES "INVENICT"."MNG_ROLES" ("ROL_ID") DISABLE;
--------------------------------------------------------
--  Ref Constraints for Table MNG_USR_DEPT
--------------------------------------------------------

  ALTER TABLE "INVENICT"."MNG_USR_DEPT" ADD CONSTRAINT "FK_MNG_USR__USR_KL_MNG_USER" FOREIGN KEY ("USR_ID")
	  REFERENCES "INVENICT"."MNG_USERS" ("USR_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MNG_USR_ROLES
--------------------------------------------------------

  ALTER TABLE "INVENICT"."MNG_USR_ROLES" ADD CONSTRAINT "FK_MNG_USR__ROL_UROL_MNG_ROLE" FOREIGN KEY ("ROL_ID")
	  REFERENCES "INVENICT"."MNG_ROLES" ("ROL_ID") ENABLE;
