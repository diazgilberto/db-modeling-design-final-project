SELECT A.F_FIRST AS JUNIOR_FIRST, A.F_LAST AS JUNIOR_LAST, B.F_FIRST, B.F_LAST 
FROM FACULTY AS A, FACULTY AS B
WHERE A.F_RANK LIKE "ASSISTANT" AND A.F_SUPER = B.F_ID;
