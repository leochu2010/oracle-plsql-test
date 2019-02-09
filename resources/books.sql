--------------------------------------------------------
--  DDL for Table BOOK_TYPE
--------------------------------------------------------

  CREATE TABLE "BOOKS_ADMIN"."BOOK_TYPE"
   (	"BOOK_TYPE_ID" NUMBER,
	"NAME" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index BOOK_TYPE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BOOKS_ADMIN"."BOOK_TYPE_PK" ON "BOOKS_ADMIN"."BOOK_TYPE" ("BOOK_TYPE_ID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table BOOK_TYPE
--------------------------------------------------------

  ALTER TABLE "BOOKS_ADMIN"."BOOK_TYPE" MODIFY ("BOOK_TYPE_ID" NOT NULL ENABLE);
  ALTER TABLE "BOOKS_ADMIN"."BOOK_TYPE" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "BOOKS_ADMIN"."BOOK_TYPE" ADD CONSTRAINT "BOOK_TYPE_PK" PRIMARY KEY ("BOOK_TYPE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;


--------------------------------------------------------
--  DDL for Table BOOKS
--------------------------------------------------------

  CREATE TABLE "BOOKS_ADMIN"."BOOKS"
   (	"BOOK_ID" VARCHAR2(20 BYTE),
	"TITLE" VARCHAR2(100 BYTE),
	"AUTHOR" VARCHAR2(100 BYTE),
	"STOCK" NUMBER DEFAULT 0,
	"PRICE" NUMBER(*,0) DEFAULT 0,
	"BOOK_TYPE_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index BOOKS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BOOKS_ADMIN"."BOOKS_PK" ON "BOOKS_ADMIN"."BOOKS" ("BOOK_ID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table BOOKS
--------------------------------------------------------

  ALTER TABLE "BOOKS_ADMIN"."BOOKS" MODIFY ("BOOK_ID" NOT NULL ENABLE);
  ALTER TABLE "BOOKS_ADMIN"."BOOKS" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "BOOKS_ADMIN"."BOOKS" MODIFY ("AUTHOR" NOT NULL ENABLE);
  ALTER TABLE "BOOKS_ADMIN"."BOOKS" MODIFY ("STOCK" NOT NULL ENABLE);
  ALTER TABLE "BOOKS_ADMIN"."BOOKS" MODIFY ("PRICE" NOT NULL ENABLE);
  ALTER TABLE "BOOKS_ADMIN"."BOOKS" ADD CONSTRAINT "BOOKS_PK" PRIMARY KEY ("BOOK_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BOOKS
--------------------------------------------------------

  ALTER TABLE "BOOKS_ADMIN"."BOOKS" ADD CONSTRAINT "BOOKS_FK1" FOREIGN KEY ("BOOK_TYPE_ID")
	  REFERENCES "BOOKS_ADMIN"."BOOK_TYPE" ("BOOK_TYPE_ID") ENABLE;


insert all
into book_type (book_type_id, name) values (1, 'novel')
into book_type (book_type_id, name) values (2, 'fiction')
into book_type (book_type_id, name) values (3, 'maths')
select 1 from dual;


insert all
into books (book_id, title, author, stock, price, book_type_id) values ('b000001', 'Fifty Challenging Problems in Probability with Solutions', 'Frederick Mosteller', 1, 9.95, 3)
into books (book_id, title, author, stock, price, book_type_id) values ('b000002', 'The Elements of Statistical Learning: Data Mining, Inference, and Prediction, Second Edition', 'Trevor Hastie', 1, 65.54, 3)
into books (book_id, title, author, stock, price, book_type_id) values ('b000003', 'Pattern Recognition and Machine Learning', 'Christopher M. Bishop', 1, 69.47, 3)
select 1 from dual;
