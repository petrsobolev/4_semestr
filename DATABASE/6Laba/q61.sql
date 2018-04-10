use S_univer;
--select join

SELECT AUDITORIUM, AUDITORIUM_TYPENAME
FROM AUDITORIUM
    JOIN AUDITORIUM_TYPE
    ON AUDITORIUM.AUDITORIUM_TYPE=AUDITORIUM_TYPE.AUDITORIUM_TYPE;


--SELECT JOIN WITH STRIG 
SELECT AUDITORIUM, AUDITORIUM_TYPENAME
FROM AUDITORIUM
    JOIN AUDITORIUM_TYPE
    ON AUDITORIUM.AUDITORIUM_TYPE=AUDITORIUM_TYPE.AUDITORIUM_TYPE
    AND AUDITORIUM_TYPE.AUDITORIUM_TYPENAME LIKE '%���������%'


--selects dnt have joins

SELECT a.AUDITORIUM, b.AUDITORIUM_TYPENAME
FROM AUDITORIUM as a, AUDITORIUM_TYPE as b
where a.AUDITORIUM_TYPE=b.AUDITORIUM_TYPE

SELECT a.AUDITORIUM, b.AUDITORIUM_TYPENAME
FROM AUDITORIUM as a, AUDITORIUM_TYPE as b
where a.AUDITORIUM_TYPE=b.AUDITORIUM_TYPE
    and b.AUDITORIUM_TYPENAME like '%���������%';


--select nots between 6 and 8
SELECT A.FACULTY,B.PULPIT,C.PROFESSION,D.NAME,
	CASE E.NOTE
		WHEN 6 THEN '�����'
		WHEN 7 THEN '����'
		WHEN 8 THEN '������'
	END 
FROM FACULTY AS A, PULPIT AS B,PROFESSION AS C,STUDENT AS D,PROGRESS AS E 
WHERE E.NOTE BETWEEN 6 AND 8
ORDER BY E.NOTE DESC;

--select nots where prymary input info with not 7 and 6 and 8
SELECT A.FACULTY,B.PULPIT,C.PROFESSION,D.NAME,
	CASE E.NOTE
		WHEN 6 THEN '�����'
		WHEN 7 THEN '����'
		WHEN 8 THEN '������'
	END 
FROM FACULTY AS A, PULPIT AS B,PROFESSION AS C,STUDENT AS D,PROGRESS AS E 
WHERE E.NOTE BETWEEN 6 AND 8
ORDER BY CASE
			 WHEN E.NOTE=7 THEN 1 
			 WHEN E.NOTE=6 THEN 2
			 WHEN E.NOTE=8 THEN 3
		END;

--SELECT PULPIT WHIT LEFT OU
SELECT  B.PULPIT, ISNULL(TEACHER.TEACHER_NAME,'***')
FROM TEACHER
LEFT OUTER JOIN PULPIT AS B
				ON B.PULPIT =TEACHER.PULPIT

--seven task 
SELECT  B.PULPIT, ISNULL(TEACHER.TEACHER_NAME,'***')
FROM PULPIT as b
LEFT OUTER JOIN teacher 
				ON B.PULPIT =TEACHER.PULPIT

