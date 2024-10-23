SELECT COUNT(1), MEMBER_ID
FROM LOANS
GROUP BY MEMBER_ID
HAVING COUNT(1) >= 2;


SELECT COUNT(1), FIRST_NAME
FROM LOANS L,
MEMBERS M 
WHERE L.MEMBER_ID = M.MEMBER_ID
GROUP BY FIRST_NAME
HAVING COUNT(1) >= 2;
