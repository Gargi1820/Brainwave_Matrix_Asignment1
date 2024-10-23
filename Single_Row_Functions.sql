select UPPER(FIRST_NAME) || ' ' ||  UPPER(LAST_NAME) from AUTHORS;
select LOWER(FIRST_NAME) || ' ' ||  LOWER(LAST_NAME) from AUTHORS;
SELECT INITCAP('pooja.chopra@43782.com') FROM DUAL;
SELECT SUBSTR('pooja.chopra@43782.com',1,20) FROM DUAL;
SELECT DISTINCT LENGTH(EMAIL) FROM MEMBERS;
SELECT MAX(LENGTH(EMAIL)) FROM MEMBERS;
SELECT REPLACE('pooja.chopra@43782.com', '@43782.com', '@GMAIL.COM') FROM DUAL;
SELECT SYSDATE FROM DUAL;
SELECT NVL(CAST(RETURN_DATE AS VARCHAR(100)), 'Have Not Returned') FROM LOANS;
SELECT DECODE(STATUS, 'Active','Reservation is Active', 'Completed','Reservation Provided', STATUS) FROM RESERVATIONS;
