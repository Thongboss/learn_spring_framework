--------------------------------------------------------
--  File created - Monday-December-04-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Type LOGMNR$COL_GG_REC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "LOGMNR$COL_GG_REC" as object
(
LOGMNR_UID NUMBER,
OBJ# NUMBER,
MD_COL_NAME VARCHAR2(384),
MD_COL_NUM NUMBER,                 /* col# */
MD_COL_SEGCOL NUMBER,              /* segcol# */
MD_COL_TYPE NUMBER,                /* type# */
MD_COL_LEN NUMBER,
MD_COL_PREC NUMBER,                /* precision */
MD_COL_SCALE NUMBER,
MD_COL_CHARSETID NUMBER,           /* character set id */
MD_COL_CHARSETFORM NUMBER,         /* character set form */
MD_COL_ALT_TYPE VARCHAR2(4000),    /* adt type if any */
MD_COL_ALT_PREC NUMBER,            /* precision of the adt attribute */
MD_COL_ALT_CHAR_USED VARCHAR2(2),  /* charset used by the adt attribute */
MD_COL_ALT_LENGTH NUMBER,          /* length of the adt attribute */
MD_COL_ALT_XML_TYPE NUMBER,        /* 0/1. is xml_type column */
MD_COL_ALT_BINARYXML_TYPE NUMBER,  /* 0/1. is xml_type stored as binary */
MD_COL_ENC_ISENC VARCHAR2(3) ,     /* 'YES'/'NO' */
MD_COL_ENC_NOSALT VARCHAR2(3) ,    /* 'YES'/'NO' */
MD_COL_ENC_ISLOB VARCHAR2(3) ,     /* 'YES'/'NO' */
MD_COL_ALT_OBJECTXML_TYPE NUMBER,  /* 0/1 xml_type stored as object */
MD_COL_HASNOTNULLDEFAULT VARCHAR2(3) ,   /* 'YES'/'NO' */
MD_COL_ALT_TYPE_OWNER VARCHAR2(384),  /* owner of the adt type if any */
PROPERTY NUMBER,
XCOLTYPEFLAGS NUMBER,
XOPQTYPEFLAGS NUMBER,
EAFLAGS NUMBER,
XFQCOLNAME VARCHAR2(4000),
SPARE1  NUMBER,
SPARE2  NUMBER,
SPARE3  NUMBER,
SPARE4  VARCHAR2(4000),
SPARE5  VARCHAR2(4000),
SPARE6  VARCHAR2(4000),
/* Following fields added in 12.1.0.2 */
OBJV# NUMBER,
INTCOL# NUMBER,
INTERVAL_LEADING_PRECISION NUMBER,
INTERVAL_TRAILING_PRECISION NUMBER,
TOID RAW(16),
TYPENAME VARCHAR2(384),
NUMINTCOLS NUMBER,
NUMATTRS NUMBER,
ADTORDER NUMBER,
LOGMNR_SPARE1 NUMBER,
LOGMNR_SPARE2 NUMBER,
LOGMNR_SPARE3 VARCHAR2(1000),
LOGMNR_SPARE4 DATE,
LOGMNR_SPARE5 NUMBER,
LOGMNR_SPARE6 NUMBER,
LOGMNR_SPARE7 NUMBER,
LOGMNR_SPARE8 NUMBER,
LOGMNR_SPARE9 NUMBER,
XTYPENAME VARCHAR2(4000),
XTOPINTCOL NUMBER,
XREFFEDTABLEOBJN NUMBER,
XREFFEDTABLEOBJV NUMBER,
XOPQTYPETYPE NUMBER,
XOPQLOBINTCOL NUMBER,
XOPQOBJINTCOL NUMBER,
XXMLINTCOL    NUMBER,
LOGMNRDERIVEDFLAGS NUMBER,
/* Following fields added in 12.2 */
COLLID      NUMBER,
COLLINTCOL#  NUMBER,
ACDRRESCOL# NUMBER
);

/
--------------------------------------------------------
--  DDL for Type LOGMNR$COL_GG_RECS
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "LOGMNR$COL_GG_RECS" AS TABLE OF  SYSTEM.LOGMNR$COL_GG_REC;

/
--------------------------------------------------------
--  DDL for Type LOGMNR$GSBA_GG_REC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "LOGMNR$GSBA_GG_REC" AS OBJECT
(
LOGMNR_UID NUMBER,
NAME           VARCHAR2(384),
VALUE          VARCHAR2(4000),
LOGMNR_SPARE1  NUMBER,
LOGMNR_SPARE2  NUMBER,
LOGMNR_SPARE3  VARCHAR2(4000),
LOGMNR_SPARE4  DATE
);

/
--------------------------------------------------------
--  DDL for Type LOGMNR$GSBA_GG_RECS
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "LOGMNR$GSBA_GG_RECS" AS TABLE OF  SYSTEM.LOGMNR$GSBA_GG_REC;

/
--------------------------------------------------------
--  DDL for Type LOGMNR$KEY_GG_REC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "LOGMNR$KEY_GG_REC" as object
(
LOGMNR_UID NUMBER,
KEY# NUMBER,                   /* index obj# or con# */
KEY_FLAGS NUMBER,              /* index or constraint */
KEY_NAME VARCHAR2(384),        /* index name or constraint name */
INDEX_OWNER# NUMBER,
INDEX_OWNERNAME VARCHAR2(384),
COLNAME VARCHAR2(384),
INTCOL# NUMBER,
which number,
KEY_ORDER VARCHAR2(10),              /* asc or desc */
KEYCOL_FLAGS NUMBER,           /* Column properties such as is_null */
SPARE1  NUMBER,
SPARE2  NUMBER,
SPARE3  NUMBER,
SPARE4  VARCHAR2(4000),
SPARE5  VARCHAR2(4000),
SPARE6  VARCHAR2(4000)
);

/
--------------------------------------------------------
--  DDL for Type LOGMNR$KEY_GG_RECS
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "LOGMNR$KEY_GG_RECS" AS TABLE OF  SYSTEM.LOGMNR$KEY_GG_REC;

/
--------------------------------------------------------
--  DDL for Type LOGMNR$SEQ_GG_REC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "LOGMNR$SEQ_GG_REC" as object
(
LOGMNR_UID NUMBER,
OBJ# NUMBER,
NAME VARCHAR2(384),
OWNER# NUMBER,
OWNERNAME VARCHAR2(384),
FLAGS NUMBER,
MD_TAB_SEQCACHE NUMBER,
MD_TAB_SEQINCREMENTBY NUMBER,
SPARE1  NUMBER,
SPARE2  NUMBER,
SPARE3  NUMBER,
SPARE4  VARCHAR2(4000),
SPARE5  VARCHAR2(4000),
SPARE6  VARCHAR2(4000)
);

/
--------------------------------------------------------
--  DDL for Type LOGMNR$SEQ_GG_RECS
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "LOGMNR$SEQ_GG_RECS" AS TABLE OF  SYSTEM.LOGMNR$SEQ_GG_REC;

/
--------------------------------------------------------
--  DDL for Type LOGMNR$TAB_GG_REC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "LOGMNR$TAB_GG_REC" as object
(
LOGMNR_UID NUMBER,
OBJ# NUMBER,
BASEOBJV# NUMBER,
MD_TAB_USERID NUMBER,                /* owner# */
MD_TAB_COLCOUNT NUMBER,              /* user column count */
MD_TAB_TOTAL_COL_NUM NUMBER,         /* kernal column count */
MD_TAB_LOG_GROUP_EXISTS NUMBER,      /* Any log group exists for this table */
MD_TAB_IOT VARCHAR2(3) ,             /* 'YES'/'NO' IS IOT? */
MD_TAB_IOT_OVERFLOW VARCHAR2(3) ,    /* 'YES'/'NO' IOT with overflow ? */
MD_TAB_PARTITION  VARCHAR2(3) ,      /* 'YES'/'NO' is partitioned ? */
MD_TAB_SUBPARTITION VARCHAR2(3) ,    /* 'YES'/'NO' is sub partitioned? */
MD_TAB_XMLTYPETABLE VARCHAR2(3) ,    /* 'YES'/'NO' is xmltype table? */
MD_TAB_OBJECTID NUMBER,              /* object id if table object */
MD_TAB_OWNER VARCHAR2(384),     /* owner name */
MD_TAB_NAME VARCHAR2(384),      /* table name */
MD_TAB_OBJTYPE VARCHAR2(384),   /* Object type name */
MD_TAB_SCN NUMBER,                   /* COMMIT_SCN of this table version */
TAB_FLAGS NUMBER,
TRIGFLAG NUMBER,
OBJ_FLAGS NUMBER,
PROPERTY NUMBER,
PARTTYPE NUMBER,
SUBPARTTYPE NUMBER,
SPARE1  NUMBER,
SPARE2  NUMBER,
SPARE3  NUMBER,
SPARE4  VARCHAR2(4000),
SPARE5  VARCHAR2(4000),
SPARE6  VARCHAR2(4000),
/* Following fields added in 12.1.0.2 */
LVLCNT NUMBER,
LVL1OBJ# NUMBER,
LVL2OBJ# NUMBER,
LVL1TYPE# NUMBER,
LVL2TYPE# NUMBER,
LVL1NAME  VARCHAR2(384),
LVL2NAME  VARCHAR2(384),
INTCOLS   NUMBER,
ASSOC#    NUMBER,
XIDUSN    NUMBER,
XIDSLT    NUMBER,
XIDSQN    NUMBER,
DROP_SCN  NUMBER,
FLAGS     NUMBER,
LOGMNR_SPARE1   NUMBER,
LOGMNR_SPARE2   NUMBER,
LOGMNR_SPARE3   VARCHAR2(1000),
LOGMNR_SPARE4   DATE,
LOGMNR_SPARE5   NUMBER,
LOGMNR_SPARE6   NUMBER,
LOGMNR_SPARE7   NUMBER,
LOGMNR_SPARE8   NUMBER,
LOGMNR_SPARE9   NUMBER,
UNSUPPORTEDCOLS  NUMBER,
COMPLEXTYPECOLS  NUMBER,
NTPARENTOBJNUM   NUMBER,
NTPARENTOBJVERSION NUMBER,
NTPARENTINTCOLNUM  NUMBER,
LOGMNRTLOFLAGS    NUMBER,
LOGMNRMCV VARCHAR2(30),
/* Following fields added in 12.2 */
ACDRFLAGS        NUMBER,                                    /* automatic CDR */
ACDRTSOBJ#       NUMBER,                                    /* automatic CDR */
ACDRROWTSINTCOL# NUMBER                                     /* automatic CDR */
);

/
--------------------------------------------------------
--  DDL for Type LOGMNR$TAB_GG_RECS
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "LOGMNR$TAB_GG_RECS" AS TABLE OF  SYSTEM.LOGMNR$TAB_GG_REC;

/
--------------------------------------------------------
--  DDL for Type LOGMNR$USER_GG_REC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "LOGMNR$USER_GG_REC" AS OBJECT
(
LOGMNR_UID     NUMBER,
USERNAME       VARCHAR2(384),
USERID         NUMBER,
LOGMNR_SPARE1  NUMBER,
LOGMNR_SPARE2  NUMBER,
LOGMNR_SPARE3  VARCHAR2(4000),
LOGMNR_SPARE4  DATE
);

/
--------------------------------------------------------
--  DDL for Type LOGMNR$USER_GG_RECS
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "LOGMNR$USER_GG_RECS" AS TABLE OF  SYSTEM.LOGMNR$USER_GG_REC;

/
--------------------------------------------------------
--  DDL for Table LN_AUTHORITIES
--------------------------------------------------------

  CREATE TABLE "LN_AUTHORITIES" 
   (	"ID" NUMBER(19,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"ROLE_ID" NUMBER(19,0), 
	"USER_ID" NUMBER(19,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table LN_CATEGORIES
--------------------------------------------------------

  CREATE TABLE "LN_CATEGORIES" 
   (	"CATEGORY_ID" NUMBER(19,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"CATEGORY_NAME" VARCHAR2(255 CHAR)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table LN_ORDERDETAILS
--------------------------------------------------------

  CREATE TABLE "LN_ORDERDETAILS" 
   (	"ID" NUMBER(19,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"PRICE" FLOAT(53), 
	"QUANTITY" NUMBER(10,0), 
	"ORDER_ID" NUMBER(19,0), 
	"PRODUCT_ID" NUMBER(19,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table LN_ORDERS
--------------------------------------------------------

  CREATE TABLE "LN_ORDERS" 
   (	"ORDER_ID" NUMBER(19,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"ADDRESS" VARCHAR2(255 CHAR), 
	"CODE_ORDER" VARCHAR2(255 CHAR), 
	"CREATE_ORDER" DATE, 
	"USER_ID" NUMBER(19,0), 
	"DESCRIBE" VARCHAR2(255 CHAR)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table LN_POSTS
--------------------------------------------------------

  CREATE TABLE "LN_POSTS" 
   (	"POST_ID" NUMBER(19,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"CONTENT" VARCHAR2(255 CHAR), 
	"CREATE_POST" VARCHAR2(255 CHAR), 
	"STARS" NUMBER(10,0), 
	"USER_ID" NUMBER(19,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table LN_PRODUCTS
--------------------------------------------------------

  CREATE TABLE "LN_PRODUCTS" 
   (	"PRODUCT_ID" NUMBER(19,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"CREATE_DATE" VARCHAR2(255 CHAR), 
	"PRICE" FLOAT(53), 
	"PRODUCT_NAME" VARCHAR2(255 CHAR), 
	"QUANTITY" NUMBER(19,0), 
	"CATEGORY_ID" NUMBER(19,0), 
	"IMAGES" VARCHAR2(255 CHAR), 
	"DESCRIBE" VARCHAR2(255 CHAR)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table LN_ROLES
--------------------------------------------------------

  CREATE TABLE "LN_ROLES" 
   (	"ROLE_ID" NUMBER(19,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"ROLE_NAME" VARCHAR2(255 CHAR)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table LN_USERS
--------------------------------------------------------

  CREATE TABLE "LN_USERS" 
   (	"USER_ID" NUMBER(19,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"DATE_CREATE" VARCHAR2(255 CHAR), 
	"EMAIL" VARCHAR2(255 CHAR), 
	"PASSWORD" VARCHAR2(255 CHAR), 
	"PHONE" VARCHAR2(255 CHAR), 
	"PHOTO" VARCHAR2(255 CHAR), 
	"USER_NAME" VARCHAR2(255 CHAR)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into LN_AUTHORITIES
SET DEFINE OFF;
REM INSERTING into LN_CATEGORIES
SET DEFINE OFF;
Insert into LN_CATEGORIES (CATEGORY_ID,CATEGORY_NAME) values (1,'Trang b? kh?i ??u');
Insert into LN_CATEGORIES (CATEGORY_ID,CATEGORY_NAME) values (2,'Trang b? ?i r?ng');
Insert into LN_CATEGORIES (CATEGORY_ID,CATEGORY_NAME) values (3,'Thu?c và v?t ph?m');
Insert into LN_CATEGORIES (CATEGORY_ID,CATEGORY_NAME) values (4,'?? l?c v?t');
Insert into LN_CATEGORIES (CATEGORY_ID,CATEGORY_NAME) values (5,'Trang b? phân ph?i');
Insert into LN_CATEGORIES (CATEGORY_ID,CATEGORY_NAME) values (6,'Các lo?i giày');
Insert into LN_CATEGORIES (CATEGORY_ID,CATEGORY_NAME) values (7,'Trang b? s? c?p');
Insert into LN_CATEGORIES (CATEGORY_ID,CATEGORY_NAME) values (8,'Trang b? trung c?p');
Insert into LN_CATEGORIES (CATEGORY_ID,CATEGORY_NAME) values (9,'Trang b? Th?n Tho?i');
Insert into LN_CATEGORIES (CATEGORY_ID,CATEGORY_NAME) values (10,'Trang b? chính');
REM INSERTING into LN_ORDERDETAILS
SET DEFINE OFF;
REM INSERTING into LN_ORDERS
SET DEFINE OFF;
REM INSERTING into LN_POSTS
SET DEFINE OFF;
REM INSERTING into LN_PRODUCTS
SET DEFINE OFF;
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (1,'2020-12-24 13:20',300,'Giáp l?a',2500,7,null,'Thu?c tính: 15 Giáp');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (2,'2020-12-24 13:20',3000,'Súng h?i t?c',2500,10,null,'Ch? S? C? B?n: S?c m?nh công kích: 50, T? l? chí m?ng: 20%, Sát l?c: 12');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (3,'2020-12-24 13:20',3400,'?o?n ?ao Navori',2500,10,null,'Ch? S? C? B?n: S?c m?nh công kích: 60, T? l? chí m?ng: 20%, ?i?m h?i k? n?ng: 30');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (4,'2020-12-24 13:20',350,'Ki?m dài',2500,7,null,'Thu?c tính: 10 S?c m?nh công kích');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (5,'2020-12-24 13:20',2900,'Giáp Thiên Nhiên',2500,10,null,'Ch? S? C? B?n: Máu: 350, Kháng phép: 60, T?c ?? di chuy?n: 5%');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (6,'2020-12-24 13:20',2800,'Ki?m Ác Xà',2500,10,null,'Ch? S? C? B?n: S?c m?nh công kích: 60, Sát l?c: 18');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (7,'2020-12-24 13:20',3000,'Kính Nh?m Ma Pháp',2500,10,null,'Ch? S? C? B?n: S?c m?nh phép thu?t: 100');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (8,'2020-12-24 13:20',3000,'??ng C? V? Tr?',2500,10,null,'Ch? S? C? B?n: S?c m?nh phép thu?t: 70, Máu: 200, ?i?m h?i k? n?ng: 30');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (9,'2020-12-24 13:20',3000,'M? Tr? Nguy?n R?a',2500,10,null,'Ch? S? C? B?n: S?c m?nh phép thu?t: 70, Máu: 350');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (10,'2020-12-24 13:20',3400,'Th??ng Ph?c H?n Serylda',2500,10,null,'Ch? S? C? B?n: S?c m?nh công kích: 45, Xuyên giáp: 30%, ?i?m h?i k? n?ng: 20');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (11,'2020-12-24 13:20',3000,'Chùy B?ch Ngân',2500,10,null,'Ch? S? C? B?n: S?c m?nh công kích: 35, Máu: 200, Kháng phép: 35');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (12,'2020-12-24 13:20',2700,'C?a Xích Hóa K?',2500,10,null,'Ch? S? C? B?n: S?c m?nh công kích: 45, Máu: 200, ?i?m h?i k? n?ng: 15');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (13,'2020-12-24 13:20',450,'L??i hái',2500,1,null,'Thu?c tính, +5 Sát th??ng V?t lý, +3 Máu trên m?i ?òn ?ánh');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (14,'2020-12-24 13:20',450,'Ki?m Doran',2500,1,null,'Thu?c tính: 8 S?c m?nh công kích, 80 máu');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (15,'2020-12-24 13:20',400,'Nh?n Doran',2500,1,null,'Thu?c tính: 15 S?c m?nh phép thu?t, +70 máu');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (16,'2020-12-24 13:20',450,'Khiên Doran',2500,1,null,'Thu?c tính: 80 máu');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (17,'2020-12-24 13:20',450,'Dao g?m nham th?ch',2500,2,null,'Thu?c tính: 12% Hút Máu Toàn Ph?n v?i Quái R?ng. Héo Úa: Gây sát th??ng lên Quái s? thiêu ??t chúng, gây (60 + 10% S?c m?nh Phép thu?t + 50% S?c m?nh Công kích c?ng thêm + 2% Máu c?ng thêm) sát th??ng phép trong 5 giây.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (18,'2020-12-24 13:20',450,'Dao g?m b?ng giá',2500,2,null,'Thu?c tính: 12% Hút Máu Toàn Ph?n v?i Quái R?ng. Héo Úa: Gây sát th??ng lên Quái s? thiêu ??t chúng, gây (60 + 10% S?c m?nh Phép thu?t + 50% S?c m?nh Công kích c?ng thêm + 2% Máu c?ng thêm) sát th??ng phép trong 5 giây.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (19,'2020-12-24 13:20',350,'R?a th? s?n',2500,2,null,'Thu?c tính: +8% Hút máu ??i v?i Quái r?ng');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (20,'2020-12-24 13:20',350,'Bùa th? s?n',2500,2,null,'Thu?c tính: +150% t?c ?? h?i n?ng l??ng khi ? khu v?c r?ng.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (21,'2020-12-24 13:20',2625,'G??m truy tung phù phép: Qu? l?a',2500,2,null,'Thu?c tính: +400 máu, +15% máu c?ng thêm');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (22,'2020-12-24 13:20',2625,'G??m truy tung phù phép: Th?n v?ng',2500,2,null,'Thu?c tính: 300 N?ng l??ng và 10% Gi?m H?i chiêu.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (23,'2020-12-24 13:20',2625,'G??m truy tung phù phép: Huy?t ?ao',2500,2,null,'Thu?c tính: +50% t?c ?? ?ánh.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (24,'2020-12-24 13:20',2625,'G??m truy tung phù phép: Chi?n binh',2500,2,null,'Thu?c tính: +60 sát th??ng v?t lý, +10% gi?m th?i gian h?i chiêu.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (25,'2020-12-24 13:20',2625,'?ao ??ng ?? phù phép: Th?n v?ng',2500,2,null,'Thu?c tính: +60 s?c m?nh phép thu?t, +7% t?c ?? di chuy?n');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (26,'2020-12-24 13:20',2625,'?ao ??ng ?? phù phép: Qu? l?a',2500,2,null,'Thu?c tính: +400 máu, +15% máu c?ng thêm.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (27,'2020-12-24 13:20',2625,'?ao ??ng ?? phù phép: Huy?t ?ao',2500,2,null,'Thu?c tính: T?c ?? ?ánh và sát th??ng trên ?òn ?ánh t?ng lên 40% ? 50%.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (28,'2020-12-24 13:20',2625,'?ao ??ng ?? phù phép: Chi?n binh',2500,2,null,'Thu?c tính: +60 sát th??ng v?t lý, +10% gi?m th?i gian h?i chiêu.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (29,'2020-12-24 13:20',50,'Bình máu',2500,3,null,'Thu?c tính: Kích Ho?t – Tiêu Th?: U?ng ?? h?i ph?c 150 Máu trong 15 giây. Có th? mang ??n t?i ?a 5 Bình Máu.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (30,'2020-12-24 13:20',150,'Thu?c tái s? d?ng',2500,3,null,'Thu?c tính: S? d?ng ?i?m tích tr? ?? h?i 125 Máu trong 12 giây. Có th? ch?a ???c 2 ?i?m tích tr? và h?i ??y khi ghé th?m C?a Hàng.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (31,'2020-12-24 13:20',500,'Bình thu?c bi?n d?',2500,3,null,'Thu?c tính: Tiêu hao m?t c?ng d?n ?? h?i l?i 125 Máu và 75 N?ng l??ng trong 12 giây.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (32,'2020-12-24 13:20',500,'D??c ph?m cung c?p',2500,3,null,'Thu?c tính: +300 Máu, 25% Kháng Hi?u ?ng, t?ng kích c? t??ng, và cho hi?u ?ng T?p K?t trong 3 phút.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (33,'2020-12-24 13:20',500,'D??c ph?m ph?n n?',2500,3,null,'Thu?c tính: Nh?n 30 Sát th??ng V?t lí và hi?u ?ng Hung H?ng trong 3 phút.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (34,'2020-12-24 13:20',500,'D??c ph?m thu?t pháp',2500,3,null,'Thu?c tính: Nh?n 50 S?c m?nh Phép thu?t, 15 t?c ?? h?i N?ng l??ng m?i 5 giây và hi?u ?ng Thu?t Pháp trong 3 phút.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (35,'2020-12-24 13:20',75,'M?t ki?m soát',2500,4,null,'Thu?c tính: ki?m soát m?t vùng bán kính 360m.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (36,'2020-12-24 13:20',10,'m?t xanh',2500,4,null,'Thu?c tính: Phát hi?n t?m nhìn th??ng xung quanh.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (37,'2020-12-24 13:20',10,'Th?u kính',2500,4,null,'Thu?c tính: Không tàn hình, t?n t?i cho t?i khi b? t??ng ??ch phá h?y.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (38,'2020-12-24 13:20',75,'M?t tím',2500,4,null,'Thu?c tính: T?n t?i v?nh vi?n cho t?i khi b? t??ng ??ch phá h?y.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (39,'2020-12-24 13:20',10,'?á t?a sáng',2500,4,null,'Thu?c tính: + Khi c?m t?n t?i trong 3 phút.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (40,'2020-12-24 13:20',10,'H?ng ng?c t?a sáng',2500,4,null,'Thu?c tính: Nâng c?p t? ?á T?a Sáng.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (41,'2020-12-24 13:20',10,'M?t giám sát',2500,4,null,'Thu?c tính: Nâng c?p t? ?á T?a Sáng.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (42,'2020-12-24 13:20',10,'M?t ma thu?t',2500,4,null,'Thu?c tính: Nâng c?p t? ?á T?a Sáng.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (43,'2020-12-24 13:20',10,'M?t ?c ??o',2500,4,null,'Thu?c tính: Nâng c?p t? ?á T?a Sáng.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (44,'2020-12-24 13:20',10,'Máy quét',2500,4,null,'Thu?c tính: Phát hi?n và vô hi?u hóa các b?y, thi?t b?, m?t tàng hình trong 6 giây và có kh? n?ng phát hi?n tàng hình trong 10 giây khi nâng c?p thành Máy Quét Oracle.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (45,'2020-12-24 13:20',10,'Bánh quy',2500,5,null,'Thu?c tính: H?i 80 Máu và 50 N?ng l??ng trong 10 giây.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (46,'2020-12-24 13:20',300,'Giày th??ng',2500,6,null,'Thu?c tính: + 25 t?c ?? di chuy?n.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (47,'2020-12-24 13:20',1100,'Giày thép gai',2500,6,null,'Thu?c tính: + 20 giáp., + 45 t?c ?? di chuy?n, Gi?m sát th??ng nh?n vào t? ?òn ?ánh ?i 12%.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (48,'2020-12-24 13:20',1100,'Giày Pháp S?',2500,6,null,'Thu?c tính: + 18 xuyên giáp., + 45 t?c ?? di chuy?n.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (49,'2020-12-24 13:20',900,'Giày b?c',2500,6,null,'Thu?c tính: +65 T?c ?? Di chuy?n, Kháng Làm Ch?m: Gi?m các hi?u ?ng làm ch?m ?i 25%');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (50,'2020-12-24 13:20',1000,'Giày c? ??ng',2500,6,null,'Thu?c tính: +25 T?c ?? Di chuy?n., T?ng lên thành +105 T?c ?? Di chuy?n sau khi k?t thúc tr?ng thái giao tranh trong 5 giây.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (51,'2020-12-24 13:20',900,'Giày khai sáng Lonia',2500,6,null,'Thu?c tính: +15% Gi?m th?i gian h?i chiêu, +45 T?c ?? Di chuy?n, Gi?m th?i gian h?i c?a Phép B? Tr? 10%');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (52,'2020-12-24 13:20',1100,'Giày thu? ngân',2500,6,null,'Thu?c tính: + 25 kháng phép., + 45 t?c ?? di chuy?n, 30% kháng hi?u ?ng.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (53,'2020-12-24 13:20',1100,'Giày cu?ng n?',2500,6,null,'Thu?c tính: 35% T?c ?? ?ánh., 45 T?c ?? di chuy?n.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (54,'2020-12-24 13:20',900,'Sách qu?',2500,7,null,'Thu?c tính: 35 S?c m?nh phép thu?t, 10 ?i?m h?i k? n?ng');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (55,'2020-12-24 13:20',1300,'Ki?m B.F',2500,7,null,'Thu?c tính: 40 Sát th??ng công kích.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (56,'2020-12-24 13:20',850,'G?y bùng n?',2500,7,null,'Thu?c tính: 40 S?c m?nh phép thu?t.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (57,'2020-12-24 13:20',435,'Sách c?',2500,7,null,'Thu?c tính: 20 S?c m?nh phép thu?t.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (58,'2020-12-24 13:20',600,'Áo choàng tím',2500,7,null,'15% T? l? chí m?ng.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (59,'2020-12-24 13:20',300,'Dao g?m',2500,7,null,'Thu?c tính: 12% T?c ?? ?ánh.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (60,'2020-12-24 13:20',350,'Phong ?n h?c ám',2500,7,null,'Thu?c tính: 15 S?c m?nh phép thu?t, 40 Máu');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (61,'2020-12-24 13:20',1250,'G?y quá kh?',2500,7,null,'Thu?c tính: 60 S?c m?nh phép thu?t.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (62,'2020-12-24 13:20',450,'Áo v?i',2500,7,null,'Thu?c tính: 25 Kháng phép.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (63,'2020-12-24 13:20',900,'Giày b?c',2500,6,null,'Thu?c tính: +65 T?c ?? Di chuy?n, Kháng Làm Ch?m: Gi?m các hi?u ?ng làm ch?m ?i 25%');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (64,'2020-12-24 13:20',875,'Cu?c chim',2500,7,null,'Thu?c tính: 25 Sát th??ng công kích.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (65,'2020-12-24 13:20',150,'Ng?c l?c b?o',2500,7,null,'Thu?c tính: 50% T?c ?? h?i máu');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (66,'2020-12-24 13:20',400,'Khiên c? v?t',2500,7,null,'Thu?c tính: 5 S?c m?nh phép thu?t, 30 Máu, 25% T?c ?? h?i máu c? b?n, 2 vàng trên 10 giây.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (67,'2020-12-24 13:20',400,'H?ng ng?c',2500,7,null,'Thu?c tính: 150 Máu.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (68,'2020-12-24 13:20',350,'Lam ng?c',2500,7,null,'Thu?c tính: 250 N?ng l??ng');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (69,'2020-12-24 13:20',400,'L??i g??m ?o?t thu?t',2500,7,null,'Thu?c tính: 5 S?c m?nh phép thu?t, 10 Máu, 5% T?c ?? h?i n?ng l??ng c? b?n, 2 vàng trên 10 giây.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (70,'2020-12-24 13:20',400,'Giáp thép',2500,7,null,'Thu?c tính: 3 S?c m?nh công kích, 30 Máu , 25% T?c ?? h?i máu c? b?n, 2 vàng trên 10 giây.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (71,'2020-12-24 13:20',650,'??ng h? ng?ng ??ng',2500,7,null,'Thu?c tính: Ng?ng ??ng: Dùng m?t l?n duy nh?t ?? tr? nên B?t T? và Không Th? Ch? ??nh trong 2.5 giây, nh?ng s? b?t ??ng trong th?i gian này (bi?n trang b? này thành ??ng H? V?n V?).');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (72,'2020-12-24 13:20',400,'N??c m?t n? th?n',2500,7,null,'240 N?ng l??ng.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (73,'2020-12-24 13:20',400,'Li?m ma',2500,7,null,'Thu?c tính: 5 S?c m?nh công kích, 10 Máu, 25% T?c ?? h?i mana c? b?n, 2 vàng trên 10 giây.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (74,'2020-12-24 13:20',250,'Bùa tiên',2500,7,null,'Thu?c tính: 50% T?c ?? h?i mana c? b?n');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (75,'2020-12-24 13:20',1500,'Lá ch?n quân ?oàn',2500,8,null,'Thu?c tính: 30 Giáp, 30 Kháng phép, 10 ?i?m h?i k? n?ng.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (76,'2020-12-24 13:20',850,'Linh h?n l?c lõng',2500,8,null,'Thu?c tính: 30 S?c m?nh phép thu?t, Lãng du: T?ng 5% T?c ?? di chuy?n.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (77,'2020-12-24 13:20',1100,'Tàn tích Bami',2500,8,null,'Thu?c tính: 300 Máu');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (78,'2020-12-24 13:20',950,'G??ng th?n Bandle',2500,8,'https://izgaming.com/wp-content/uploads/2020/11/guong-than-bandle.png','Thu?c tính: 20 S?c m?nh Phép thu?t, 10 ?i?m h?i K? n?ng, 50% T?c ?? H?i N?ng l??ng C? b?n.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (79,'2020-12-24 13:20',1250,'?á h?c hóa',2500,8,'https://izgaming.com/wp-content/uploads/2021/01/da-hac-hoa.jpg','Thu?c tính: 25 S?c m?nh phép thu?t, 15% Xuyên phép');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (80,'2020-12-24 13:20',800,'Áo choang gai',2500,8,'https://izgaming.com/wp-content/uploads/2020/12/ao-choang-gai.jpg','Thu?c tính: 35 Giáp.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (81,'2020-12-24 13:20',1100,'Búa chi?n Caulfield',2500,8,'https://izgaming.com/wp-content/uploads/2020/11/bua-chien-caulfield.png','Thu?c tính: 25 S?c m?nh Công kích, Th?i gian h?i chiêu 10 k? n?ng.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (82,'2020-12-24 13:20',800,'Giáp l??i',2500,8,'https://izgaming.com/wp-content/uploads/2020/11/giap-luoi.png','Thu?c tính: 40 giáp');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (83,'2020-12-24 13:20',650,'Vòng tay pha lê',2500,8,'https://izgaming.com/wp-content/uploads/2021/01/vong-tay-pha-le.jpg','Thu?c tính: 200 Máu, 50% T?c ?? h?i máu c? b?n.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (84,'2020-12-24 13:20',800,'G??m ?? t?',2500,8,'https://izgaming.com/wp-content/uploads/2020/12/guom-do-te.png','Thu?c tính: 15 S?c m?nh công kích.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (85,'2020-12-24 13:20',800,'Di v?t tai ??ng',2500,8,'https://izgaming.com/wp-content/uploads/2021/01/di-vat-tai-uong.jpg','Thu?c tính: 10% Hi?u l?c h?i máu và lá ch?n, 50% T?c ?? h?i n?ng l??ng c? b?n.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (86,'2020-12-24 13:20',400,'L??i hái u linh',2500,8,'https://izgaming.com/wp-content/uploads/2021/01/luoi-hai-u-linh.jpg','Thu?c tính: 10 S?c m?nh công kích, 70 Máu, Vàng m?i 10 gi?y: 3.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (87,'2020-12-24 13:20',1100,'Rìu nhanh nh?n',2500,8,'https://izgaming.com/wp-content/uploads/2020/11/riu-nhanh-nhen.png','Thu?c tính: 15 S?c m?nh công kích, 15% T?c ?? ?ánh.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (88,'2020-12-24 13:20',1300,'Ki?m r?ng c?a',2500,8,'https://izgaming.com/wp-content/uploads/2021/01/kiem-rang-cua.jpg','Thu?c tính: 25 S?c m?nh công kích, 35 Kháng phép');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (89,'2020-12-24 13:20',1050,'Máy chuy?n pha Hextech',2500,8,'https://izgaming.com/wp-content/uploads/2020/11/may-chuyen-pha-hextech.png','Thu?c tính: 40 S?c m?nh phép thu?t.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (90,'2020-12-24 13:20',1200,'Dây thép gai',2500,8,'https://izgaming.com/wp-content/uploads/2020/11/day-thep-gai.png','Thu?c tính: 30 S?c m?nh công kích.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (91,'2020-12-24 13:20',800,'H?a ng?c',2500,8,'https://izgaming.com/wp-content/uploads/2020/11/hoa-ngoc.png','Thu?c tính: 200 Máu, 10 ?i?m h?i K? n?ng');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (92,'2020-12-24 13:20',700,'M?nh v? Kircheis',2500,8,'https://izgaming.com/wp-content/uploads/2020/12/Manh-vo-Kircheis.jpg','Thu?c tính: 15% T?c ?? ?ánh.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (93,'2020-12-24 13:20',1300,'Tr??ng ác ma',2500,8,'https://izgaming.com/wp-content/uploads/2020/11/truong-ac-ma.png','Thu?c tính: 20 S?c m?nh phép thu?t, 150 Máu, 10% Hút máu toàn ph?n');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (94,'2020-12-24 13:20',1450,'Cung xanh',2500,8,'https://izgaming.com/wp-content/uploads/2020/03/Cung-Xanh.png','Thu?c tính: 20 S?c m?nh công kích, 20% Xuyên giáp.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (95,'2020-12-24 13:20',1300,'Bí ch??ng th?t truy?n',2500,8,'https://izgaming.com/wp-content/uploads/2020/11/bi-chuong-that-truyen.png','Thu?c tính: 40 S?c m?nh phép thu?t, 300 N?ng l??ng, 10 ?i?m h?i k? n?ng.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (96,'2020-12-24 13:20',1300,'Bó tên ánh sáng',2500,8,'https://izgaming.com/wp-content/uploads/2020/11/bo-ten-anh-sang.png','Thu?c tính: 30 S?c m?nh công kích, 15% T?c ?? ?ánh.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (97,'2020-12-24 13:20',900,'Áo choàng b?c',2500,8,'https://izgaming.com/wp-content/uploads/2020/11/ao-choang-tim-1.png','Thu?c tính: 50 Kháng phép.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (98,'2020-12-24 13:20',800,'Ng?c quên lãng',2500,8,'https://izgaming.com/wp-content/uploads/2021/01/ngoc-quen-lang.jpg','Thu?c tính: 30 S?c m?nh phép thu?t.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (99,'2020-12-24 13:20',1100,'Búa g?',2500,8,'https://izgaming.com/wp-content/uploads/2020/11/bua-go.png','Thu?c tính: 15 S?c m?nh công kích, 200 Máu');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (100,'2020-12-24 13:20',800,'Dao ph?n n?',2500,8,'https://izgaming.com/wp-content/uploads/2020/12/dao-phan-no.jpg','Thu?c tính: 25% T?c ?? ?ánh.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (101,'2020-12-24 13:20',1000,'Cung g?',2500,8,'https://izgaming.com/wp-content/uploads/2020/12/cung-go.jpg','Thu?c tính: 25% T?c ?? ?ánh.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (102,'2020-12-24 13:20',400,'Giáp thép c? ng?',2500,8,'https://izgaming.com/wp-content/uploads/2021/01/giap-thep-co-ngu.jpg','Thu?c tính: 100 Máu, 6 S?c m?nh t?n công, Vàng m?i 10 giây 3, T?c ?? h?i máu: 50%');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (103,'2020-12-24 13:20',900,'Giáp tay Seeker',2500,8,'https://izgaming.com/wp-content/uploads/2020/12/giap-tay-seeker.jpg','Thu?c tính: 20 S?c m?nh phép thu?t, 15 Giáp.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (104,'2020-12-24 13:20',1100,'Dao hung tàn',2500,8,'https://izgaming.com/wp-content/uploads/2020/11/dao-hung-tan.png','Thu?c tính: 30 S?c m?nh công kích, Khoét: Nh?n 10 sát l?c.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (105,'2020-12-24 13:20',700,'Th?y ki?m',2500,8,'https://izgaming.com/wp-content/uploads/2020/11/thuy-kiem.png','Thu?c tính: Ki?m Phép: Sau khi s? d?ng m?t K? n?ng, ?òn ?ánh ti?p theo c?a b?n gây thêm (100% S?c m?nh Công kích c? b?n) sát th??ng v?t lý (h?i l?i sau 1.5 giây).');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (106,'2020-12-24 13:20',1250,'Áo choàng ám ?nh',2500,8,'https://izgaming.com/wp-content/uploads/2020/12/Manh-vo-Kircheis.jpg','Thu?c tính: 250 Máu, 25 Kháng phép.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (107,'2020-12-24 13:20',1100,'stirring-wardstone',2500,8,'https://izgaming.com/wp-content/uploads/2021/01/stirring-wardstone.jpg','Thu?c tính: V?t ph?m này có th? ch?a t?i ?a 3 M?t Ki?m Soát ?ã mua.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (108,'2020-12-24 13:20',400,'targon’s Buckler',2500,8,'https://izgaming.com/wp-content/uploads/2021/01/targons-Buckler.jpg','Thu?c tính: 10 s?c m?nh phép thu?t, 3 Th? H? Vàng, 100 s?c kh?e, Ph?c h?i s?c kh?e c? b?n 75%.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (109,'2020-12-24 13:20',350,'Rìu Tiamat',2500,8,'https://izgaming.com/wp-content/uploads/2020/12/riu-tiamat.jpg','Thu?c tính: 25 S?c m?nh công kích.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (110,'2020-12-24 13:20',900,'Huy?t tr??ng',2500,8,'https://izgaming.com/wp-content/uploads/2020/11/huyet-truong.png','Thu?c tính: 15 S?c m?nh công kích, 10% Hút máu.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (111,'2020-12-24 13:20',1200,'Dây chuy?n s? s?ng',2500,8,'https://izgaming.com/wp-content/uploads/2021/01/verdant-Barrier.jpg','Thu?c tính: 25 S?c m?nh phép thu?t, 25 Kháng phép.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (112,'2020-12-24 13:20',1300,'Dây chuy?n chu?c t?i',2500,8,'https://izgaming.com/wp-content/uploads/2021/01/ngoc-quen-lang.jpg','Thu?c tính: +30 kháng phép.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (113,'2020-12-24 13:20',1100,'Giáp cai ng?c',2500,8,'https://izgaming.com/wp-content/uploads/2020/12/giap-cai-nguc.jpg','Thu?c tính: 40 Giáp');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (114,'2020-12-24 13:20',1050,'Song ki?m',2500,8,'https://izgaming.com/wp-content/uploads/2020/12/song-kiem.jpg','Thu?c tính: 18% T?c ?? ?ánh, 15% T? l? chí m?ng.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (115,'2020-12-24 13:20',800,'?ai thanh thoát',2500,8,'https://izgaming.com/wp-content/uploads/2020/11/dai-thanh-thoat.png','Thu?c tính: 150 Máu, Vút bay: T?ng 5% t?c ?? di chuy?n.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (116,'2020-12-24 13:20',1000,'watchful wardstone',2500,8,'https://izgaming.com/wp-content/uploads/2021/01/watchful-wardstone.jpg','Thu?c tính: +10 kh? n?ng v?i vàng, +150 máu, +50% h?i n?ng l??ng c? b?n');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (117,'2020-12-24 13:20',3400,'B?ng Tr??ng V?nh C?u',2500,9,'https://izgaming.com/wp-content/uploads/2020/12/giap-tay-seeker.jpg','Thu?c tính: Sát th??ng phép: +80., Máu: +200., Mana: +600., ?i?m h?i k? n?ng: +10..');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (118,'2020-12-24 13:20',3400,'Bão T? Luden',2500,9,'https://izgaming.com/wp-content/uploads/2020/11/bao-to-luden.jpg','Thu?c tính: Sát th??ng phép: +80., Xuyên kháng phép: +10., Mana: +600, ?i?m h?i k? n?ng: +10.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (119,'2020-12-24 13:20',2700,'Bùa Nguy?t Th?ch',2500,9,'https://izgaming.com/wp-content/uploads/2020/11/bua-nguyet-thach.jpg','Thu?c tính: Máu: 200, Sát th??ng phép: 40, ?i?m h?i k? n?ng: 10, H?i mana: 100%.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (120,'2020-12-24 13:20',3300,'Chùy H?p Huy?t',2500,9,'https://izgaming.com/wp-content/uploads/2020/11/chuy-hap-huyet.jpg','Thu?c tính: S?c m?nh công kích: +45, Máu: +400, H?i máu: +150%., ?i?m h?i k? n?ng: +20.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (121,'2020-12-24 13:20',3300,'Chùy Ph?n Kích',2500,9,'https://izgaming.com/wp-content/uploads/2020/11/chuy-phan-kich.jpg','Thu?c tính: S?c m?nh công kích: +50., Máu: +300., T?c ?ánh: +20., ?i?m h?i k? n?ng: +10.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (122,'2020-12-24 13:20',3400,'Cung phong linh',2500,9,'https://izgaming.com/wp-content/uploads/2020/11/cung-phong-linh.png','Thu?c tính: 55 Sát th??ng v?t lý., 20% T?c ?? ?ánh. , 20% T? l? chí m?ng.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (123,'2020-12-24 13:20',3200,'?ai Tên L?a Hextech',2500,9,'https://izgaming.com/wp-content/uploads/2020/11/dai-ten-lua-Hextech.jpg','Thu?c tính: Sát th??ng phép: +80., Máu: +250., ?i?m h?i k? n?ng: +15.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (124,'2020-12-24 13:20',3200,'D? Ki?m Draktharr',2500,9,'https://izgaming.com/wp-content/uploads/2020/11/da-kiem-draktharr.jpg','Thu?c tính: Sát th??ng v?t lý: +55., ?i?m xuyên giáp: +18., ?i?m h?i k? n?ng: +20.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (125,'2020-12-24 13:20',2700,'Dây chuy?n Iron Solari',2500,9,'https://izgaming.com/wp-content/uploads/2020/11/day-chuyen-iron-solari.jpg','Thu?c tính: Máu: +200., Giáp: +30., Kháng Phép: +30., ?i?m h?i k? n?ng: +20.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (126,'2020-12-24 13:20',3200,'G?ng Tay B?ng H?a',2500,9,'https://izgaming.com/wp-content/uploads/2020/11/gang-tay-bang-hoa.jpg','Thu?c tính: Máu: +350., Giáp: +50., Kháng phép: +25., ?i?m h?i k? n?ng: +15.');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (127,'2020-12-24 13:20',3200,'Giáp Gia T?c Hóa Cu?ng',2500,9,'https://izgaming.com/wp-content/uploads/2020/11/giap-gia-toc-hoa-cuong.jpg','Thu?c tính: Máu: +350., Giáp: +25., Kháng phép: +50., ?i?m h?i k? n?ng: +15,');
Insert into LN_PRODUCTS (PRODUCT_ID,CREATE_DATE,PRICE,PRODUCT_NAME,QUANTITY,CATEGORY_ID,IMAGES,DESCRIBE) values (128,'2020-12-24 13:20',3200,'Khiên Thái D??ng',2500,9,'https://izgaming.com/wp-content/uploads/2020/11/khien-thai-duong.jpg','Thu?c tính: Máu: 450, Giáp: 30, Kháng phép: 30, ?i?m h?i k? n?ng: 15');
REM INSERTING into LN_ROLES
SET DEFINE OFF;
Insert into LN_ROLES (ROLE_ID,ROLE_NAME) values (4,'Customer');
Insert into LN_ROLES (ROLE_ID,ROLE_NAME) values (2,'Manager');
Insert into LN_ROLES (ROLE_ID,ROLE_NAME) values (3,'Employee');
Insert into LN_ROLES (ROLE_ID,ROLE_NAME) values (5,'Anonymus');
REM INSERTING into LN_USERS
SET DEFINE OFF;
REM INSERTING into AQ$_INTERNET_AGENTS
SET DEFINE OFF;
Insert into AQ$_INTERNET_AGENTS (AGENT_NAME,PROTOCOL,SPARE1) values ('SCHEDULER$_EVENT_AGENT',0,null);
Insert into AQ$_INTERNET_AGENTS (AGENT_NAME,PROTOCOL,SPARE1) values ('SCHEDULER$_REMDB_AGENT',0,null);
Insert into AQ$_INTERNET_AGENTS (AGENT_NAME,PROTOCOL,SPARE1) values ('SERVER_ALERT',0,null);
Insert into AQ$_INTERNET_AGENTS (AGENT_NAME,PROTOCOL,SPARE1) values ('HAE_SUB',0,null);
Insert into AQ$_INTERNET_AGENTS (AGENT_NAME,PROTOCOL,SPARE1) values ('ILM_AGENT',0,null);
Insert into AQ$_INTERNET_AGENTS (AGENT_NAME,PROTOCOL,SPARE1) values ('SCHEDULER$_LBAGT',0,null);
REM INSERTING into AQ$_INTERNET_AGENT_PRIVS
SET DEFINE OFF;
Insert into AQ$_INTERNET_AGENT_PRIVS (AGENT_NAME,DB_USERNAME) values ('SCHEDULER$_EVENT_AGENT','SYS');
Insert into AQ$_INTERNET_AGENT_PRIVS (AGENT_NAME,DB_USERNAME) values ('SCHEDULER$_LBAGT','SYS');
Insert into AQ$_INTERNET_AGENT_PRIVS (AGENT_NAME,DB_USERNAME) values ('SCHEDULER$_REMDB_AGENT','SYS');
Insert into AQ$_INTERNET_AGENT_PRIVS (AGENT_NAME,DB_USERNAME) values ('SERVER_ALERT','SYS');
REM INSERTING into AQ$_KEY_SHARD_MAP
SET DEFINE OFF;
REM INSERTING into AQ$_QUEUES
SET DEFINE OFF;
Insert into AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('A47690EB861F494FB3FF0BC72D746B17',19668,'AQ$_SCHEDULER$_EVENT_QTAB_E',19646,1,0,0,0,0,0,'exception queue',null,null,null,null,null,0,0);
Insert into AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('0CC5EF1FCF0C47B39567CAD19745BE54',19669,'SCHEDULER$_EVENT_QUEUE',19646,0,3,5,0,0,3600,'Scheduler event queue',null,null,null,null,null,0,0);
Insert into AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('621AF4E212CE4151B8966409A3B689B2',19702,'AQ$_SCHEDULER$_REMDB_JOBQTAB_E',19673,1,0,0,0,0,0,'exception queue',null,null,null,null,null,0,0);
Insert into AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('14332BFEA6EF4530BAAD1BAC657F52CC',19703,'SCHEDULER$_REMDB_JOBQ',19673,0,3,5,0,0,0,'Scheduler remote db job queue',null,null,null,null,null,0,0);
Insert into AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('D9F12FFF0D824947BCCF5BD90DEE0B2A',19732,'AQ$_SCHEDULER_FILEWATCHER_QT_E',19707,1,0,0,0,0,0,'exception queue',null,null,null,null,null,0,0);
Insert into AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('478442A86EF64D8FA6AC3AEED3603983',19733,'SCHEDULER_FILEWATCHER_Q',19707,0,3,5,0,0,0,'Scheduler file watcher results queue',null,null,null,null,null,0,0);
Insert into AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('96FE5D7AB7904DCD90DEB4497C337C20',19787,'AQ$_ALERT_QT_E',19765,1,2,0,0,0,0,'exception queue',null,null,null,null,null,0,0);
Insert into AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('418A1B69F4CA42EBAD0C30D3581F1AD7',19788,'ALERT_QUE',19765,0,3,5,0,0,0,'Server Generated Alert Queue',null,null,null,null,null,0,0);
Insert into AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('100C82BBF3D747D89D2AD003C73A829B',20088,'AQ$_ORA$PREPLUGIN_BACKUP_QTB_E',20066,1,0,0,0,0,0,'exception queue',null,null,null,null,null,0,0);
Insert into AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('1EE38090888B47DBA6B95BA53AE4D536',20089,'ORA$PREPLUGIN_BACKUP_QUE',20066,0,3,5,0,0,0,'SYS.ORA$PREPLUGIN_BACKUP_QUE',null,null,null,null,null,0,0);
Insert into AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('8A7759BC235F4A35B81E0FFC7150897B',20308,'AQ$_AQ$_MEM_MC_E',20284,1,0,0,0,0,0,'exception queue',null,null,null,null,null,0,0);
Insert into AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('4639C35722E04719BB27CB04E4AE52B3',20309,'SRVQUEUE',20284,2,3,0,0,0,0,null,null,null,null,null,null,0,0);
Insert into AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('954AB41424C946E587976955AF6B2E14',20320,'AQ$_AQ_EVENT_TABLE_E',20310,1,0,0,0,0,0,'exception queue',null,null,null,null,null,0,0);
Insert into AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('EBB22C8AEC434E9BB1CF837B5B864F7A',20321,'AQ_EVENT_TABLE_Q',20310,0,3,5,0,0,0,'CREATING AQ_EVENT_TABLE_Q QUEUE',null,null,null,null,null,0,0);
Insert into AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('DFF4D9F355CD493D9D822C5E232E5D19',20344,'AQ$_AQ_PROP_TABLE_E',20322,1,0,0,0,0,0,'exception queue',null,null,null,null,null,0,0);
Insert into AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('453001AD73F040C79E9971211814B30C',20345,'AQ_PROP_NOTIFY',20322,0,3,5,0,0,0,'Queue for Notifying events in AQ Prop. Scheduling',null,null,null,null,null,0,0);
Insert into AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('BB20A76128B44CA29A196DF309AA9B01',20365,'AQ$_CQN_EVENT_TABLE_E',20355,1,0,0,0,0,0,'exception queue',null,null,null,null,null,0,0);
Insert into AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('51D0F599E4B34D4E8D018AF62082872B',20366,'CQN_EVENT_TABLE_Q',20355,0,3,5,0,0,0,'CREATING CQN_EVENT_TABLE_Q QUEUE',null,null,null,null,null,0,0);
Insert into AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('DAE87352078B4490BCFC97F743DC6D3B',20677,'AQ$_SYS$SERVICE_METRICS_TAB_E',20655,1,0,0,0,0,0,'exception queue',null,null,null,null,null,0,0);
Insert into AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('7812988458D24541920BA32844914254',20678,'SYS$SERVICE_METRICS',20655,0,3,5,0,0,3600,null,null,null,null,null,null,0,0);
Insert into AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('7489C1D385814A88971C56ABA93F06A3',20846,'AQ$_PDB_MON_EVENT_QTABLE$_E',20822,1,0,0,0,0,0,'exception queue',null,null,null,null,null,0,0);
Insert into AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('46C265D9AF224F42BD207F6782528A44',20847,'PDB_MON_EVENT_QUEUE$',20822,0,3,5,0,0,86400,'Queue for raw pdb event information',null,null,null,null,null,0,0);
Insert into AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('A73405110A2F466D8D77097D03D23F1D',20988,'AQ$_CHANGE_LOG_QUEUE_TABLE_E',20966,1,0,0,0,0,0,'exception queue',null,null,null,null,null,0,0);
Insert into AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('99A7C9AB7B8149D0B2A6EB05CD425E7D',20989,'CHANGE_LOG_QUEUE',20966,0,3,5,0,0,0,'GSM Change Log Queue',null,null,null,null,null,0,0);
Insert into AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('BC2A1BEFA2F249C9A9B6B0CA5257C17A',22724,'AQ$_WM$EVENT_QUEUE_TABLE_E',22697,1,0,0,0,0,0,'exception queue',null,null,null,null,null,0,0);
Insert into AQ$_QUEUES (OID,EVENTID,NAME,TABLE_OBJNO,USAGE,ENABLE_FLAG,MAX_RETRIES,RETRY_DELAY,PROPERTIES,RET_TIME,QUEUE_COMMENT,SUBSCRIBERS,MEMORY_THRESHOLD,SERVICE_NAME,NETWORK_NAME,SUB_OID,SHARDED,BASE_QUEUE) values ('F208D58599E34D4684CA6F92B87E2F0D',22725,'WM$EVENT_QUEUE',22697,0,3,5,0,0,0,'OWM Events Queue',null,null,null,null,null,0,0);
REM INSERTING into AQ$_QUEUE_TABLES
SET DEFINE OFF;
Insert into AQ$_QUEUE_TABLES (SCHEMA,NAME,UDATA_TYPE,OBJNO,FLAGS,SORT_COLS,TIMEZONE,TABLE_COMMENT) values ('SYS','SCHEDULER$_EVENT_QTAB',1,19646,16805897,2,'00:00','Scheduler event queue table');
Insert into AQ$_QUEUE_TABLES (SCHEMA,NAME,UDATA_TYPE,OBJNO,FLAGS,SORT_COLS,TIMEZONE,TABLE_COMMENT) values ('SYS','SCHEDULER$_REMDB_JOBQTAB',1,19673,16801801,2,'00:00','Scheduler remote db job queue table');
Insert into AQ$_QUEUE_TABLES (SCHEMA,NAME,UDATA_TYPE,OBJNO,FLAGS,SORT_COLS,TIMEZONE,TABLE_COMMENT) values ('SYS','SCHEDULER_FILEWATCHER_QT',1,19707,16805897,2,'00:00','Scheduler file watcher result queue table');
Insert into AQ$_QUEUE_TABLES (SCHEMA,NAME,UDATA_TYPE,OBJNO,FLAGS,SORT_COLS,TIMEZONE,TABLE_COMMENT) values ('SYS','ALERT_QT',1,19765,16805897,2,'00:00','Server Generated Alert Queue Table');
Insert into AQ$_QUEUE_TABLES (SCHEMA,NAME,UDATA_TYPE,OBJNO,FLAGS,SORT_COLS,TIMEZONE,TABLE_COMMENT) values ('SYS','ORA$PREPLUGIN_BACKUP_QTB',1,20066,16801801,2,'00:00','SYS.ORA$PREPLUGIN_BACKUP_QUE');
Insert into AQ$_QUEUE_TABLES (SCHEMA,NAME,UDATA_TYPE,OBJNO,FLAGS,SORT_COLS,TIMEZONE,TABLE_COMMENT) values ('SYS','AQ$_MEM_MC',3,20284,16801801,2,'00:00','table for non_persistent queues');
Insert into AQ$_QUEUE_TABLES (SCHEMA,NAME,UDATA_TYPE,OBJNO,FLAGS,SORT_COLS,TIMEZONE,TABLE_COMMENT) values ('SYS','AQ_EVENT_TABLE',1,20310,16793600,2,'00:00','CREATING AQ_EVENT_TABLE QUEUE TABLE');
Insert into AQ$_QUEUE_TABLES (SCHEMA,NAME,UDATA_TYPE,OBJNO,FLAGS,SORT_COLS,TIMEZONE,TABLE_COMMENT) values ('SYS','AQ_PROP_TABLE',1,20322,16801801,2,'00:00','Queue Table for Notification in AQ Prop. Scheduling');
Insert into AQ$_QUEUE_TABLES (SCHEMA,NAME,UDATA_TYPE,OBJNO,FLAGS,SORT_COLS,TIMEZONE,TABLE_COMMENT) values ('SYS','CQN_EVENT_TABLE',1,20355,16793600,2,'00:00','CREATING CQN_EVENT_TABLE QUEUE TABLE');
Insert into AQ$_QUEUE_TABLES (SCHEMA,NAME,UDATA_TYPE,OBJNO,FLAGS,SORT_COLS,TIMEZONE,TABLE_COMMENT) values ('SYS','SYS$SERVICE_METRICS_TAB',1,20655,16801801,2,'00:00',null);
Insert into AQ$_QUEUE_TABLES (SCHEMA,NAME,UDATA_TYPE,OBJNO,FLAGS,SORT_COLS,TIMEZONE,TABLE_COMMENT) values ('SYS','PDB_MON_EVENT_QTABLE$',1,20822,16801801,2,'00:00','Raw queue table containing event information');
Insert into AQ$_QUEUE_TABLES (SCHEMA,NAME,UDATA_TYPE,OBJNO,FLAGS,SORT_COLS,TIMEZONE,TABLE_COMMENT) values ('GSMADMIN_INTERNAL','CHANGE_LOG_QUEUE_TABLE',1,20966,16801801,2,'00:00','Creating GSM change log queue table');
Insert into AQ$_QUEUE_TABLES (SCHEMA,NAME,UDATA_TYPE,OBJNO,FLAGS,SORT_COLS,TIMEZONE,TABLE_COMMENT) values ('WMSYS','WM$EVENT_QUEUE_TABLE',1,22697,16801801,2,'00:00',null);
REM INSERTING into AQ$_SCHEDULES
SET DEFINE OFF;
REM INSERTING into HELP
SET DEFINE OFF;
Insert into HELP (TOPIC,SEQ,INFO) values ('@',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('@',2,' @ ("at" sign)');
Insert into HELP (TOPIC,SEQ,INFO) values ('@',3,' -------------');
Insert into HELP (TOPIC,SEQ,INFO) values ('@',4,' Runs the SQL*Plus statements in the specified script. The script can be');
Insert into HELP (TOPIC,SEQ,INFO) values ('@',5,' called from the local file system or a web server.');
Insert into HELP (TOPIC,SEQ,INFO) values ('@',6,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('@',7,' @ {url|file_name[.ext]} [arg ...]');
Insert into HELP (TOPIC,SEQ,INFO) values ('@',8,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('@',9,' where url supports HTTP and FTP protocols in the form:');
Insert into HELP (TOPIC,SEQ,INFO) values ('@',10,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('@',11,'    http://host.domain/script.sql');
Insert into HELP (TOPIC,SEQ,INFO) values ('@',12,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('@@',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('@@',2,' @@ (double "at" sign)');
Insert into HELP (TOPIC,SEQ,INFO) values ('@@',3,' ---------------------');
Insert into HELP (TOPIC,SEQ,INFO) values ('@@',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('@@',5,' Runs the specified script. This command is almost identical to');
Insert into HELP (TOPIC,SEQ,INFO) values ('@@',6,' the @ command. It is useful for running nested scripts because it');
Insert into HELP (TOPIC,SEQ,INFO) values ('@@',7,' has the additional functionality of looking for the nested script');
Insert into HELP (TOPIC,SEQ,INFO) values ('@@',8,' in the same url or path as the calling script.');
Insert into HELP (TOPIC,SEQ,INFO) values ('@@',9,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('@@',10,' @@ {url|file_name[.ext]} [arg ...]');
Insert into HELP (TOPIC,SEQ,INFO) values ('@@',11,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('/',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('/',2,' / (slash)');
Insert into HELP (TOPIC,SEQ,INFO) values ('/',3,' ---------');
Insert into HELP (TOPIC,SEQ,INFO) values ('/',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('/',5,' Executes the most recently executed SQL command or PL/SQL block');
Insert into HELP (TOPIC,SEQ,INFO) values ('/',6,' which is stored in the SQL buffer. Use slash (/) at the command');
Insert into HELP (TOPIC,SEQ,INFO) values ('/',7,' prompt or line number prompt in SQL*Plus command line. The buffer');
Insert into HELP (TOPIC,SEQ,INFO) values ('/',8,' has no command history and does not record SQL*Plus commands.');
Insert into HELP (TOPIC,SEQ,INFO) values ('/',9,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('/',10,' /');
Insert into HELP (TOPIC,SEQ,INFO) values ('/',11,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('ACCEPT',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('ACCEPT',2,' ACCEPT');
Insert into HELP (TOPIC,SEQ,INFO) values ('ACCEPT',3,' ------');
Insert into HELP (TOPIC,SEQ,INFO) values ('ACCEPT',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('ACCEPT',5,' Reads a line of input and stores it in a given substitution variable.');
Insert into HELP (TOPIC,SEQ,INFO) values ('ACCEPT',6,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('ACCEPT',7,' ACC[EPT] variable [NUM[BER] | CHAR | DATE | BINARY_FLOAT | BINARY_DOUBLE]');
Insert into HELP (TOPIC,SEQ,INFO) values ('ACCEPT',8,' [FOR[MAT] format] [DEF[AULT] default] [PROMPT text | NOPR[OMPT]] [HIDE]');
Insert into HELP (TOPIC,SEQ,INFO) values ('ACCEPT',9,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('APPEND',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('APPEND',2,' APPEND');
Insert into HELP (TOPIC,SEQ,INFO) values ('APPEND',3,' ------');
Insert into HELP (TOPIC,SEQ,INFO) values ('APPEND',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('APPEND',5,' Adds text to the end of the current line in the SQL buffer.');
Insert into HELP (TOPIC,SEQ,INFO) values ('APPEND',6,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('APPEND',7,' A[PPEND] text');
Insert into HELP (TOPIC,SEQ,INFO) values ('APPEND',8,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('ARCHIVE LOG',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('ARCHIVE LOG',2,' ARCHIVE LOG');
Insert into HELP (TOPIC,SEQ,INFO) values ('ARCHIVE LOG',3,' -----------');
Insert into HELP (TOPIC,SEQ,INFO) values ('ARCHIVE LOG',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('ARCHIVE LOG',5,' Displays information about redo log files.');
Insert into HELP (TOPIC,SEQ,INFO) values ('ARCHIVE LOG',6,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('ARCHIVE LOG',7,' ARCHIVE LOG LIST');
Insert into HELP (TOPIC,SEQ,INFO) values ('ARCHIVE LOG',8,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',2,' ATTRIBUTE');
Insert into HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',3,' ---------');
Insert into HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',5,' Specifies display characteristics for a given attribute of an Object Type');
Insert into HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',6,' column, such as the format of NUMBER data. Columns and attributes should');
Insert into HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',7,' not have the same names as they share a common namespace. Lists the');
Insert into HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',8,' current display characteristics for a single attribute or all attributes.');
Insert into HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',9,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',10,' ATTRIBUTE [type_name.attribute_name [option ... ]]');
Insert into HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',11,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',12,' where option represents one of the following terms or clauses:');
Insert into HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',13,'     ALI[AS] alias');
Insert into HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',14,'     CLE[AR]');
Insert into HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',15,'     FOR[MAT] format');
Insert into HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',16,'     LIKE {type_name.attribute_name | alias}');
Insert into HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',17,'     ON|OFF');
Insert into HELP (TOPIC,SEQ,INFO) values ('ATTRIBUTE',18,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('BREAK',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('BREAK',2,' BREAK');
Insert into HELP (TOPIC,SEQ,INFO) values ('BREAK',3,' -----');
Insert into HELP (TOPIC,SEQ,INFO) values ('BREAK',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('BREAK',5,' Specifies where changes occur in a report and the formatting');
Insert into HELP (TOPIC,SEQ,INFO) values ('BREAK',6,' action to perform, such as:');
Insert into HELP (TOPIC,SEQ,INFO) values ('BREAK',7,' - suppressing display of duplicate values for a given column');
Insert into HELP (TOPIC,SEQ,INFO) values ('BREAK',8,' - skipping a line each time a given column value changes');
Insert into HELP (TOPIC,SEQ,INFO) values ('BREAK',9,' - printing computed figures each time a given column value');
Insert into HELP (TOPIC,SEQ,INFO) values ('BREAK',10,'   changes or at the end of the report.');
Insert into HELP (TOPIC,SEQ,INFO) values ('BREAK',11,' Enter BREAK with no clauses to list the current BREAK definition.');
Insert into HELP (TOPIC,SEQ,INFO) values ('BREAK',12,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('BREAK',13,' BRE[AK] [ON report_element [action [action]]] ...');
Insert into HELP (TOPIC,SEQ,INFO) values ('BREAK',14,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('BREAK',15,' where report_element has the following syntax:');
Insert into HELP (TOPIC,SEQ,INFO) values ('BREAK',16,'     {column | expression | ROW | REPORT}');
Insert into HELP (TOPIC,SEQ,INFO) values ('BREAK',17,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('BREAK',18,' and where action has the following syntax:');
Insert into HELP (TOPIC,SEQ,INFO) values ('BREAK',19,'     [SKI[P] n | [SKI[P]] PAGE] [NODUP[LICATES] | DUP[LICATES]]');
Insert into HELP (TOPIC,SEQ,INFO) values ('BREAK',20,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('BTITLE',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('BTITLE',2,' BTITLE');
Insert into HELP (TOPIC,SEQ,INFO) values ('BTITLE',3,' ------');
Insert into HELP (TOPIC,SEQ,INFO) values ('BTITLE',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('BTITLE',5,' Places and formats a specified title at the bottom of each report');
Insert into HELP (TOPIC,SEQ,INFO) values ('BTITLE',6,' page, or lists the current BTITLE definition.');
Insert into HELP (TOPIC,SEQ,INFO) values ('BTITLE',7,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('BTITLE',8,' BTI[TLE] [printspec [text|variable] ...] | [OFF|ON]');
Insert into HELP (TOPIC,SEQ,INFO) values ('BTITLE',9,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('BTITLE',10,' where printspec represents one or more of the following clauses:');
Insert into HELP (TOPIC,SEQ,INFO) values ('BTITLE',11,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('BTITLE',12,'     COL n          LE[FT]        BOLD');
Insert into HELP (TOPIC,SEQ,INFO) values ('BTITLE',13,'     S[KIP] [n]     CE[NTER]      FORMAT text');
Insert into HELP (TOPIC,SEQ,INFO) values ('BTITLE',14,'     TAB n          R[IGHT]');
Insert into HELP (TOPIC,SEQ,INFO) values ('BTITLE',15,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('CHANGE',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('CHANGE',2,' CHANGE');
Insert into HELP (TOPIC,SEQ,INFO) values ('CHANGE',3,' ------');
Insert into HELP (TOPIC,SEQ,INFO) values ('CHANGE',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('CHANGE',5,' Changes the first occurrence of the specified text on the current');
Insert into HELP (TOPIC,SEQ,INFO) values ('CHANGE',6,' line of the SQL buffer. The buffer has no command history list and');
Insert into HELP (TOPIC,SEQ,INFO) values ('CHANGE',7,' does not record SQL*Plus commands.');
Insert into HELP (TOPIC,SEQ,INFO) values ('CHANGE',8,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('CHANGE',9,' C[HANGE] sepchar old [sepchar [new[sepchar]]]');
Insert into HELP (TOPIC,SEQ,INFO) values ('CHANGE',10,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('CLEAR',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('CLEAR',2,' CLEAR');
Insert into HELP (TOPIC,SEQ,INFO) values ('CLEAR',3,' -----');
Insert into HELP (TOPIC,SEQ,INFO) values ('CLEAR',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('CLEAR',5,' Resets or erases the current value or setting for the specified option.');
Insert into HELP (TOPIC,SEQ,INFO) values ('CLEAR',6,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('CLEAR',7,' CL[EAR] option ...');
Insert into HELP (TOPIC,SEQ,INFO) values ('CLEAR',8,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('CLEAR',9,' where option represents one of the following clauses:');
Insert into HELP (TOPIC,SEQ,INFO) values ('CLEAR',10,'     BRE[AKS]');
Insert into HELP (TOPIC,SEQ,INFO) values ('CLEAR',11,'     BUFF[ER]');
Insert into HELP (TOPIC,SEQ,INFO) values ('CLEAR',12,'     COL[UMNS]');
Insert into HELP (TOPIC,SEQ,INFO) values ('CLEAR',13,'     COMP[UTES]');
Insert into HELP (TOPIC,SEQ,INFO) values ('CLEAR',14,'     SCR[EEN]');
Insert into HELP (TOPIC,SEQ,INFO) values ('CLEAR',15,'     SQL');
Insert into HELP (TOPIC,SEQ,INFO) values ('CLEAR',16,'     TIMI[NG]');
Insert into HELP (TOPIC,SEQ,INFO) values ('CLEAR',17,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',2,' COLUMN');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',3,' ------');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',5,' Specifies display attributes for a given column, such as:');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',6,'     - text for the column heading');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',7,'     - alignment for the column heading');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',8,'     - format for NUMBER data');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',9,'     - wrapping of column data');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',10,' Also lists the current display attributes for a single column');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',11,' or all columns.');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',12,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',13,' COL[UMN] [{column | expr} [option ...] ]');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',14,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',15,' where option represents one of the following clauses:');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',16,'     ALI[AS] alias');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',17,'     CLE[AR]');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',18,'     ENTMAP {ON|OFF}');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',19,'     FOLD_A[FTER]');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',20,'     FOLD_B[EFORE]');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',21,'     FOR[MAT] format');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',22,'     HEA[DING] text');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',23,'     JUS[TIFY] {L[EFT] | C[ENTER] | R[IGHT]}');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',24,'     LIKE {expr | alias}');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',25,'     NEWL[INE]');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',26,'     NEW_V[ALUE] variable');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',27,'     NOPRI[NT] | PRI[NT]');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',28,'     NUL[L] text');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',29,'     OLD_V[ALUE] variable');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',30,'     ON|OFF');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',31,'     WRA[PPED] | WOR[D_WRAPPED] | TRU[NCATED]');
Insert into HELP (TOPIC,SEQ,INFO) values ('COLUMN',32,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('COMPUTE',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('COMPUTE',2,' COMPUTE');
Insert into HELP (TOPIC,SEQ,INFO) values ('COMPUTE',3,' -------');
Insert into HELP (TOPIC,SEQ,INFO) values ('COMPUTE',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('COMPUTE',5,' In combination with the BREAK command, calculates and prints');
Insert into HELP (TOPIC,SEQ,INFO) values ('COMPUTE',6,' summary lines using various standard computations. Also lists');
Insert into HELP (TOPIC,SEQ,INFO) values ('COMPUTE',7,' all COMPUTE definitions.');
Insert into HELP (TOPIC,SEQ,INFO) values ('COMPUTE',8,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('COMPUTE',9,' COMP[UTE] [function [LAB[EL] text] ...');
Insert into HELP (TOPIC,SEQ,INFO) values ('COMPUTE',10,'   OF {expr|column|alias} ...');
Insert into HELP (TOPIC,SEQ,INFO) values ('COMPUTE',11,'   ON {expr|column|alias|REPORT|ROW} ...]');
Insert into HELP (TOPIC,SEQ,INFO) values ('COMPUTE',12,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('CONNECT',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('CONNECT',2,' CONNECT');
Insert into HELP (TOPIC,SEQ,INFO) values ('CONNECT',3,' -------');
Insert into HELP (TOPIC,SEQ,INFO) values ('CONNECT',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('CONNECT',5,' Connects a given username to the Oracle Database. When you run a');
Insert into HELP (TOPIC,SEQ,INFO) values ('CONNECT',6,' CONNECT command, the site profile, glogin.sql, and the user profile,');
Insert into HELP (TOPIC,SEQ,INFO) values ('CONNECT',7,' login.sql, are processed in that order. CONNECT does not reprompt');
Insert into HELP (TOPIC,SEQ,INFO) values ('CONNECT',8,' for username or password if the initial connection does not succeed.');
Insert into HELP (TOPIC,SEQ,INFO) values ('CONNECT',9,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('CONNECT',10,' CONN[ECT] [{logon|/|proxy}');
Insert into HELP (TOPIC,SEQ,INFO) values ('CONNECT',11,' [AS {SYSASM|SYSBACKUP|SYSDBA|SYSDG|SYSOPER|SYSRAC|SYSKM}]');
Insert into HELP (TOPIC,SEQ,INFO) values ('CONNECT',12,' [edition=value]]');
Insert into HELP (TOPIC,SEQ,INFO) values ('CONNECT',13,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('CONNECT',14,' where logon has the following syntax:');
Insert into HELP (TOPIC,SEQ,INFO) values ('CONNECT',15,'     username[/password][@connect_identifier]');
Insert into HELP (TOPIC,SEQ,INFO) values ('CONNECT',16,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('CONNECT',17,' where proxy has the syntax:');
Insert into HELP (TOPIC,SEQ,INFO) values ('CONNECT',18,'     proxyuser[username][/password][@connect_identifier]');
Insert into HELP (TOPIC,SEQ,INFO) values ('CONNECT',19,' NOTE: Brackets around username in proxy are required syntax');
Insert into HELP (TOPIC,SEQ,INFO) values ('CONNECT',20,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('COPY',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('COPY',2,' COPY');
Insert into HELP (TOPIC,SEQ,INFO) values ('COPY',3,' ----');
Insert into HELP (TOPIC,SEQ,INFO) values ('COPY',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('COPY',5,' Copies data from a query to a table in the same or another');
Insert into HELP (TOPIC,SEQ,INFO) values ('COPY',6,' database. COPY supports CHAR, DATE, LONG, NUMBER and VARCHAR2.');
Insert into HELP (TOPIC,SEQ,INFO) values ('COPY',7,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('COPY',8,' COPY {FROM database | TO database | FROM database TO database}');
Insert into HELP (TOPIC,SEQ,INFO) values ('COPY',9,'            {APPEND|CREATE|INSERT|REPLACE} destination_table');
Insert into HELP (TOPIC,SEQ,INFO) values ('COPY',10,'            [(column, column, column, ...)] USING query');
Insert into HELP (TOPIC,SEQ,INFO) values ('COPY',11,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('COPY',12,' where database has the following syntax:');
Insert into HELP (TOPIC,SEQ,INFO) values ('COPY',13,'     username[/password]@connect_identifier');
Insert into HELP (TOPIC,SEQ,INFO) values ('COPY',14,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('DEFINE',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('DEFINE',2,' DEFINE');
Insert into HELP (TOPIC,SEQ,INFO) values ('DEFINE',3,' ------');
Insert into HELP (TOPIC,SEQ,INFO) values ('DEFINE',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('DEFINE',5,' Specifies a substitution variable and assigns a CHAR value to it, or');
Insert into HELP (TOPIC,SEQ,INFO) values ('DEFINE',6,' lists the value and variable type of a single variable or all variables.');
Insert into HELP (TOPIC,SEQ,INFO) values ('DEFINE',7,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('DEFINE',8,' DEF[INE] [variable] | [variable = text]');
Insert into HELP (TOPIC,SEQ,INFO) values ('DEFINE',9,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('DEL',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('DEL',2,' DEL');
Insert into HELP (TOPIC,SEQ,INFO) values ('DEL',3,' ---');
Insert into HELP (TOPIC,SEQ,INFO) values ('DEL',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('DEL',5,' Deletes one or more lines of the SQL buffer. The buffer has no');
Insert into HELP (TOPIC,SEQ,INFO) values ('DEL',6,' command history list and does not record SQL*Plus commands.');
Insert into HELP (TOPIC,SEQ,INFO) values ('DEL',7,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('DEL',8,' DEL [n | n m | n * | n LAST | * | * n | * LAST | LAST]');
Insert into HELP (TOPIC,SEQ,INFO) values ('DEL',9,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('DESCRIBE',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('DESCRIBE',2,' DESCRIBE');
Insert into HELP (TOPIC,SEQ,INFO) values ('DESCRIBE',3,' --------');
Insert into HELP (TOPIC,SEQ,INFO) values ('DESCRIBE',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('DESCRIBE',5,' Lists the column definitions for a table, view, or synonym,');
Insert into HELP (TOPIC,SEQ,INFO) values ('DESCRIBE',6,' or the specifications for a function or procedure.');
Insert into HELP (TOPIC,SEQ,INFO) values ('DESCRIBE',7,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('DESCRIBE',8,' DESC[RIBE] {[schema.]object[@connect_identifier]}');
Insert into HELP (TOPIC,SEQ,INFO) values ('DESCRIBE',9,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',2,' DISCONNECT');
Insert into HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',3,' ----------');
Insert into HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',5,' Commits pending changes to the database and logs the current');
Insert into HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',6,' user out of Oracle, but does not exit SQL*Plus.');
Insert into HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',7,' In SQL*Plus command line, use EXIT or QUIT to log out of Oracle');
Insert into HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',8,' and return control to your computer''s operating system.');
Insert into HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',9,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',10,' DISC[ONNECT]');
Insert into HELP (TOPIC,SEQ,INFO) values ('DISCONNECT',11,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('EDIT',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('EDIT',2,' EDIT');
Insert into HELP (TOPIC,SEQ,INFO) values ('EDIT',3,' ----');
Insert into HELP (TOPIC,SEQ,INFO) values ('EDIT',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('EDIT',5,' Invokes an operating system text editor on the contents of the');
Insert into HELP (TOPIC,SEQ,INFO) values ('EDIT',6,' specified file or on the contents of the SQL buffer. The buffer');
Insert into HELP (TOPIC,SEQ,INFO) values ('EDIT',7,' has no command history list and does not record SQL*Plus commands.');
Insert into HELP (TOPIC,SEQ,INFO) values ('EDIT',8,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('EDIT',9,' ED[IT] [file_name[.ext]]');
Insert into HELP (TOPIC,SEQ,INFO) values ('EDIT',10,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('EXECUTE',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('EXECUTE',2,' EXECUTE');
Insert into HELP (TOPIC,SEQ,INFO) values ('EXECUTE',3,' -------');
Insert into HELP (TOPIC,SEQ,INFO) values ('EXECUTE',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('EXECUTE',5,' Executes a single PL/SQL statement or runs a stored procedure.');
Insert into HELP (TOPIC,SEQ,INFO) values ('EXECUTE',6,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('EXECUTE',7,' EXEC[UTE] statement');
Insert into HELP (TOPIC,SEQ,INFO) values ('EXECUTE',8,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('EXIT',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('EXIT',2,' EXIT');
Insert into HELP (TOPIC,SEQ,INFO) values ('EXIT',3,' ----');
Insert into HELP (TOPIC,SEQ,INFO) values ('EXIT',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('EXIT',5,' Commits or rolls back all pending changes, logs out of Oracle,');
Insert into HELP (TOPIC,SEQ,INFO) values ('EXIT',6,' terminates SQL*Plus and returns control to the operating system.');
Insert into HELP (TOPIC,SEQ,INFO) values ('EXIT',7,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('EXIT',8,' {EXIT|QUIT} [SUCCESS|FAILURE|WARNING|n|variable|:BindVariable]');
Insert into HELP (TOPIC,SEQ,INFO) values ('EXIT',9,'   [COMMIT|ROLLBACK]');
Insert into HELP (TOPIC,SEQ,INFO) values ('EXIT',10,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('GET',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('GET',2,' GET');
Insert into HELP (TOPIC,SEQ,INFO) values ('GET',3,' ---');
Insert into HELP (TOPIC,SEQ,INFO) values ('GET',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('GET',5,' Loads a SQL statement or PL/SQL block from a script into the SQL buffer.');
Insert into HELP (TOPIC,SEQ,INFO) values ('GET',6,' The buffer has no command history list and does not record SQL*Plus commands.');
Insert into HELP (TOPIC,SEQ,INFO) values ('GET',7,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('GET',8,' GET [FILE] file_name[.ext] [LIST | NOLIST]');
Insert into HELP (TOPIC,SEQ,INFO) values ('GET',9,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('HELP',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('HELP',2,' HELP');
Insert into HELP (TOPIC,SEQ,INFO) values ('HELP',3,' ----');
Insert into HELP (TOPIC,SEQ,INFO) values ('HELP',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('HELP',5,' Accesses this command line help system. Enter HELP INDEX or ? INDEX');
Insert into HELP (TOPIC,SEQ,INFO) values ('HELP',6,' for a list of topics.');
Insert into HELP (TOPIC,SEQ,INFO) values ('HELP',7,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('HELP',8,' You can view SQL*Plus resources at');
Insert into HELP (TOPIC,SEQ,INFO) values ('HELP',9,'     http://www.oracle.com/technology/documentation/');
Insert into HELP (TOPIC,SEQ,INFO) values ('HELP',10,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('HELP',11,' ******************************************************************************');
Insert into HELP (TOPIC,SEQ,INFO) values ('HELP',12,' **  Top 12.2 features:                                                      **');
Insert into HELP (TOPIC,SEQ,INFO) values ('HELP',13,' **    - Fast retrieval of data as CSV for use in applications like          **');
Insert into HELP (TOPIC,SEQ,INFO) values ('HELP',14,' **      SQL*Loader. Use SQLPLUS -M "CSV ON" or SET MARKUP CSV ON            **');
Insert into HELP (TOPIC,SEQ,INFO) values ('HELP',15,' **    - Improved defaults and optimizations for reports. Use SQLPLUS -F     **');
Insert into HELP (TOPIC,SEQ,INFO) values ('HELP',16,' **    - Command recall. Use SET HISTORY ON and HISTORY to list previous     **');
Insert into HELP (TOPIC,SEQ,INFO) values ('HELP',17,' **      commands.                                                           **');
Insert into HELP (TOPIC,SEQ,INFO) values ('HELP',18,' ******************************************************************************');
Insert into HELP (TOPIC,SEQ,INFO) values ('HELP',19,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('HELP',20,' HELP|? [topic]');
Insert into HELP (TOPIC,SEQ,INFO) values ('HELP',21,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('HISTORY',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('HISTORY',2,' HISTORY');
Insert into HELP (TOPIC,SEQ,INFO) values ('HISTORY',3,' -------');
Insert into HELP (TOPIC,SEQ,INFO) values ('HISTORY',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('HISTORY',5,' Stores, lists, executes, edits of the commands');
Insert into HELP (TOPIC,SEQ,INFO) values ('HISTORY',6,' entered during the current SQL*Plus session.');
Insert into HELP (TOPIC,SEQ,INFO) values ('HISTORY',7,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('HISTORY',8,' HIST[ORY] [N {RUN | EDIT | DEL[ETE]}] | [CLEAR]');
Insert into HELP (TOPIC,SEQ,INFO) values ('HISTORY',9,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('HISTORY',10,' N is the entry number listed in the history list.');
Insert into HELP (TOPIC,SEQ,INFO) values ('HISTORY',11,' Use this number to recall, edit or delete the command.');
Insert into HELP (TOPIC,SEQ,INFO) values ('HISTORY',12,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('HISTORY',13,' Example:');
Insert into HELP (TOPIC,SEQ,INFO) values ('HISTORY',14,' HIST 3 RUN - will run the 3rd entry from the list.');
Insert into HELP (TOPIC,SEQ,INFO) values ('HISTORY',15,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('HISTORY',16,' HIST[ORY] without any option will list all entries in the list.');
Insert into HELP (TOPIC,SEQ,INFO) values ('HISTORY',17,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('HOST',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('HOST',2,' HOST');
Insert into HELP (TOPIC,SEQ,INFO) values ('HOST',3,' ----');
Insert into HELP (TOPIC,SEQ,INFO) values ('HOST',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('HOST',5,' Executes an operating system command without leaving SQL*Plus.');
Insert into HELP (TOPIC,SEQ,INFO) values ('HOST',6,' Enter HOST without command to display an operating system prompt.');
Insert into HELP (TOPIC,SEQ,INFO) values ('HOST',7,' You can then enter multiple operating system commands.');
Insert into HELP (TOPIC,SEQ,INFO) values ('HOST',8,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('HOST',9,' HO[ST] [command]');
Insert into HELP (TOPIC,SEQ,INFO) values ('HOST',10,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('INDEX',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('INDEX',2,'Enter Help [topic] for help.');
Insert into HELP (TOPIC,SEQ,INFO) values ('INDEX',3,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('INDEX',4,' @             COPY         PASSWORD                 SHOW');
Insert into HELP (TOPIC,SEQ,INFO) values ('INDEX',5,' @@            DEFINE       PAUSE                    SHUTDOWN');
Insert into HELP (TOPIC,SEQ,INFO) values ('INDEX',6,' /             DEL          PRINT                    SPOOL');
Insert into HELP (TOPIC,SEQ,INFO) values ('INDEX',7,' ACCEPT        DESCRIBE     PROMPT                   SQLPLUS');
Insert into HELP (TOPIC,SEQ,INFO) values ('INDEX',8,' APPEND        DISCONNECT   QUIT                     START');
Insert into HELP (TOPIC,SEQ,INFO) values ('INDEX',9,' ARCHIVE LOG   EDIT         RECOVER                  STARTUP');
Insert into HELP (TOPIC,SEQ,INFO) values ('INDEX',10,' ATTRIBUTE     EXECUTE      REMARK                   STORE');
Insert into HELP (TOPIC,SEQ,INFO) values ('INDEX',11,' BREAK         EXIT         REPFOOTER                TIMING');
Insert into HELP (TOPIC,SEQ,INFO) values ('INDEX',12,' BTITLE        GET          REPHEADER                TTITLE');
Insert into HELP (TOPIC,SEQ,INFO) values ('INDEX',13,' CHANGE        HELP         RESERVED WORDS (SQL)     UNDEFINE');
Insert into HELP (TOPIC,SEQ,INFO) values ('INDEX',14,' CLEAR         HISTORY      RESERVED WORDS (PL/SQL)  VARIABLE');
Insert into HELP (TOPIC,SEQ,INFO) values ('INDEX',15,' COLUMN        HOST         RUN                      WHENEVER OSERROR');
Insert into HELP (TOPIC,SEQ,INFO) values ('INDEX',16,' COMPUTE       INPUT        SAVE                     WHENEVER SQLERROR');
Insert into HELP (TOPIC,SEQ,INFO) values ('INDEX',17,' CONNECT       LIST         SET                      XQUERY');
Insert into HELP (TOPIC,SEQ,INFO) values ('INDEX',18,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('INPUT',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('INPUT',2,' INPUT');
Insert into HELP (TOPIC,SEQ,INFO) values ('INPUT',3,' -----');
Insert into HELP (TOPIC,SEQ,INFO) values ('INPUT',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('INPUT',5,' Adds one or more new lines of text after the current line in the');
Insert into HELP (TOPIC,SEQ,INFO) values ('INPUT',6,' SQL buffer. The buffer has no command history list and does not');
Insert into HELP (TOPIC,SEQ,INFO) values ('INPUT',7,' record SQL*Plus commands.');
Insert into HELP (TOPIC,SEQ,INFO) values ('INPUT',8,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('INPUT',9,' I[NPUT] [text]');
Insert into HELP (TOPIC,SEQ,INFO) values ('INPUT',10,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('LIST',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('LIST',2,' LIST');
Insert into HELP (TOPIC,SEQ,INFO) values ('LIST',3,' ----');
Insert into HELP (TOPIC,SEQ,INFO) values ('LIST',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('LIST',5,' Lists one or more lines of the most recently executed SQL command');
Insert into HELP (TOPIC,SEQ,INFO) values ('LIST',6,' or PL/SQL block which is stored in the SQL buffer. Enter LIST with');
Insert into HELP (TOPIC,SEQ,INFO) values ('LIST',7,' no clauses to list all lines. In SQL*Plus command-line you can also');
Insert into HELP (TOPIC,SEQ,INFO) values ('LIST',8,' use ";" to list all the lines in the SQL buffer. The buffer has no');
Insert into HELP (TOPIC,SEQ,INFO) values ('LIST',9,' command history list and does not record SQL*Plus commands.');
Insert into HELP (TOPIC,SEQ,INFO) values ('LIST',10,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('LIST',11,' L[IST] [n | n m | n  * | n LAST | * | * n | * LAST | LAST]');
Insert into HELP (TOPIC,SEQ,INFO) values ('LIST',12,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('MENU',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('MENU',2,' Menu');
Insert into HELP (TOPIC,SEQ,INFO) values ('MENU',3,' ----');
Insert into HELP (TOPIC,SEQ,INFO) values ('MENU',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('MENU',5,' Enter HELP INDEX for a list of help topics.');
Insert into HELP (TOPIC,SEQ,INFO) values ('MENU',6,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('PASSWORD',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('PASSWORD',2,' PASSWORD');
Insert into HELP (TOPIC,SEQ,INFO) values ('PASSWORD',3,' --------');
Insert into HELP (TOPIC,SEQ,INFO) values ('PASSWORD',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('PASSWORD',5,' Allows you to change a password without displaying it on an input device.');
Insert into HELP (TOPIC,SEQ,INFO) values ('PASSWORD',6,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('PASSWORD',7,' PASSW[ORD] [username]');
Insert into HELP (TOPIC,SEQ,INFO) values ('PASSWORD',8,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('PAUSE',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('PAUSE',2,' PAUSE');
Insert into HELP (TOPIC,SEQ,INFO) values ('PAUSE',3,' -----');
Insert into HELP (TOPIC,SEQ,INFO) values ('PAUSE',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('PAUSE',5,' Displays the specified text then waits for the user to press RETURN.');
Insert into HELP (TOPIC,SEQ,INFO) values ('PAUSE',6,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('PAUSE',7,' PAU[SE] [text]');
Insert into HELP (TOPIC,SEQ,INFO) values ('PAUSE',8,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('PRINT',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('PRINT',2,' PRINT');
Insert into HELP (TOPIC,SEQ,INFO) values ('PRINT',3,' -----');
Insert into HELP (TOPIC,SEQ,INFO) values ('PRINT',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('PRINT',5,' Displays the current values of bind variables, or lists all bind');
Insert into HELP (TOPIC,SEQ,INFO) values ('PRINT',6,' variables.');
Insert into HELP (TOPIC,SEQ,INFO) values ('PRINT',7,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('PRINT',8,' PRINT [variable ...]');
Insert into HELP (TOPIC,SEQ,INFO) values ('PRINT',9,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('PROMPT',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('PROMPT',2,' PROMPT');
Insert into HELP (TOPIC,SEQ,INFO) values ('PROMPT',3,' ------');
Insert into HELP (TOPIC,SEQ,INFO) values ('PROMPT',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('PROMPT',5,' Sends the specified message or a blank line to the user''s screen.');
Insert into HELP (TOPIC,SEQ,INFO) values ('PROMPT',6,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('PROMPT',7,' PRO[MPT] [text]');
Insert into HELP (TOPIC,SEQ,INFO) values ('PROMPT',8,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('QUIT',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('QUIT',2,' QUIT (Identical to EXIT)');
Insert into HELP (TOPIC,SEQ,INFO) values ('QUIT',3,' ----');
Insert into HELP (TOPIC,SEQ,INFO) values ('QUIT',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('QUIT',5,' Commits or rolls back all pending changes, logs out of Oracle,');
Insert into HELP (TOPIC,SEQ,INFO) values ('QUIT',6,' terminates SQL*Plus and returns control to the operating system.');
Insert into HELP (TOPIC,SEQ,INFO) values ('QUIT',7,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('QUIT',8,' {QUIT|EXIT} [SUCCESS|FAILURE|WARNING|n|variable|:BindVariable]');
Insert into HELP (TOPIC,SEQ,INFO) values ('QUIT',9,'   [COMMIT|ROLLBACK]');
Insert into HELP (TOPIC,SEQ,INFO) values ('QUIT',10,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',2,' RECOVER');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',3,' -------');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',5,' Performs media recovery on one or more tablespaces, one or more');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',6,' datafiles, or the entire database.');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',7,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',8,' RECOVER {general | managed} | BEGIN BACKUP | END BACKUP}');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',9,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',10,' where the general clause has the following syntax:');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',11,'   [AUTOMATIC] [FROM location]');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',12,'   { {full_database_recovery | partial_database_recovery |LOGFILE filename}');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',13,'   [ {TEST | ALLOW integer CORRUPTION | parallel_clause}');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',14,'   [TEST | ALLOW integer CORRUPTION | parallel_clause] ...]');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',15,'   |CONTINUE [DEFAULT]|CANCEL}');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',16,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',17,'   where the full_database_recovery clause has the following syntax:');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',18,'     [STANDBY] DATABASE');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',19,'     [{ UNTIL {CANCEL | TIME date | CHANGE integer}');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',20,'      | USING BACKUP CONTROLFILE}');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',21,'      [ UNTIL {CANCEL | TIME date | CHANGE integer}');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',22,'      | USING BACKUP CONTROLFILE] ...]');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',23,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',24,'   where the partial_database_recovery clause has the following syntax:');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',25,'     {TABLESPACE tablespace [, tablespace] ...');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',26,'      | DATAFILE filename | filenumber} [,filename | filenumber] ...');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',27,'      | STANDBY');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',28,'       {TABLESPACE tablespace [, tablespace] ...');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',29,'       | DATAFILE filename | filenumber} [,filename | filenumber] ...}');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',30,'     UNTIL [CONSISTENT WITH] CONTROLFILE }');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',31,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',32,' where the parallel clause has the following syntax:');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',33,'   {NOPARALLEL | PARALLEL [integer]}');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',34,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',35,' where the managed clause has the following syntax:');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',36,'   MANAGED STANDBY DATABASE recover_clause | cancel_clause | finish_clause');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',37,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',38,' where the recover_clause has the following syntax:');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',39,'   {{DISCONNECT [FROM SESSION] | {TIMEOUT integer | NOTIMEOUT} }');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',40,'    |{NODELAY | DEFAULT DELAY | DELAY integer} | NEXT integer');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',41,'    |{EXPIRE integer | NO EXPIRE} | parallel_clause');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',42,'    | USING CURRENT LOGFILE | UNTIL CHANGE integer');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',43,'    | THROUGH {[THREAD integer] SEQUENCE integer');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',44,'              | ALL ARCHIVELOG  | {ALL | LAST | NEXT } SWITCHOVER} }');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',45,'      [DISCONNECT [FROM SESSION ]  | {TIMEOUT integer | NOTIMEOUT}');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',46,'       | {NODELAY | DEFAULT DELAY | DELAY integer} | NEXT integer');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',47,'       | {EXPIRE integer | NO EXPIRE} | parallel_clause');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',48,'       | USING CURRENT LOGFILE | UNTIL CHANGE integer');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',49,'       | THROUGH {[THREAD integer] SEQUENCE integer');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',50,'                 | ALL ARCHIVELOG  | {ALL | LAST | NEXT } SWITCHOVER} ]...');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',51,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',52,' where the cancel_clause has the following syntax:');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',53,'   CANCEL [IMMEDIATE] [WAIT | NOWAIT]');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',54,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',55,' where the finish_clause has the following syntax:');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',56,'   [DISCONNECT [FROM SESSION]] [parallel_clause]');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',57,'   FINISH [SKIP [STANDBY LOGFILE]] [WAIT | NOWAIT]');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',58,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',59,' where the parallel_clause has the following syntax:');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',60,'   {NOPARALLEL | PARALLEL [integer] }');
Insert into HELP (TOPIC,SEQ,INFO) values ('RECOVER',61,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('REMARK',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('REMARK',2,' REMARK');
Insert into HELP (TOPIC,SEQ,INFO) values ('REMARK',3,' ------');
Insert into HELP (TOPIC,SEQ,INFO) values ('REMARK',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('REMARK',5,' Begins a comment in a script. SQL*Plus does not interpret the comment');
Insert into HELP (TOPIC,SEQ,INFO) values ('REMARK',6,' as a command.');
Insert into HELP (TOPIC,SEQ,INFO) values ('REMARK',7,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('REMARK',8,' REM[ARK]');
Insert into HELP (TOPIC,SEQ,INFO) values ('REMARK',9,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',2,' REPFOOTER');
Insert into HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',3,' ---------');
Insert into HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',5,' Places and formats a footer at the bottom of a report, or lists the');
Insert into HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',6,' REPFOOTER definition.');
Insert into HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',7,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',8,' REPF[OOTER] [PAGE] [printspec [text|variable] ...] | [OFF|ON]');
Insert into HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',9,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',10,' where printspec represents one or more of the following clauses:');
Insert into HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',11,'     COL n          LE[FT]        BOLD');
Insert into HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',12,'     S[KIP] [n]     CE[NTER]      FORMAT text');
Insert into HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',13,'     TAB n          R[IGHT]');
Insert into HELP (TOPIC,SEQ,INFO) values ('REPFOOTER',14,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('REPHEADER',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('REPHEADER',2,' REPHEADER');
Insert into HELP (TOPIC,SEQ,INFO) values ('REPHEADER',3,' ---------');
Insert into HELP (TOPIC,SEQ,INFO) values ('REPHEADER',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('REPHEADER',5,' Places and formats a header at the top of a report, or lists the');
Insert into HELP (TOPIC,SEQ,INFO) values ('REPHEADER',6,' REPHEADER definition.');
Insert into HELP (TOPIC,SEQ,INFO) values ('REPHEADER',7,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('REPHEADER',8,' REPH[EADER] [PAGE] [printspec [text|variable] ...] | [OFF|ON]');
Insert into HELP (TOPIC,SEQ,INFO) values ('REPHEADER',9,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('REPHEADER',10,' where printspec represents one or more of the following clauses:');
Insert into HELP (TOPIC,SEQ,INFO) values ('REPHEADER',11,'     COL n          LE[FT]        BOLD');
Insert into HELP (TOPIC,SEQ,INFO) values ('REPHEADER',12,'     S[KIP] [n]     CE[NTER]      FORMAT text');
Insert into HELP (TOPIC,SEQ,INFO) values ('REPHEADER',13,'     TAB n          R[IGHT]');
Insert into HELP (TOPIC,SEQ,INFO) values ('REPHEADER',14,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',2,' RESERVED WORDS (SQL)');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',3,' --------------------');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',5,' SQL Reserved Words have special meaning in SQL, and may not be used for');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',6,' identifier names unless enclosed in "quotes".');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',7,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',8,' An asterisk (*) indicates words are also ANSI Reserved Words.');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',9,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',10,' Oracle prefixes implicitly generated schema object and subobject names');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',11,' with "SYS_". To avoid name resolution conflict, Oracle discourages you');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',12,' from prefixing your schema object and subobject names with "SYS_".');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',13,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',14,' ACCESS          DEFAULT*         INTEGER*        ONLINE          START');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',15,' ADD*            DELETE*          INTERSECT*      OPTION*         SUCCESSFUL');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',16,' ALL*            DESC*            INTO*           OR*             SYNONYM');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',17,' ALTER*          DISTINCT*        IS*             ORDER*          SYSDATE');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',18,' AND*            DROP*            LEVEL*          PCTFREE         TABLE*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',19,' ANY*            ELSE*            LIKE*           PRIOR*          THEN*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',20,' AS*             EXCLUSIVE        LOCK            PRIVILEGES*     TO*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',21,' ASC*            EXISTS           LONG            PUBLIC*         TRIGGER');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',22,' AUDIT           FILE             MAXEXTENTS      RAW             UID');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',23,' BETWEEN*        FLOAT*           MINUS           RENAME          UNION*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',24,' BY*             FOR*             MLSLABEL        RESOURCE        UNIQUE*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',25,' CHAR*           FROM*            MODE            REVOKE*         UPDATE*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',26,' CHECK*          GRANT*           MODIFY          ROW             USER*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',27,' CLUSTER         GROUP*           NOAUDIT         ROWID           VALIDATE');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',28,' COLUMN          HAVING*          NOCOMPRESS      ROWNUM          VALUES*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',29,' COMMENT         IDENTIFIED       NOT*            ROWS*           VARCHAR*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',30,' COMPRESS        IMMEDIATE*       NOWAIT          SELECT*         VARCHAR2');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',31,' CONNECT*        IN*              NULL*           SESSION*        VIEW*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',32,' CREATE*         INCREMENT        NUMBER          SET*            WHENEVER*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',33,' CURRENT*        INDEX            OF*             SHARE           WHERE');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',34,' DATE*           INITIAL          OFFLINE         SIZE*           WITH*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',35,' DECIMAL*        INSERT*          ON*             SMALLINT*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (SQL)',36,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',2,' RESERVED WORDS (PL/SQL)');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',3,' -----------------------');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',5,' PL/SQL Reserved Words have special meaning in PL/SQL, and may not be used');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',6,' for identifier names (unless enclosed in "quotes").');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',7,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',8,' An asterisk (*) indicates words are also SQL Reserved Words.');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',9,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',10,' ALL*            DESC*           JAVA            PACKAGE         SUBTYPE');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',11,' ALTER*          DISTINCT*       LEVEL*          PARTITION       SUCCESSFUL*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',12,' AND*            DO              LIKE*           PCTFREE*        SUM');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',13,' ANY*            DROP*           LIMITED         PLS_INTEGER     SYNONYM*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',14,' ARRAY           ELSE*           LOCK*           POSITIVE        SYSDATE*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',15,' AS*             ELSIF           LONG*           POSITIVEN       TABLE*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',16,' ASC*            END             LOOP            PRAGMA          THEN*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',17,' AT              EXCEPTION       MAX             PRIOR*          TIME');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',18,' AUTHID          EXCLUSIVE*      MIN             PRIVATE         TIMESTAMP');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',19,' AVG             EXECUTE         MINUS*          PROCEDURE       TIMEZONE_ABBR');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',20,' BEGIN           EXISTS*         MINUTE          PUBLIC*         TIMEZONE_HOUR');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',21,' BETWEEN*        EXIT            MLSLABEL*       RAISE           TIMEZONE_MINUTE');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',22,' BINARY_INTEGER  EXTENDS         MOD             RANGE           TIMEZONE_REGION');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',23,' BODY            EXTRACT         MODE*           RAW*            TO*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',24,' BOOLEAN         FALSE           MONTH           REAL            TRIGGER*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',25,' BULK            FETCH           NATURAL         RECORD          TRUE');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',26,' BY*             FLOAT*          NATURALN        REF             TYPE');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',27,' CHAR*           FOR*            NEW             RELEASE         UI');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',28,' CHAR_BASE       FORALL          NEXTVAL         RETURN          UNION*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',29,' CHECK*          FROM*           NOCOPY          REVERSE         UNIQUE*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',30,' CLOSE           FUNCTION        NOT*            ROLLBACK        UPDATE*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',31,' CLUSTER*        GOTO            NOWAIT*         ROW*            USE');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',32,' COALESCE        GROUP*          NULL*           ROWID*          USER*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',33,' COLLECT         HAVING*         NULLIF          ROWNUM*         VALIDATE*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',34,' COMMENT*        HEAP            NUMBER*         ROWTYPE         VALUES*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',35,' COMMIT          HOUR            NUMBER_BASE     SAVEPOINT       VARCHAR*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',36,' COMPRESS*       IF              OCIROWID        SECOND          VARCHAR2*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',37,' CONNECT*        IMMEDIATE*      OF*             SELECT*         VARIANCE');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',38,' CONSTANT        IN*             ON*             SEPERATE        VIEW*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',39,' CREATE*         INDEX*          OPAQUE          SET*            WHEN');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',40,' CURRENT*        INDICATOR       OPEN            SHARE*          WHENEVER*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',41,' CURRVAL         INSERT*         OPERATOR        SMALLINT*       WHERE*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',42,' CURSOR          INTEGER*        OPTION*         SPACE           WHILE');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',43,' DATE*           INTERFACE       OR*             SQL             WITH*');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',44,' DAY             INTERSECT*      ORDER*          SQLCODE         WORK');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',45,' DECIMAL*        INTERVAL        ORGANIZATION    SQLERRM         WRITE');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',46,' DECLARE         INTO*           OTHERS          START*          YEAR');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',47,' DEFAULT*        IS*             OUT             STDDEV          ZONE');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',48,' DELETE*         ISOLATION');
Insert into HELP (TOPIC,SEQ,INFO) values ('RESERVED WORDS (PL/SQL)',49,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RUN',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RUN',2,' RUN');
Insert into HELP (TOPIC,SEQ,INFO) values ('RUN',3,' ---');
Insert into HELP (TOPIC,SEQ,INFO) values ('RUN',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RUN',5,' Lists and executes the most recently executed SQL command or');
Insert into HELP (TOPIC,SEQ,INFO) values ('RUN',6,' PL/SQL block which is stored in the SQL buffer. The buffer has');
Insert into HELP (TOPIC,SEQ,INFO) values ('RUN',7,' no command history list and does not record SQL*Plus commands.');
Insert into HELP (TOPIC,SEQ,INFO) values ('RUN',8,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('RUN',9,' R[UN]');
Insert into HELP (TOPIC,SEQ,INFO) values ('RUN',10,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SAVE',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SAVE',2,' SAVE');
Insert into HELP (TOPIC,SEQ,INFO) values ('SAVE',3,' ----');
Insert into HELP (TOPIC,SEQ,INFO) values ('SAVE',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SAVE',5,' Saves the contents of the SQL buffer in a script. The');
Insert into HELP (TOPIC,SEQ,INFO) values ('SAVE',6,' buffer has no command history list and does not record SQL*Plus commands.');
Insert into HELP (TOPIC,SEQ,INFO) values ('SAVE',7,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SAVE',8,' SAV[E] [FILE] file_name[.ext] [CRE[ATE] | REP[LACE] | APP[END]]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SAVE',9,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',2,' SET');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',3,' ---');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',5,' Sets a system variable to alter the SQL*Plus environment settings');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',6,' for your current session. For example, to:');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',7,'     -   set the display width for data');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',8,'     -   customize HTML formatting');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',9,'     -   enable or disable printing of column headings');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',10,'     -   set the number of lines per page');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',11,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',12,' SET system_variable value');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',13,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',14,' where system_variable and value represent one of the following clauses:');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',15,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',16,'   APPI[NFO]{OFF|ON|text}                   NEWP[AGE] {1|n|NONE}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',17,'   ARRAY[SIZE] {15|n}                       NULL text');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',18,'   AUTO[COMMIT] {OFF|ON|IMM[EDIATE]|n}      NUMF[ORMAT] format');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',19,'   AUTOP[RINT] {OFF|ON}                     NUM[WIDTH] {10|n}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',20,'   AUTORECOVERY {OFF|ON}                    PAGES[IZE] {14|n}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',21,'   AUTOT[RACE] {OFF|ON|TRACE[ONLY]}         PAU[SE] {OFF|ON|text}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',22,'     [EXP[LAIN]] [STAT[ISTICS]]             RECSEP {WR[APPED]|EA[CH]|OFF}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',23,'   BLO[CKTERMINATOR] {.|c|ON|OFF}           RECSEPCHAR {_|c}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',24,'   CMDS[EP] {;|c|OFF|ON}                    ROWPREF[ETCH] {n}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',25,'   COLINVI[SIBLE] {OFF|ON}                  SERVEROUT[PUT] {ON|OFF}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',26,'   COLSEP {_|text}                            [SIZE {n | UNLIMITED}]|');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',27,'   CON[CAT] {.|c|ON|OFF}                      [FOR[MAT]  {WRA[PPED]|');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',28,'   COPYC[OMMIT] {0|n}                          WOR[D_WRAPPED]|TRU[NCATED]}]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',29,'   COPYTYPECHECK {ON|OFF}                   SHIFT[INOUT] {VIS[IBLE] |');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',30,'   DEF[INE] {&|c|ON|OFF}                      INV[ISIBLE]}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',31,'   DESCRIBE [DEPTH {1|n|ALL}]               SHOW[MODE] {OFF|ON}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',32,'     [LINENUM {OFF|ON}] [INDENT {OFF|ON}]   SQLBL[ANKLINES] {OFF|ON}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',33,'   ECHO {OFF|ON}                            SQLC[ASE] {MIX[ED] |');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',34,'   EDITF[ILE] file_name[.ext]                 LO[WER] | UP[PER]}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',35,'   EMB[EDDED] {OFF|ON}                      SQLCO[NTINUE] {> | text}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',36,'   ERRORL[OGGING] {ON|OFF}                  SQLN[UMBER] {ON|OFF}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',37,'     [TABLE [schema.]tablename]             SQLPLUSCOMPAT[IBILITY] {x.y[.z]}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',38,'     [TRUNCATE] [IDENTIFIER identifier]     SQLPRE[FIX] {#|c}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',39,'   ESC[APE] {\|c|OFF|ON}                    SQLP[ROMPT] {SQL>|text}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',40,'   ESCCHAR {@|?|%|$|OFF}                    SQLT[ERMINATOR] {;|c|ON|OFF}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',41,'   EXITC[OMMIT] {ON|OFF}                    STATEMENTC[ACHE] {n}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',42,'   FEED[BACK] {6|n|ON|OFF|ONLY}[SQL_ID]     SUF[FIX] {SQL|text}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',43,'   FLAGGER {OFF|ENTRY|INTERMED[IATE]|FULL}  TAB {ON|OFF}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',44,'   FLU[SH] {ON|OFF}                         TERM[OUT] {ON|OFF}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',45,'   HEA[DING] {ON|OFF}                       TI[ME] {OFF|ON}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',46,'   HEADS[EP] {||c|ON|OFF}                   TIMI[NG] {OFF|ON}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',47,'   HIST[ORY] {ON|OFF|N}                     TRIM[OUT] {ON|OFF}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',48,'   INSTANCE [instance_path|LOCAL]           TRIMS[POOL] {OFF|ON}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',49,'   LIN[ESIZE] {80|n|WINDOW}                 UND[ERLINE] {-|c|ON|OFF}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',50,'   LOBOF[FSET] {1|n}                        VER[IFY] {ON|OFF}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',51,'   LOBPREF[ETCH] {n}                        WRA[P] {ON|OFF}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',52,'   LOGSOURCE [pathname]                     XQUERY {BASEURI text|');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',53,'   LONG {80|n}                                ORDERING{UNORDERED|');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',54,'   LONGC[HUNKSIZE] {80|n}                     ORDERED|DEFAULT}|');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',55,'   MARK[UP] {HTML html_option|CSV csv_option} NODE{BYVALUE|BYREFERENCE|');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',56,'     html_option;                             DEFAULT}|CONTEXT text}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',57,'       {ON|OFF} [HEAD text] [BODY text]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',58,'       [TABLE {ON|OFF}] [ENTMAP {ON|OFF}]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',59,'       [SPOOL {ON|OFF}] [PRE[FORMAT] {ON|OFF}]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',60,'     csv_option:');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',61,'       {ON|OFF} [DELIM[ITER] {c}]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',62,'       [QUOTE {ON|OFF}]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SET',63,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',2,' SHOW');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',3,' ----');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',5,' Shows the value of a SQL*Plus system variable, or the current');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',6,' SQL*Plus environment. SHOW SGA requires a DBA privileged login.');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',7,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',8,' SHO[W] option');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',9,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',10,' where option represents one of the following terms or clauses:');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',11,'     system_variable');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',12,'     ALL');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',13,'     BTI[TLE]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',14,'     CON_ID');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',15,'     CON_NAME');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',16,'     EDITION');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',17,'     ERR[ORS] [{ANALYTIC VIEW | ATTRIBUTE DIMENSION | HIERARCHY | FUNCTION');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',18,'        | PROCEDURE | PACKAGE | PACKAGE BODY | TRIGGER | VIEW | TYPE');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',19,'        | TYPE BODY | DIMENSION | JAVA CLASS} [schema.]name]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',20,'     LNO');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',21,'     PARAMETERS [parameter_name]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',22,'     PDBS');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',23,'     PNO');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',24,'     RECYC[LEBIN] [original_name]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',25,'     REL[EASE]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',26,'     REPF[OOTER]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',27,'     REPH[EADER]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',28,'     SGA');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',29,'     SPOO[L]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',30,'     SPPARAMETERS [parameter_name]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',31,'     SQLCODE');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',32,'     TTI[TLE]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',33,'     USER');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHOW',34,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN',2,' SHUTDOWN');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN',3,' --------');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN',5,' Shuts down a currently running Oracle Database instance, optionally');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN',6,' closing and dismounting a database.');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN',7,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN',8,' SHUTDOWN [ABORT|IMMEDIATE|NORMAL|TRANSACTIONAL [LOCAL]]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SHUTDOWN',9,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SPOOL',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SPOOL',2,' SPOOL');
Insert into HELP (TOPIC,SEQ,INFO) values ('SPOOL',3,' -----');
Insert into HELP (TOPIC,SEQ,INFO) values ('SPOOL',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SPOOL',5,' Stores query results in a file, or optionally sends the file to a printer.');
Insert into HELP (TOPIC,SEQ,INFO) values ('SPOOL',6,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SPOOL',7,' SPO[OL] [file_name[.ext] [CRE[ATE] | REP[LACE] | APP[END]] | OFF | OUT]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SPOOL',8,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',2,' SQLPLUS');
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',3,' -------');
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',5,' Starts SQL*Plus from the operating system prompt.');
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',6,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',7,' SQLPLUS [ [option] [logon|/NOLOG] [start] ]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',8,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',9,' where option has the following syntax:');
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',10,'     -H[ELP]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',11,'     | -V[ERSION]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',12,'     | [[-C[OMPATIBILITY] x.y[.z]] [-L[OGON]]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',13,'        [-M[ARKUP] markup_option] [-NOLOGINTIME] [-R[ESTRICT] {1|2|3}]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',14,'	[-S[ILENT]] ]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',15,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',16,' and where markup_option has the following syntax:');
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',17,'     {HTML html_options|CSV csv_options}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',18,'     See SET MARKUP command for detailed HTML and CSV options');
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',19,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',20,' and where logon has the following syntax:');
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',21,'     {username[/password][@connect_identifier] | /}');
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',22,'     [AS {SYSASM|SYSBACKUP|SYSDBA|SYSDG|SYSOPER|SYSRAC|SYSKM}]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',23,'     [edition=value]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',24,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',25,' and where start has the following syntax:');
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',26,'     @{url|filename[.ext]} [arg ...]');
Insert into HELP (TOPIC,SEQ,INFO) values ('SQLPLUS',27,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('START',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('START',2,' START');
Insert into HELP (TOPIC,SEQ,INFO) values ('START',3,' -----');
Insert into HELP (TOPIC,SEQ,INFO) values ('START',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('START',5,' Runs the SQL*Plus statements in the specified script. The script can be');
Insert into HELP (TOPIC,SEQ,INFO) values ('START',6,' called from the local file system or a web server.');
Insert into HELP (TOPIC,SEQ,INFO) values ('START',7,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('START',8,' STA[RT] {url|file_name[.ext]} [arg ...]');
Insert into HELP (TOPIC,SEQ,INFO) values ('START',9,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('START',10,' where url supports HTTP and FTP protocols in the form:');
Insert into HELP (TOPIC,SEQ,INFO) values ('START',11,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('START',12,'    http://host.domain/script.sql');
Insert into HELP (TOPIC,SEQ,INFO) values ('START',13,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',2,' STARTUP');
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',3,' -------');
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',5,' Starts an Oracle instance with several options, including mounting,');
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',6,' and opening a database.');
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',7,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',8,' STARTUP db_options | cdb_options | upgrade_options');
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',9,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',10,' where db_options has the following syntax:');
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',11,'    [FORCE] [RESTRICT] [PFILE=filename] [QUIET] [ MOUNT [dbname] |');
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',12,'    [ OPEN [open_db_options] [dbname] ] |');
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',13,'    NOMOUNT ]');
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',14,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',15,'    where open_db_options has the following syntax:');
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',16,'       READ {ONLY | WRITE [RECOVER]} | RECOVER');
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',17,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',18,' where cdb_options has the following syntax:');
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',19,'    root_connection_options | pdb_connection_options');
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',20,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',21,' where root_connection_options has the following syntax:');
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',22,'    PLUGGABLE DATABASE pdbname');
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',23,'    [FORCE] [RESTRICT] | [OPEN [open_pdb_options]]');
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',24,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',25,' where pdb_connection_options has the following syntax:');
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',26,'    [FORCE] [RESTRICT] | [OPEN [open_pdb_options]]');
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',27,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',28,'    where open_pdb_options has the following syntax:');
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',29,'       READ WRITE | READ ONLY');
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',30,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',31,' and where upgrade_options has the following syntax:');
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',32,'    [PFILE=filename] {UPGRADE | DOWNGRADE} [QUIET]');
Insert into HELP (TOPIC,SEQ,INFO) values ('STARTUP',33,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('STORE',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('STORE',2,' STORE');
Insert into HELP (TOPIC,SEQ,INFO) values ('STORE',3,' -----');
Insert into HELP (TOPIC,SEQ,INFO) values ('STORE',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('STORE',5,' Saves attributes of the current SQL*Plus environment in a script.');
Insert into HELP (TOPIC,SEQ,INFO) values ('STORE',6,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('STORE',7,' STORE {SET} file_name[.ext] [CRE[ATE] | REP[LACE] | APP[END]]');
Insert into HELP (TOPIC,SEQ,INFO) values ('STORE',8,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('TIMING',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('TIMING',2,' TIMING');
Insert into HELP (TOPIC,SEQ,INFO) values ('TIMING',3,' ------');
Insert into HELP (TOPIC,SEQ,INFO) values ('TIMING',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('TIMING',5,' Records timing data for an elapsed time period, lists the current');
Insert into HELP (TOPIC,SEQ,INFO) values ('TIMING',6,' timer''s name and timing data, or lists the number of active timers.');
Insert into HELP (TOPIC,SEQ,INFO) values ('TIMING',7,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('TIMING',8,' TIMI[NG] [START text|SHOW|STOP]');
Insert into HELP (TOPIC,SEQ,INFO) values ('TIMING',9,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('TTITLE',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('TTITLE',2,' TTITLE');
Insert into HELP (TOPIC,SEQ,INFO) values ('TTITLE',3,' ------');
Insert into HELP (TOPIC,SEQ,INFO) values ('TTITLE',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('TTITLE',5,' Places and formats a title at the top of each report page.');
Insert into HELP (TOPIC,SEQ,INFO) values ('TTITLE',6,' Enter TTITLE with no clause to list its current definition.');
Insert into HELP (TOPIC,SEQ,INFO) values ('TTITLE',7,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('TTITLE',8,' The old form of TTITLE is used if only a single word or');
Insert into HELP (TOPIC,SEQ,INFO) values ('TTITLE',9,' a string in quotes follows the TTITLE command.');
Insert into HELP (TOPIC,SEQ,INFO) values ('TTITLE',10,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('TTITLE',11,' TTI[TLE] [printspec [text|variable] ...] | [OFF|ON]');
Insert into HELP (TOPIC,SEQ,INFO) values ('TTITLE',12,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('TTITLE',13,' where printspec represents one or more of the following clauses:');
Insert into HELP (TOPIC,SEQ,INFO) values ('TTITLE',14,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('TTITLE',15,'     COL n          LE[FT]        BOLD');
Insert into HELP (TOPIC,SEQ,INFO) values ('TTITLE',16,'     S[KIP] [n]     CE[NTER]      FORMAT text');
Insert into HELP (TOPIC,SEQ,INFO) values ('TTITLE',17,'     TAB n          R[IGHT]');
Insert into HELP (TOPIC,SEQ,INFO) values ('TTITLE',18,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('UNDEFINE',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('UNDEFINE',2,' UNDEFINE');
Insert into HELP (TOPIC,SEQ,INFO) values ('UNDEFINE',3,' --------');
Insert into HELP (TOPIC,SEQ,INFO) values ('UNDEFINE',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('UNDEFINE',5,' Deletes one or more substitution variables that you defined either');
Insert into HELP (TOPIC,SEQ,INFO) values ('UNDEFINE',6,' explicitly (with the DEFINE command), or implicitly (with a START');
Insert into HELP (TOPIC,SEQ,INFO) values ('UNDEFINE',7,' command argument).');
Insert into HELP (TOPIC,SEQ,INFO) values ('UNDEFINE',8,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('UNDEFINE',9,' UNDEF[INE] variable ...');
Insert into HELP (TOPIC,SEQ,INFO) values ('UNDEFINE',10,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('VARIABLE',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('VARIABLE',2,' VARIABLE');
Insert into HELP (TOPIC,SEQ,INFO) values ('VARIABLE',3,' --------');
Insert into HELP (TOPIC,SEQ,INFO) values ('VARIABLE',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('VARIABLE',5,' Declares a bind variable that can be referenced in PL/SQL, or');
Insert into HELP (TOPIC,SEQ,INFO) values ('VARIABLE',6,' lists the current display characteristics for a single variable');
Insert into HELP (TOPIC,SEQ,INFO) values ('VARIABLE',7,' or all variables.');
Insert into HELP (TOPIC,SEQ,INFO) values ('VARIABLE',8,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('VARIABLE',9,' VAR[IABLE] [<variable> [type][=value]]');
Insert into HELP (TOPIC,SEQ,INFO) values ('VARIABLE',10,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('VARIABLE',11,' where type represents one of the following:');
Insert into HELP (TOPIC,SEQ,INFO) values ('VARIABLE',12,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('VARIABLE',13,'     NUMBER         CHAR          CHAR (n [CHAR|BYTE])');
Insert into HELP (TOPIC,SEQ,INFO) values ('VARIABLE',14,'     NCHAR          NCHAR (n)     VARCHAR2 (n [CHAR|BYTE])');
Insert into HELP (TOPIC,SEQ,INFO) values ('VARIABLE',15,'     NVARCHAR2 (n)  CLOB          NCLOB');
Insert into HELP (TOPIC,SEQ,INFO) values ('VARIABLE',16,'     REFCURSOR      BINARY_FLOAT  BINARY_DOUBLE');
Insert into HELP (TOPIC,SEQ,INFO) values ('VARIABLE',17,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('VARIABLE',18,' One can assign value to a variable for input with the new syntax');
Insert into HELP (TOPIC,SEQ,INFO) values ('VARIABLE',19,' Example:');
Insert into HELP (TOPIC,SEQ,INFO) values ('VARIABLE',20,'   VARIABLE tmp_var VAHRCHAR2(10)=Smith');
Insert into HELP (TOPIC,SEQ,INFO) values ('VARIABLE',21,'   or');
Insert into HELP (TOPIC,SEQ,INFO) values ('VARIABLE',22,'   VARIABLE tmp_var VAHRCHAR2(10)');
Insert into HELP (TOPIC,SEQ,INFO) values ('VARIABLE',23,'   VARIABLE tmp_var=Smith');
Insert into HELP (TOPIC,SEQ,INFO) values ('VARIABLE',24,'   EXECUTE DBMS_OUTPUT.PUT_LINE(:tmp_var)');
Insert into HELP (TOPIC,SEQ,INFO) values ('VARIABLE',25,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR',2,' WHENEVER OSERROR');
Insert into HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR',3,' ----------------');
Insert into HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR',5,' Performs the specified action (exits SQL*Plus by default) if an');
Insert into HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR',6,' operating system error occurs (such as a file writing error).');
Insert into HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR',7,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR',8,' WHENEVER OSERROR {EXIT [SUCCESS|FAILURE|n|variable|:BindVariable]');
Insert into HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR',9,'                   [COMMIT|ROLLBACK] | CONTINUE [COMMIT|ROLLBACK|NONE]}');
Insert into HELP (TOPIC,SEQ,INFO) values ('WHENEVER OSERROR',10,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR',2,' WHENEVER SQLERROR');
Insert into HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR',3,' -----------------');
Insert into HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR',5,' Performs the specified action (exits SQL*Plus by default) if a');
Insert into HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR',6,' SQL command or PL/SQL block generates an error.');
Insert into HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR',7,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR',8,' WHENEVER SQLERROR {EXIT [SUCCESS|FAILURE|WARNING|n|variable|:BindVariable]');
Insert into HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR',9,'                    [COMMIT|ROLLBACK] | CONTINUE [COMMIT|ROLLBACK|NONE]}');
Insert into HELP (TOPIC,SEQ,INFO) values ('WHENEVER SQLERROR',10,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('XQUERY',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('XQUERY',2,' XQUERY');
Insert into HELP (TOPIC,SEQ,INFO) values ('XQUERY',3,' ------');
Insert into HELP (TOPIC,SEQ,INFO) values ('XQUERY',4,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('XQUERY',5,' Performs an XQuery 1.0 query on a specified database. Attempting to use');
Insert into HELP (TOPIC,SEQ,INFO) values ('XQUERY',6,' XQUERY on a database earlier than Oracle Database 10g (Release 2) generates');
Insert into HELP (TOPIC,SEQ,INFO) values ('XQUERY',7,' an error.');
Insert into HELP (TOPIC,SEQ,INFO) values ('XQUERY',8,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('XQUERY',9,' XQUERY xquery_statement');
Insert into HELP (TOPIC,SEQ,INFO) values ('XQUERY',10,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',1,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',2,' Help is available on the following topics:');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',3,null);
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',11,'/');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',12,'@');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',13,'@@');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',14,'ACCEPT');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',15,'APPEND');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',16,'ARCHIVE LOG');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',17,'ATTRIBUTE');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',18,'BREAK');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',19,'BTITLE');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',20,'CHANGE');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',21,'CLEAR');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',22,'COLUMN');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',23,'COMPUTE');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',24,'CONNECT');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',25,'COPY');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',26,'DEFINE');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',27,'DEL');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',28,'DESCRIBE');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',29,'DISCONNECT');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',30,'EDIT');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',31,'EXECUTE');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',32,'EXIT');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',33,'GET');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',34,'HELP');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',35,'HISTORY');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',36,'HOST');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',37,'INDEX');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',38,'INPUT');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',39,'LIST');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',40,'MENU');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',41,'PASSWORD');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',42,'PAUSE');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',43,'PRINT');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',44,'PROMPT');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',45,'QUIT');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',46,'RECOVER');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',47,'REMARK');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',48,'REPFOOTER');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',49,'REPHEADER');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',50,'RESERVED WORDS (PL/SQL)');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',51,'RESERVED WORDS (SQL)');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',52,'RUN');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',53,'SAVE');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',54,'SET');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',55,'SHOW');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',56,'SHUTDOWN');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',57,'SPOOL');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',58,'SQLPLUS');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',59,'START');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',60,'STARTUP');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',61,'STORE');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',62,'TIMING');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',63,'TOPICS');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',64,'TTITLE');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',65,'UNDEFINE');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',66,'VARIABLE');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',67,'WHENEVER OSERROR');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',68,'WHENEVER SQLERROR');
Insert into HELP (TOPIC,SEQ,INFO) values ('TOPICS',69,'XQUERY');
REM INSERTING into LOGMNRC_CONCOL_GG
SET DEFINE OFF;
REM INSERTING into LOGMNRC_CON_GG
SET DEFINE OFF;
REM INSERTING into LOGMNRC_DBNAME_UID_MAP
SET DEFINE OFF;
REM INSERTING into LOGMNRC_GSBA
SET DEFINE OFF;
REM INSERTING into LOGMNRC_GSII
SET DEFINE OFF;
REM INSERTING into LOGMNRC_GTCS
SET DEFINE OFF;
REM INSERTING into LOGMNRC_GTLO
SET DEFINE OFF;
REM INSERTING into LOGMNRC_INDCOL_GG
SET DEFINE OFF;
REM INSERTING into LOGMNRC_IND_GG
SET DEFINE OFF;
REM INSERTING into LOGMNRC_SEQ_GG
SET DEFINE OFF;
REM INSERTING into LOGMNRC_SHARD_TS
SET DEFINE OFF;
REM INSERTING into LOGMNRC_TS
SET DEFINE OFF;
REM INSERTING into LOGMNRC_TSPART
SET DEFINE OFF;
REM INSERTING into LOGMNRGGC_GTCS
SET DEFINE OFF;
REM INSERTING into LOGMNRGGC_GTLO
SET DEFINE OFF;
REM INSERTING into LOGMNRP_CTAS_PART_MAP
SET DEFINE OFF;
REM INSERTING into LOGMNRT_MDDL$
SET DEFINE OFF;
REM INSERTING into LOGMNR_AGE_SPILL$
SET DEFINE OFF;
REM INSERTING into LOGMNR_ATTRCOL$
SET DEFINE OFF;
REM INSERTING into LOGMNR_ATTRIBUTE$
SET DEFINE OFF;
REM INSERTING into LOGMNR_CCOL$
SET DEFINE OFF;
REM INSERTING into LOGMNR_CDEF$
SET DEFINE OFF;
REM INSERTING into LOGMNR_COL$
SET DEFINE OFF;
REM INSERTING into LOGMNR_COLTYPE$
SET DEFINE OFF;
REM INSERTING into LOGMNR_CON$
SET DEFINE OFF;
REM INSERTING into LOGMNR_CONTAINER$
SET DEFINE OFF;
REM INSERTING into LOGMNR_DICTIONARY$
SET DEFINE OFF;
REM INSERTING into LOGMNR_DICTSTATE$
SET DEFINE OFF;
REM INSERTING into LOGMNR_DID$
SET DEFINE OFF;
REM INSERTING into LOGMNR_ENC$
SET DEFINE OFF;
REM INSERTING into LOGMNR_ERROR$
SET DEFINE OFF;
REM INSERTING into LOGMNR_FILTER$
SET DEFINE OFF;
REM INSERTING into LOGMNR_GLOBAL$
SET DEFINE OFF;
REM INSERTING into LOGMNR_GT_TAB_INCLUDE$
SET DEFINE OFF;
REM INSERTING into LOGMNR_GT_USER_INCLUDE$
SET DEFINE OFF;
REM INSERTING into LOGMNR_GT_XID_INCLUDE$
SET DEFINE OFF;
REM INSERTING into LOGMNR_ICOL$
SET DEFINE OFF;
REM INSERTING into LOGMNR_IDNSEQ$
SET DEFINE OFF;
REM INSERTING into LOGMNR_IND$
SET DEFINE OFF;
REM INSERTING into LOGMNR_INDCOMPART$
SET DEFINE OFF;
REM INSERTING into LOGMNR_INDPART$
SET DEFINE OFF;
REM INSERTING into LOGMNR_INDSUBPART$
SET DEFINE OFF;
REM INSERTING into LOGMNR_KOPM$
SET DEFINE OFF;
REM INSERTING into LOGMNR_LOB$
SET DEFINE OFF;
REM INSERTING into LOGMNR_LOBFRAG$
SET DEFINE OFF;
REM INSERTING into LOGMNR_LOG$
SET DEFINE OFF;
REM INSERTING into LOGMNR_LOGMNR_BUILDLOG
SET DEFINE OFF;
REM INSERTING into LOGMNR_NTAB$
SET DEFINE OFF;
REM INSERTING into LOGMNR_OBJ$
SET DEFINE OFF;
REM INSERTING into LOGMNR_OPQTYPE$
SET DEFINE OFF;
REM INSERTING into LOGMNR_PARAMETER$
SET DEFINE OFF;
REM INSERTING into LOGMNR_PARTOBJ$
SET DEFINE OFF;
REM INSERTING into LOGMNR_PDB_INFO$
SET DEFINE OFF;
REM INSERTING into LOGMNR_PROCESSED_LOG$
SET DEFINE OFF;
REM INSERTING into LOGMNR_PROFILE_PLSQL_STATS$
SET DEFINE OFF;
REM INSERTING into LOGMNR_PROFILE_TABLE_STATS$
SET DEFINE OFF;
REM INSERTING into LOGMNR_PROPS$
SET DEFINE OFF;
REM INSERTING into LOGMNR_REFCON$
SET DEFINE OFF;
REM INSERTING into LOGMNR_RESTART_CKPT$
SET DEFINE OFF;
REM INSERTING into LOGMNR_RESTART_CKPT_TXINFO$
SET DEFINE OFF;
REM INSERTING into LOGMNR_SEED$
SET DEFINE OFF;
REM INSERTING into LOGMNR_SESSION$
SET DEFINE OFF;
REM INSERTING into LOGMNR_SESSION_ACTIONS$
SET DEFINE OFF;
REM INSERTING into LOGMNR_SESSION_EVOLVE$
SET DEFINE OFF;
REM INSERTING into LOGMNR_SHARD_TS
SET DEFINE OFF;
REM INSERTING into LOGMNR_SPILL$
SET DEFINE OFF;
REM INSERTING into LOGMNR_SUBCOLTYPE$
SET DEFINE OFF;
REM INSERTING into LOGMNR_TAB$
SET DEFINE OFF;
REM INSERTING into LOGMNR_TABCOMPART$
SET DEFINE OFF;
REM INSERTING into LOGMNR_TABPART$
SET DEFINE OFF;
REM INSERTING into LOGMNR_TABSUBPART$
SET DEFINE OFF;
REM INSERTING into LOGMNR_TS$
SET DEFINE OFF;
REM INSERTING into LOGMNR_TYPE$
SET DEFINE OFF;
REM INSERTING into LOGMNR_UID$
SET DEFINE OFF;
REM INSERTING into LOGMNR_USER$
SET DEFINE OFF;
REM INSERTING into LOGSTDBY$APPLY_MILESTONE
SET DEFINE OFF;
REM INSERTING into LOGSTDBY$APPLY_PROGRESS
SET DEFINE OFF;
REM INSERTING into LOGSTDBY$EDS_TABLES
SET DEFINE OFF;
REM INSERTING into LOGSTDBY$EVENTS
SET DEFINE OFF;
REM INSERTING into LOGSTDBY$FLASHBACK_SCN
SET DEFINE OFF;
REM INSERTING into LOGSTDBY$HISTORY
SET DEFINE OFF;
REM INSERTING into LOGSTDBY$PARAMETERS
SET DEFINE OFF;
REM INSERTING into LOGSTDBY$PLSQL
SET DEFINE OFF;
REM INSERTING into LOGSTDBY$SCN
SET DEFINE OFF;
REM INSERTING into LOGSTDBY$SKIP
SET DEFINE OFF;
REM INSERTING into LOGSTDBY$SKIP_SUPPORT
SET DEFINE OFF;
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_STOP_SECTION','DRVLSB','ADD_STOP_SECTION_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_ATTR_SECTION','DRVLSB','ADD_ATTR_SECTION_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_ATTR_SECTION','DRVLSB','ADD_ATTR_SECTION_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_XML_SECTION','DRVLSB','ADD_XML_SECTION_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_XML_SECTION','DRVLSB','ADD_XML_SECTION_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_MDATA_SECTION','DRVLSB','ADD_MDATA_SECTION_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_MDATA_SECTION','DRVLSB','ADD_MDATA_SECTION_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_NDATA_SECTION','DRVLSB','ADD_NDATA_SECTION_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_NDATA_SECTION','DRVLSB','ADD_NDATA_SECTION_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_MVDATA_SECTION','DRVLSB','ADD_MVDATA_SECTION_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_MVDATA_SECTION','DRVLSB','ADD_MVDATA_SECTION_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_SDATA_SECTION','DRVLSB','ADD_SDATA_SECTION_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_SDATA_SECTION','DRVLSB','ADD_SDATA_SECTION_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_SDATA_COLUMN','DRVLSB','ADD_SDATA_COLUMN_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_SDATA_COLUMN','DRVLSB','ADD_SDATA_COLUMN_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_MDATA_COLUMN','DRVLSB','ADD_MDATA_COLUMN_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_MDATA_COLUMN','DRVLSB','ADD_MDATA_COLUMN_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','REMOVE_SECTION','DRVLSB','REMOVE_SECTION_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','REMOVE_SECTION','DRVLSB','REMOVE_SECTION_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','CREATE_STOPLIST','DRVLSB','CREATE_STOPLIST_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','CREATE_STOPLIST','DRVLSB','CREATE_STOPLIST_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','DROP_STOPLIST','DRVLSB','DROP_STOPLIST_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','DROP_STOPLIST','DRVLSB','DROP_STOPLIST_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_STOPWORD','DRVLSB','ADD_STOPWORD_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_STOPWORD','DRVLSB','ADD_STOPWORD_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_STOPTHEME','DRVLSB','ADD_STOPTHEME_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_STOPTHEME','DRVLSB','ADD_STOPTHEME_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_STOPCLASS','DRVLSB','ADD_STOPCLASS_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_STOPCLASS','DRVLSB','ADD_STOPCLASS_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_INDEX','DRVLSB','ADD_INDEX_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_INDEX','DRVLSB','ADD_INDEX_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','CREATE_INDEX_SET','DRVLSB','CREATE_INDEX_SET_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','CREATE_INDEX_SET','DRVLSB','CREATE_INDEX_SET_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','REMOVE_INDEX','DRVLSB','REMOVE_INDEX_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','REMOVE_INDEX','DRVLSB','REMOVE_INDEX_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_SUB_LEXER','DRVLSB','ADD_SUB_LEXER_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_SUB_LEXER','DRVLSB','ADD_SUB_LEXER_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','REMOVE_SUB_LEXER','DRVLSB','REMOVE_SUB_LEXER_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','REMOVE_SUB_LEXER','DRVLSB','REMOVE_SUB_LEXER_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','UPDATE_SUB_LEXER','DRVLSB','UPDATE_SUB_LEXER_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','UPDATE_SUB_LEXER','DRVLSB','UPDATE_SUB_LEXER_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','SET_SECTION_ATTRIBUTE','DRVLSB','SET_SECTION_ATTRIBUTE_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','SET_SECTION_ATTRIBUTE','DRVLSB','SET_SECTION_ATTRIBUTE_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','UNSET_SECTION_ATTRIBUTE','DRVLSB','UNSET_SECTION_ATTRIBUTE_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','UNSET_SECTION_ATTRIBUTE','DRVLSB','UNSET_SECTION_ATTRIBUTE_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_MDATA','DRVLSB','ADD_MDATA',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','REMOVE_MDATA','DRVLSB','REMOVE_MDATA',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','INSERT_MVDATA_VALUES','DRVLSB','INSERT_MVDATA_VALUES',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','DELETE_MVDATA_VALUES','DRVLSB','DELETE_MVDATA_VALUES',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_SDATA','DRVLSB','ADD_SDATA',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','REMOVE_SDATA','DRVLSB','REMOVE_SDATA',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','UPDATA_MVDATA_SET','DRVLSB','UPDATA_MVDATA_SET',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','UPDATE_SDATA','DRVLSB','UPDATE_SDATA',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','POPULATE_PENDING','DRVLSB','POPULATE_PENDING',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','RECREATE_INDEX_ONLINE','DRVLSB','RECREATE_INDEX_ONLINE',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','CREATE_SHADOW_INDEX','DRVLSB','CREATE_SHADOW_INDEX',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','EXCHANGE_SHADOW_INDEX','DRVLSB','EXCHANGE_SHADOW_INDEX',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','DROP_SHADOW_INDEX','DRVLSB','DROP_SHADOW_INDEX',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','SYNC_INDEX','DRVLSB','SYNC_INDEX',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','OPTIMIZE_INDEX','DRVLSB','OPTIMIZE_INDEX',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DOC','FILTER','DRVLSB','FILTER',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DOC','GIST','DRVLSB','GIST',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DOC','MARKUP','DRVLSB','MARKUP',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DOC','TOKENS','DRVLSB','TOKENS',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DOC','THEMES','DRVLSB','THEMES',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DOC','HIGHLIGHT','DRVLSB','HIGHLIGHT',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DOC','MARKUP_CLOB_QUERY','DRVLSB','MARKUP_CLOB_QUERY',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DOC','HIGHLIGHT_CLOB_QUERY','DRVLSB','HIGHLIGHT_CLOB_QUERY',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_ANL','ADD_DICTIONARY','DRVLSB','ADD_DICTIONARY_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_ANL','ADD_DICTIONARY','DRVLSB','ADD_DICTIONARY_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_ANL','DROP_DICTIONARY','DRVLSB','DROP_DICTIONARY_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_ANL','DROP_DICTIONARY','DRVLSB','DROP_DICTIONARY_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','SET_SEC_GRP_ATTR','DRVLSB','SET_SEC_GRP_ATTR_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','SET_SEC_GRP_ATTR','DRVLSB','SET_SEC_GRP_ATTR_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_SEC_GRP_ATTR_VAL','DRVLSB','ADD_SEC_GRP_ATTR_VAL_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_SEC_GRP_ATTR_VAL','DRVLSB','ADD_SEC_GRP_ATTR_VAL_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','CREATE_THESAURUS','DRITHSC','CREATE_THESAURUS_LSB',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','CREATE_PHRASE','DRITHSC','CREATE_PHRASE_LSB',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','ALTER_PHRASE','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','CREATE_PHRASE','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','HAS_RELATION','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','SYN','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','SN','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','PT','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','TT','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','RT','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','BT','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','BTP','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','BTI','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','BTG','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','NT','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','NTP','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','NTI','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','NTG','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','TRSYN','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_THES','TR','DRITHS','PARSE_PHRASE',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'SYS','DBMS_RLS',null,'DBMS_RLS_INT',null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-4,'XDB','DBMS_XDB',null,'DBMS_XLSB',null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-4,'XDB','DBMS_XDB_CONFIG',null,'DBMS_XLSB',null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-4,'XDB','DBMS_XDB_REPOS',null,'DBMS_XLSB',null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-4,'XDB','DBMS_XDBRESOURCE',null,'DBMS_XLSB',null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-4,'SYS','DBMS_AQ_IMP_INTERNAL',null,'DBMS_AQ_SYS_IMP_INTERNAL',null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-4,'SYS','DBMS_RULE_ADM',null,'DBMS_RULEADM_INTERNAL',null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-4,'SYS','DBMS_AQADM',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-4,'SYS','DBMS_AQADM',null,'DBMS_AQADM_SYS',null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-4,'SYS','DBMS_AQJMS',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-4,'SYS','DBMS_PRVTAQIS',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-4,'SYS','XS_PRINCIPAL',null,'XS_PRINCIPAL_INT',null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-4,'LBACSYS','LBAC_EVENTS',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-4,'LBACSYS','SA_AUDIT_ADMIN',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-4,'LBACSYS','SA_COMPONENTS',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-4,'LBACSYS','SA_LABEL_ADMIN',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-4,'LBACSYS','SA_POLICY_ADMIN',null,'LBAC_POLICY_ADMIN',null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-4,'LBACSYS','SA_SESSION',null,'LBAC_LGSTNDBY_UTIL',null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-4,'LBACSYS','SA_SYSDBA',null,'LBAC_LGSTNDBY_UTIL',null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-4,'LBACSYS','SA_USER_ADMIN',null,'LBAC_LGSTNDBY_UTIL',null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-5,'MDSYS','SDO_GEORASTER',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-5,'MDSYS','SDO_TOPO_GEOMETRY',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-11,'MDSYS','SDO_RDF_TRIPLE_S',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-8,'SYS','DBMS_RLS',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-9,'SYS','DBMS_RLS_INT',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-8,'SYS','DBMS_FGA',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-8,'XDB','DBMS_XMLSCHEMA',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-9,'XDB','DBMS_XMLSCHEMA_LSB',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-8,'XDB','DBMS_XMLINDEX',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'XDB','DBMS_XDBZ0',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'XDB','DBMS_RESCONFIG',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'XDB','DBMS_XDBZ',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'XDB','DBMS_XDB_VERSION',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'XDB','DBMS_XDB',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'XDB','DBMS_XLSB',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'XDB','DBMS_XDB_CONFIG',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'XDB','DBMS_XDB_REPOS',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'XDB','DBMS_XDBRESOURCE',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'SYS','DBMS_XDS',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'SYS','DBMS_SCHEDULER',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'SYS','DBMS_ISCHED',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'SYS','DBMS_AQADM_SYS',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'SYS','DBMS_AQ_SYS_IMP_INTERNAL',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'SYS','DBMS_AQADM',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'SYS','DBMS_AQELM',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'SYS','DBMS_RULE_ADM',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'SYS','DBMS_RULEADM_INTERNAL',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'SYS','DBMS_PRVTAQIS',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'SYS','DBMS_AQ',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'SYS','DBMS_AQJMS',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'SYS','DBMS_DBFS_CONTENT_ADMIN',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'SYS','DBMS_DBFS_SFS',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'SYS','DBMS_DBFS_SFS_ADMIN',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'SYS','XS_PRINCIPAL',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'SYS','XS_PRINCIPAL_INT',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'SYS','XS_ACL',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'SYS','XS_ROLESET',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'SYS','XS_SECURITY_CLASS',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'SYS','XS_DATA_SECURITY',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'SYS','XS_DATA_SECURITY_UTIL',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'SYS','XS_NAMESPACE',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'SYS','XS_ADMIN_UTIL',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'CTXSYS','CTX_ANL',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'CTXSYS','CTX_DDL',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'CTXSYS','CTX_TREE',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'CTXSYS','CTX_ENTITY',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'CTXSYS','DRITHSL',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'CTXSYS','DRITHSC',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'CTXSYS','DRITHS',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'CTXSYS','DRIENTL',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'CTXSYS','CTX_ADM',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'CTXSYS','CTX_QUERY',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'CTXSYS','CTX_CLS',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'CTXSYS','CTX_THES',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'CTXSYS','CTX_OUTPUT',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'CTXSYS','CTX_DOC',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'CTXSYS','DRVXMD',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'CTXSYS','DRVLSB',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'CTXSYS','DRIIMP',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-8,'SYS','DBMS_DDL',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-8,'SYS','DBMS_REDEFINITION',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-8,'SYS','DBMS_SQL_TRANSLATOR',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-9,'SYS','LOGSTDBY_INTERNAL',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-9,'SYS','DBMS_INTERNAL_LOGSTDBY',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-9,'SYS','DBMS_INTERNAL_ROLLING',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-8,'SYS','DBMS_REDACT',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-8,'MDSYS','SDO_META',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'MDSYS','SDO_META_USER',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'MDSYS','SDO_RDF_INTERNAL',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'MDSYS','RDF_APIS',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'MDSYS','SDO_RDF',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'MDSYS','SDO_SEM_PERF',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'LBACSYS','LBAC_EVENTS',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'LBACSYS','LBAC_LGSTNDBY_UTIL',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'LBACSYS','LBAC_POLICY_ADMIN',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'LBACSYS','SA_AUDIT_ADMIN',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'LBACSYS','SA_COMPONENTS',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'LBACSYS','SA_LABEL_ADMIN',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'LBACSYS','SA_SYSDBA',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'LBACSYS','SA_USER_ADMIN',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-10,'DVSYS','DBMS_MACOUT',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-10,'DVSYS','DBMS_MACUTL',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'DVSYS','DBMS_MACADM',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'DVSYS','DBMS_MACAUD',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-10,'DVSYS','EVENT',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-10,'DVSYS','DBMS_MACSEC_RULES',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-10,'DVSYS','DBMS_MACSEC',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'DVSYS','DBMS_MACOLS',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-10,'DVSYS','DBMS_MACSEC_ROLES',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-10,'DVSYS','DBMS_MACOLS_SESSION',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'DVSYS','CONFIGURE_DV_INTERNAL',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-7,'AUDSYS','DBMS_AUDIT_MGMT_LSBY',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-9,'SYS','DBMS_IJOB',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-6,'DVF','DBMS_MACSEC_FUNCTION',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (2,'DML',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (6,'DML',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (7,'DML',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (4,'CLUSTER',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (5,'CLUSTER',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (8,'CLUSTER',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (86,'CLUSTER',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (177,'CONTEXT',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (178,'CONTEXT',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (32,'DATABASE LINK',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (33,'DATABASE LINK',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (225,'DATABASE LINK',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (174,'DIMENSION',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (175,'DIMENSION',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (176,'DIMENSION',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (157,'DIRECTORY',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (158,'DIRECTORY',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (9,'INDEX',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (11,'INDEX',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (10,'INDEX',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (24,'PROCEDURE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (25,'PROCEDURE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (68,'PROCEDURE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (91,'PROCEDURE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (92,'PROCEDURE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (93,'PROCEDURE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (94,'PROCEDURE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (95,'PROCEDURE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (96,'PROCEDURE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (97,'PROCEDURE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (98,'PROCEDURE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (99,'PROCEDURE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (159,'PROCEDURE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (196,'PROCEDURE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (84,'PROCEDURE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (65,'PROFILE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (67,'PROFILE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (66,'PROFILE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (52,'ROLE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (79,'ROLE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (54,'ROLE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (55,'ROLE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (36,'ROLLBACK STATEMENT',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (37,'ROLLBACK STATEMENT',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (38,'ROLLBACK STATEMENT',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (13,'SEQUENCE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (14,'SEQUENCE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (16,'SEQUENCE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (19,'SYNONYM',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (20,'SYNONYM',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (110,'SYNONYM',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (111,'SYNONYM',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (1,'TABLE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (15,'TABLE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (12,'TABLE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (85,'TABLE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (39,'TABLESPACE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (40,'TABLESPACE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (41,'TABLESPACE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (59,'TRIGGER',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (60,'TRIGGER',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (61,'TRIGGER',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (118,'TRIGGER',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (119,'TRIGGER',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (120,'TRIGGER',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (121,'TRIGGER',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (77,'TYPE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (78,'TYPE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (80,'TYPE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (81,'TYPE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (82,'TYPE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (83,'TYPE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (51,'USER',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (43,'USER',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (53,'USER',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (21,'VIEW',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (22,'VIEW',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (17,'GRANT',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (18,'REVOKE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (30,'AUDIT',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (31,'AUDIT',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (212,'EDITION',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (213,'EDITION',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (214,'EDITION',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (160,'JAVA',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (161,'JAVA',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (162,'JAVA',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (1000000,'PL/SQL',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (1000001,'PL/SQL_DDL',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-1,'ADAMS',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'ANONYMOUS',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'APPQOSSYS',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'AUDSYS',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'BI',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-1,'BLAKE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-1,'CLARK',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'CTXSYS',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'DBSFWUSER',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'DIP',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'DBSNMP',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'DMSYS',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'DVSYS',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'DVF',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'EXDSYS',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'EXFSYS',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'GGSYS',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'GSMCATUSER',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'GSMROOTUSER',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'GSMUSER',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'GSMADMIN_INTERNAL',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-1,'HR',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-1,'IX',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-1,'JONES',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'LBACSYS',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-1,'MDDATA',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'MDSYS',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'MGMT_VIEW',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'MTSSYS',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'ODM',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'ODM_MTR',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-1,'OE',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'OJVMSYS',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'OLAPSYS',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'ORACLE_OCM',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'ORDDATA',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'ORDPLUGINS',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'ORDSYS',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'OUTLN',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-1,'PM',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'REMOTE_SCHEDULER_AGENT',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-1,'SCOTT',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'SI_INFORMTN_SCHEMA',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-1,'SH',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'SPATIAL_CSW_ADMIN',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'SPATIAL_CSW_ADMIN_USR',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'SPATIAL_WFS_ADMIN',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'SPATIAL_WFS_ADMIN_USR',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'SYS',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'SYSBACKUP',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'SYSDG',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'SYSKM',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'SYSRAC',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'SYS$UMF',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'SYSTEM',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'SYSMAN',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'TSMSYS',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'WKPROXY',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'WKSYS',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'WK_TEST',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'WMSYS',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'XDB',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'XS$NULL',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (0,'XTISYS',null,null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-2,'SYS','SCHEDULER$_INSTANCE_S',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-2,'SYS','SCHEDULER$_JOBSUFFIX_S',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-2,'SYSTEM','ROLLING_EVENT_SEQ$',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-2,'LBACSYS','OLS$LAB_SEQUENCE',null,null,null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'SYS','DBMS_AQ_IMP_INTERNAL',null,'DBMS_AQ_SYS_IMP_INTERNAL',null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'SYS','DBMS_AQADM',null,'DBMS_AQADM_SYS',null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'SYS','DBMS_RULE_ADM',null,'DBMS_RULEADM_INTERNAL',null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'XDB','DBMS_XMLSCHEMA','REGISTERSCHEMA','DBMS_XMLSCHEMA_LSB','REGISTERSCHEMA_STR',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'XDB','DBMS_XMLSCHEMA','REGISTERSCHEMA','DBMS_XMLSCHEMA_LSB','REGISTERSCHEMA_OID',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'XDB','DBMS_XMLSCHEMA','REGISTERSCHEMA','DBMS_XMLSCHEMA_LSB','REGISTERSCHEMA_BLOB',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'XDB','DBMS_XMLSCHEMA','REGISTERSCHEMA','DBMS_XMLSCHEMA_LSB','REGISTERSCHEMA_XML',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'XDB','DBMS_XMLSCHEMA','COMPILESCHEMA','DBMS_XMLSCHEMA_LSB','COMPILESCHEMA',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'XDB','DBMS_XMLSCHEMA','COPYEVOLVE','DBMS_XMLSCHEMA_LSB','COPYEVOLVE',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'LBACSYS','SA_SYSDBA','CREATE_POLICY','LBAC_LGSTNDBY_UTIL','CREATE_POLICY',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'LBACSYS','SA_USER_ADMIN','SET_USER_LABELS','LBAC_LGSTNDBY_UTIL','SET_USER_LABELS',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'LBACSYS','SA_SESSION','SAVE_DEFAULT_LABELS','LBAC_LGSTNDBY_UTIL','SAVE_DEFAULT_LABELS',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'LBACSYS','SA_POLICY_ADMIN',null,'LBAC_POLICY_ADMIN',null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'LBACSYS','SA_USER_ADMIN','SET_LEVELS','LBAC_LGSTNDBY_UTIL','SET_LEVELS',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'LBACSYS','SA_USER_ADMIN','SET_COMPARTMENTS','LBAC_LGSTNDBY_UTIL','SET_COMPARTMENTS',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'LBACSYS','SA_USER_ADMIN','ALTER_COMPARTMENTS','LBAC_LGSTNDBY_UTIL','ALTER_COMPARTMENTS',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'LBACSYS','SA_USER_ADMIN','SET_GROUPS','LBAC_LGSTNDBY_UTIL','SET_GROUPS',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'LBACSYS','SA_USER_ADMIN','ALTER_GROUPS','LBAC_LGSTNDBY_UTIL','ALTER_GROUPS',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'LBACSYS','SA_USER_ADMIN','ADD_COMPARTMENTS','LBAC_LGSTNDBY_UTIL','ADD_COMPARTMENTS',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'LBACSYS','SA_USER_ADMIN','DROP_COMPARTMENTS','LBAC_LGSTNDBY_UTIL','DROP_COMPARTMENTS',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'LBACSYS','SA_USER_ADMIN','DROP_ALL_COMPARTMENTS','LBAC_LGSTNDBY_UTIL','DROP_ALL_COMPARTMENTS',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'LBACSYS','SA_USER_ADMIN','ADD_GROUPS','LBAC_LGSTNDBY_UTIL','ADD_GROUPS',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'LBACSYS','SA_USER_ADMIN','DROP_GROUPS','LBAC_LGSTNDBY_UTIL','DROP_GROUPS',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'LBACSYS','SA_USER_ADMIN','DROP_ALL_GROUPS','LBAC_LGSTNDBY_UTIL','DROP_ALL_GROUPS',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'LBACSYS','SA_USER_ADMIN','SET_DEFAULT_LABEL','LBAC_LGSTNDBY_UTIL','SET_DEFAULT_LABEL',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'LBACSYS','SA_USER_ADMIN','SET_ROW_LABEL','LBAC_LGSTNDBY_UTIL','SET_ROW_LABEL',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'XDB','DBMS_XDB',null,'DBMS_XLSB',null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'XDB','DBMS_XDB_CONFIG',null,'DBMS_XLSB',null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'XDB','DBMS_XDB_REPOS',null,'DBMS_XLSB',null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'XDB','DBMS_XDBRESOURCE',null,'DBMS_XLSB',null,0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'SYS','XS_PRINCIPAL','SET_PASSWORD','XS_PRINCIPAL_INT','SET_VERIFIER_HELPER',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'SYS','XS_PRINCIPAL','SET_VERIFIER','XS_PRINCIPAL_INT','SET_VERIFIER_HELPER',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','CREATE_PREFERENCE','DRVLSB','CREATE_PREFERENCE_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','CREATE_PREFERENCE','DRVLSB','CREATE_PREFERENCE_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','DROP_PREFERENCE','DRVLSB','DROP_PREFERENCE_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','DROP_PREFERENCE','DRVLSB','DROP_PREFERENCE_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','SET_ATTRIBUTE','DRVLSB','SET_ATTRIBUTE_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','SET_ATTRIBUTE','DRVLSB','SET_ATTRIBUTE_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','UNSET_ATTRIBUTE','DRVLSB','UNSET_ATTRIBUTE_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','UNSET_ATTRIBUTE','DRVLSB','UNSET_ATTRIBUTE_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','CREATE_SECTION_GROUP','DRVLSB','CREATE_SECTION_GROUP_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','CREATE_SECTION_GROUP','DRVLSB','CREATE_SECTION_GROUP_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','DROP_SECTION_GROUP','DRVLSB','DROP_SECTION_GROUP_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','DROP_SECTION_GROUP','DRVLSB','DROP_SECTION_GROUP_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_ZONE_SECTION','DRVLSB','ADD_ZONE_SECTION_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_ZONE_SECTION','DRVLSB','ADD_ZONE_SECTION_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_FIELD_SECTION','DRVLSB','ADD_FIELD_SECTION_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_FIELD_SECTION','DRVLSB','ADD_FIELD_SECTION_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_SPECIAL_SECTION','DRVLSB','ADD_SPECIAL_SECTION_C',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_SPECIAL_SECTION','DRVLSB','ADD_SPECIAL_SECTION_NC',0,null,null,null);
Insert into LOGSTDBY$SKIP_SUPPORT (ACTION,NAME,NAME2,NAME3,NAME4,NAME5,REG,SPARE1,SPARE2,SPARE3) values (-3,'CTXSYS','CTX_DDL','ADD_STOP_SECTION','DRVLSB','ADD_STOP_SECTION_C',0,null,null,null);
REM INSERTING into LOGSTDBY$SKIP_TRANSACTION
SET DEFINE OFF;
REM INSERTING into MVIEW$_ADV_AJG
SET DEFINE OFF;
REM INSERTING into MVIEW$_ADV_BASETABLE
SET DEFINE OFF;
REM INSERTING into MVIEW$_ADV_CLIQUE
SET DEFINE OFF;
REM INSERTING into MVIEW$_ADV_ELIGIBLE
SET DEFINE OFF;
REM INSERTING into MVIEW$_ADV_EXCEPTIONS
SET DEFINE OFF;
REM INSERTING into MVIEW$_ADV_FILTER
SET DEFINE OFF;
REM INSERTING into MVIEW$_ADV_FILTERINSTANCE
SET DEFINE OFF;
REM INSERTING into MVIEW$_ADV_FJG
SET DEFINE OFF;
REM INSERTING into MVIEW$_ADV_GC
SET DEFINE OFF;
REM INSERTING into MVIEW$_ADV_INFO
SET DEFINE OFF;
REM INSERTING into MVIEW$_ADV_JOURNAL
SET DEFINE OFF;
REM INSERTING into MVIEW$_ADV_LEVEL
SET DEFINE OFF;
REM INSERTING into MVIEW$_ADV_LOG
SET DEFINE OFF;
REM INSERTING into MVIEW$_ADV_OUTPUT
SET DEFINE OFF;
REM INSERTING into MVIEW$_ADV_PARAMETERS
SET DEFINE OFF;
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_EXACT_DELETE',0,null,null,0.02);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_EXACT_BUCKETS',0,null,null,1000);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_PARTIAL_DELETE',0,null,null,0.02);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_PARTIAL_BUCKETS',0,null,null,1000);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_AJG_DELETE',0,null,null,0.02);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_AJG_BUCKETS',0,null,null,100);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_FJG_DELETE',0,null,null,0.02);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_GC_DELETE',0,null,null,0.02);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_MEA_DELETE',0,null,null,0.05);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_TRACE_LEVEL',0,null,null,0);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMSS_REWRITE_NRF',0,null,null,10);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.console_output',1,'True',null,0);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.wip_interval',0,null,null,250);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.commit_interval',0,null,null,100);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.sql_exclusions',1,'SYSTEM.%',null,0);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.pretty',1,'True',null,0);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.lcase_names',1,'True',null,0);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.lcase_keywords',1,'False',null,0);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.add_alias',1,'False',null,0);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.ignore_ambig',1,'True',null,0);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.fixup_alias',1,'False',null,0);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.optimize',1,'True',null,0);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.ignore_columns',1,'True',null,0);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.fixup_schema',1,'False',null,0);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.remove_optional_keywords',1,'False',null,0);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.dump_tree',1,'True',null,0);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.debug_flags',1,null,null,0);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.datetime_mask',1,'dd/MM/yyyy HH:mm',null,0);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMAE_MIN_CLQ_MF_RATIO',0,null,null,0.05);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMAE_MIN_SUM_BC_RATIO',0,null,null,0.05);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMAE_MAX_GCS',0,null,null,1000);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMAE_PCT_COMPL_POLL_INTL',0,null,null,10);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMAE_TRACE_LEVEL',0,null,null,0);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMAE_AEP_MAX_LAT_SIZE',0,null,null,1024);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('QSMAE_AEP_MAX_FACT_TABLES',0,null,null,10);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.report.color1',1,'#FFFFDE',null,0);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.report.color2',1,'#336699',null,0);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.report.color3',1,'#FFCC60',null,0);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.report.color4',1,'white',null,0);
Insert into MVIEW$_ADV_PARAMETERS (PARAMETER_NAME,PARAMETER_TYPE,STRING_VALUE,DATE_VALUE,NUMERICAL_VALUE) values ('qsma.report.include_unused',1,'False',null,0);
REM INSERTING into MVIEW$_ADV_PLAN
SET DEFINE OFF;
REM INSERTING into MVIEW$_ADV_PRETTY
SET DEFINE OFF;
REM INSERTING into MVIEW$_ADV_ROLLUP
SET DEFINE OFF;
REM INSERTING into MVIEW$_ADV_SQLDEPEND
SET DEFINE OFF;
REM INSERTING into MVIEW$_ADV_TEMP
SET DEFINE OFF;
REM INSERTING into MVIEW$_ADV_WORKLOAD
SET DEFINE OFF;
REM INSERTING into OL$
SET DEFINE OFF;
REM INSERTING into OL$HINTS
SET DEFINE OFF;
REM INSERTING into OL$NODES
SET DEFINE OFF;
REM INSERTING into REDO_DB
SET DEFINE OFF;
Insert into REDO_DB (DBID,GLOBAL_DBNAME,DBUNAME,VERSION,THREAD#,RESETLOGS_SCN_BAS,RESETLOGS_SCN_WRP,RESETLOGS_TIME,PRESETLOGS_SCN_BAS,PRESETLOGS_SCN_WRP,PRESETLOGS_TIME,SEQNO_RCV_CUR,SEQNO_RCV_LO,SEQNO_RCV_HI,SEQNO_DONE_CUR,SEQNO_DONE_LO,SEQNO_DONE_HI,GAP_SEQNO,GAP_RET,GAP_DONE,APPLY_SEQNO,APPLY_DONE,PURGE_DONE,HAS_CHILD,ERROR1,STATUS,CREATE_DATE,TS1,TS2,GAP_NEXT_SCN,GAP_NEXT_TIME,CURSCN_TIME,RESETLOGS_SCN,PRESETLOGS_SCN,GAP_RET2,CURLOG,ENDIAN,ENQIDX,SPARE4,SPARE5,SPARE6,SPARE7,TS3,CURBLKNO,SPARE8,SPARE9,SPARE10,SPARE11,SPARE12) values (0,null,null,null,0,0,0,2,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,null,0,0,0,0,0,0,0,0,0,0,0,0,null,null,null,0,0,0,0,0,0,0);
REM INSERTING into REDO_LOG
SET DEFINE OFF;
REM INSERTING into ROLLING$CONNECTIONS
SET DEFINE OFF;
REM INSERTING into ROLLING$DATABASES
SET DEFINE OFF;
REM INSERTING into ROLLING$DIRECTIVES
SET DEFINE OFF;
REM INSERTING into ROLLING$EVENTS
SET DEFINE OFF;
REM INSERTING into ROLLING$PARAMETERS
SET DEFINE OFF;
REM INSERTING into ROLLING$PLAN
SET DEFINE OFF;
REM INSERTING into ROLLING$STATISTICS
SET DEFINE OFF;
REM INSERTING into ROLLING$STATUS
SET DEFINE OFF;
REM INSERTING into SCHEDULER_JOB_ARGS_TBL
SET DEFINE OFF;
REM INSERTING into SCHEDULER_PROGRAM_ARGS_TBL
SET DEFINE OFF;
REM INSERTING into SQLPLUS_PRODUCT_PROFILE
SET DEFINE OFF;
--------------------------------------------------------
--  Constraints for Table LN_AUTHORITIES
--------------------------------------------------------

  ALTER TABLE "LN_AUTHORITIES" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "LN_AUTHORITIES" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LN_CATEGORIES
--------------------------------------------------------

  ALTER TABLE "LN_CATEGORIES" MODIFY ("CATEGORY_ID" NOT NULL ENABLE);
  ALTER TABLE "LN_CATEGORIES" ADD PRIMARY KEY ("CATEGORY_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LN_ORDERDETAILS
--------------------------------------------------------

  ALTER TABLE "LN_ORDERDETAILS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "LN_ORDERDETAILS" MODIFY ("PRICE" NOT NULL ENABLE);
  ALTER TABLE "LN_ORDERDETAILS" MODIFY ("QUANTITY" NOT NULL ENABLE);
  ALTER TABLE "LN_ORDERDETAILS" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LN_ORDERS
--------------------------------------------------------

  ALTER TABLE "LN_ORDERS" MODIFY ("ORDER_ID" NOT NULL ENABLE);
  ALTER TABLE "LN_ORDERS" ADD PRIMARY KEY ("ORDER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LN_POSTS
--------------------------------------------------------

  ALTER TABLE "LN_POSTS" MODIFY ("POST_ID" NOT NULL ENABLE);
  ALTER TABLE "LN_POSTS" MODIFY ("STARS" NOT NULL ENABLE);
  ALTER TABLE "LN_POSTS" ADD PRIMARY KEY ("POST_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LN_PRODUCTS
--------------------------------------------------------

  ALTER TABLE "LN_PRODUCTS" MODIFY ("PRODUCT_ID" NOT NULL ENABLE);
  ALTER TABLE "LN_PRODUCTS" MODIFY ("PRICE" NOT NULL ENABLE);
  ALTER TABLE "LN_PRODUCTS" ADD PRIMARY KEY ("PRODUCT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LN_ROLES
--------------------------------------------------------

  ALTER TABLE "LN_ROLES" MODIFY ("ROLE_ID" NOT NULL ENABLE);
  ALTER TABLE "LN_ROLES" ADD PRIMARY KEY ("ROLE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LN_USERS
--------------------------------------------------------

  ALTER TABLE "LN_USERS" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "LN_USERS" ADD PRIMARY KEY ("USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
