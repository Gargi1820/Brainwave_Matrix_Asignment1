--Selecting all columns from the tables

select * from CATEGORIES;
select * from AUTHORS;
select * from LOANS;
select * from MEMBERS;
select * from BOOKS;
select * from FINEPAYMENTS;
select * from RESERVATIONS;
select * from SUPPLIERS;

--Selecting columns from the tables
select CATEGORY_ID, CATEGORY_NAME from CATEGORIES;
select AUTHOR_ID, FIRST_NAME, LAST_NAME, CATEGORY_ID from AUTHORS;
select LOAN_ID, MEMBER_ID, BOOK_ID, LOAN_DATE, RETURN_DATE from LOANS;
select MEMBER_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER from MEMBERS;
select BOOK_ID, TITLE, CATEGORY_ID, PUBLISHER, PUBLISHED_YEAR, ISBN from BOOKS;
select FINE_ID, LOAN_ID, AMOUNT, PAYMENT_DATE from FINEPAYMENTS;
select RESERVATION_ID, BOOK_ID, MEMBER_ID, RESERVATION_DATE, STATUS from RESERVATIONS;
select SUPPLIER_ID, SUPPLIER_NAME, CONTACT_INFO from SUPPLIERS;

--Where Conditions
select * from AUTHORS WHERE UPPER(First_name) like 'R%';
select * from AUTHORS WHERE UPPER(First_name) like '%A';
select * from AUTHORS where EXTRACT(YEAR FROM LOAN_DATE) = '2024';
select * from LOANS where return_date is null;
select * from MEMBERS where upper(last_name) = 'KUMAR'; 
