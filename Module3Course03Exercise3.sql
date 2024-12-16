USE quanlysinhvien;

SELECT *
FROM student
WHERE LOWER(SUBSTRING(StudentName,1,1)) = "h";

SELECT * 
FROM class
WHERE MONTH(StartDate) = 12;

SELECT *
FROM subject
WHERE Credit >= 3 AND Credit <= 5;

SELECT s.StudentName, sb.SubName , m.Mark
FROM student s 
INNER JOIN mark m
ON s.Studentid = m.Studentid
INNER JOIN subject sb
ON m.SubId = sb.SubId
order by s.StudentName ASC, m.Mark DESC
