LOAD DATA LOCAL INFILE '/Users/gdiaz/gil-workspace/db-modeling-design-final-project/student.csv' 
INTO TABLE STUDENT
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 2 LINES
(S_ID, S_LAST, S_FIRST, S_MI, S_ADDRESS, S_CITY, S_STATE, S_ZIP, S_PHONE, S_CLASS, @S_DOB, S_PIN, F_ID, @DATE_ENROLLED)
SET S_DOB = STR_TO_DATE(@S_DOB, '%m/%d/%y'),
DATE_ENROLLED = STR_TO_DATE(@DATE_ENROLLED, '%m/%d/%y');

SELECT * FROM STUDENT;
