--Puzzle 1
SELECT DISTINCT 
    CASE WHEN col1 < col2 THEN col1 ELSE col2 END AS colA,
    CASE WHEN col1 < col2 THEN col2 ELSE col1 END AS colB
FROM InputTbl;

SELECT DISTINCT
    CASE WHEN ASCII(col1) < ASCII(col2) THEN col1 ELSE col2 END AS colA,
    CASE WHEN ASCII(col1) < ASCII(col2) THEN col2 ELSE col1 END AS colB
FROM InputTbl;


SELECT DISTINCT
    LEAST(col1, col2) AS colA,
    GREATEST(col1, col2) AS colB
FROM InputTbl;

--Puzzle-2
CREATE TABLE TestMultipleZero (
    A INT NULL,
    B INT NULL,
    C INT NULL,
    D INT NULL
);

INSERT INTO TestMultipleZero(A,B,C,D)
VALUES 
    (0,0,0,1),
    (0,0,1,0),
    (0,1,0,0),
    (1,0,0,0),
    (0,0,0,0),
    (1,1,1,0);
	Select*from TestMultipleZero
    Where (A + B + C + D) <> 0;

--Puzzle-3
	create table section1(id int, name varchar(20))
insert into section1 values (1, 'Been'),
       (2, 'Roma'),
       (3, 'Steven'),
       (4, 'Paulo'),
       (5, 'Genryh'),
       (6, 'Bruno'),
       (7, 'Fred'),
       (8, 'Andro')
	   Select*from section1
	   where id%2=1; 

--Puzzle-4
Select * from section1
Where id = (Select min(id) from section1);

--Puzzle-5
Select * from section1
Where id = (Select max(id) from section1);


--Puzzle-6

Select * from section1
Where name like 'b%'

--Puzzle-7
CREATE TABLE ProductCodes (
    Code VARCHAR(20)
);

INSERT INTO ProductCodes (Code) VALUES
('X-123'),
('X_456'),
('X#789'),
('X-001'),
('X%202'),
('X_ABC'),
('X#DEF'),
('X-999');
Select*from ProductCodes
where Code like '%\_%' escape '\'
