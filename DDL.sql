CREATE TABLE BRAIN_WAVE_DBA_INTERN.MEMBERS 
   (	MEMBER_ID NUMBER, 
	FIRST_NAME VARCHAR2(100), 
	LAST_NAME VARCHAR2(100), 
	EMAIL VARCHAR2(150), 
	PHONE_NUMBER VARCHAR2(10), 
	 PRIMARY KEY (MEMBER_ID)
  );

  CREATE TABLE BRAIN_WAVE_DBA_INTERN.CATEGORIES 
   (	CATEGORY_ID NUMBER, 
	CATEGORY_NAME VARCHAR2(100), 
	 PRIMARY KEY (CATEGORY_ID)
  );

  CREATE TABLE BRAIN_WAVE_DBA_INTERN.SUPPLIERS 
   (	SUPPLIER_ID NUMBER, 
	SUPPLIER_NAME VARCHAR2(100), 
	CONTACT_INFO VARCHAR2(255), 
	 PRIMARY KEY (SUPPLIER_ID)
  );

  CREATE TABLE BRAIN_WAVE_DBA_INTERN.AUTHORS 
   (	AUTHOR_ID NUMBER, 
	FIRST_NAME VARCHAR2(100), 
	LAST_NAME VARCHAR2(100), 
	CATEGORY_ID NUMBER, 
	 PRIMARY KEY (AUTHOR_ID), 
	 FOREIGN KEY (CATEGORY_ID)
	  REFERENCES BRAIN_WAVE_DBA_INTERN.CATEGORIES (CATEGORY_ID) ENABLE
   );

  CREATE TABLE BRAIN_WAVE_DBA_INTERN.BOOKS 
   (	BOOK_ID NUMBER, 
	TITLE VARCHAR2(255) NOT NULL ENABLE, 
	CATEGORY_ID NUMBER, 
	PUBLISHER VARCHAR2(100), 
	PUBLISHED_YEAR NUMBER(4,0), 
	ISBN VARCHAR2(20), 
	 PRIMARY KEY (BOOK_ID), 
	 FOREIGN KEY (CATEGORY_ID)
	  REFERENCES BRAIN_WAVE_DBA_INTERN.CATEGORIES (CATEGORY_ID) ENABLE
   );

  CREATE TABLE BRAIN_WAVE_DBA_INTERN.LOANS 
   (	LOAN_ID NUMBER, 
	MEMBER_ID NUMBER, 
	BOOK_ID NUMBER, 
	LOAN_DATE DATE, 
	RETURN_DATE DATE, 
	 PRIMARY KEY (LOAN_ID), 
	 FOREIGN KEY (MEMBER_ID)
	  REFERENCES BRAIN_WAVE_DBA_INTERN.MEMBERS (MEMBER_ID) ENABLE, 
	 FOREIGN KEY (BOOK_ID)
	  REFERENCES BRAIN_WAVE_DBA_INTERN.BOOKS (BOOK_ID) ENABLE
   );

  CREATE TABLE BRAIN_WAVE_DBA_INTERN.RESERVATIONS 
   (	RESERVATION_ID NUMBER, 
	BOOK_ID NUMBER, 
	MEMBER_ID NUMBER, 
	RESERVATION_DATE DATE, 
	STATUS VARCHAR2(20), 
	 PRIMARY KEY (RESERVATION_ID), 
	 FOREIGN KEY (BOOK_ID)
	  REFERENCES BRAIN_WAVE_DBA_INTERN.BOOKS (BOOK_ID) ENABLE, 
	 FOREIGN KEY (MEMBER_ID)
	  REFERENCES BRAIN_WAVE_DBA_INTERN.MEMBERS (MEMBER_ID) ENABLE
   ) ;
