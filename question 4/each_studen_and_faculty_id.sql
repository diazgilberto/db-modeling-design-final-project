SELECT S.S_ID, S.S_LAST, S.S_FIRST, S.F_ID, F.F_LAST
FROM STUDENT AS S, FACULTY AS F
WHERE S.F_ID = F.F_ID; 
