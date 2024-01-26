
CREATE DATABASE KAVINNR;
USE KAVINNR;

INSERT INTO Student (id,admission_no, first_name, last_name, age, city)       
VALUES (1,3354,'Luisa', 'Evans', 13, 'Texas'),       
(2,2135, 'Paul', 'Ward', 15, 'Alaska'),       
(3,4321, 'Peter', 'Bennett', 14, 'California'),    
(4,4213,'Carlos', 'Patterson', 17, 'New York'),       
(5,5112, 'Rose', 'Huges', 16, 'Florida'),  
(6,6113, 'Marielia', 'Simmons', 15, 'Arizona'),    
(7,7555,'Antonio', 'Butler', 14, 'New York'),       
(8,8345, 'Diego', 'Cox', 13, 'California'); 

INSERT INTO Fee (admission_no, course, amount_paid)       
VALUES (3354,'Java', 20000),       
(7555, 'Android', 22000),       
(4321, 'Python', 18000),    
(8345,'SQL', 15000),       
(5112, 'Machine Learning', 30000);

select * from student;
select * from fee;
select * from student,fee;

-- INNER JOIN: INNER JOIN NA SIMILAR OR SAME DATA VA MATTUM EDUTHITU VARUM
SELECT S.id,S.admission_no,S.first_name
FROM STUDENT AS S
INNER JOIN FEE AS F
ON S.admission_no=F.admission_no;

-- CROSS JOIN - CROSS JOIN NA INTERLINKING 

SELECT S.admission_no,F.course
FROM STUDENT AS S
CROSS JOIN FEE AS F;

-- OUTER JOIN


CREATE TABLE CUSTOMER7(
CUST_ID INT,
NAME VARCHAR(50),
ADDRESS VARCHAR(100),
STATE VARCHAR(20),
PHONE INT);

CREATE TABLE ACCOUNTS(
CUST_ID INT ,
ACCT_NUM VARCHAR(50),
ACCT_TYPE VARCHAR(20),
BALANCE INT,
ACCT_STATUS VARCHAR(30)
);

INSERT INTO CUSTOMER7(CUST_ID,NAME,ADDRESS,STATE,PHONE)
VALUES (123001,'OLIVER','225-5,EMERYVILLE','CA',1897614500),
(123002,'GEORGE','194-6,NEW BRIGHTON','MN',189761700),
(123003,'HARRY','2909-5,WALNUT CREEK','CA',1897617866),
(123004,'JACK','229-5,CONCORD','CA',1897627999),
(123005,'JACOB','325-7, MISSION DIST','SFO',1897637000),
(123006,'NOAH','275-9, SAINT-PAUL','MN',1897613200),
(123007,'CHARLIE','125-1 RICHFIELD','MN',1897617666);

INSERT INTO ACCOUNTS (CUST_ID,ACCT_NUM,ACCT_TYPE,BALANCE,ACCT_STATUS)
VALUES (123001,'4000-1956-3456','SAVINGS',200000,'ACTIVE'),
(123001,'4000-1956-3456','SAVINGS',200000,'ACTIVE'),
(123001,'4000-1956-3456','SAVINGS',200000,'ACTIVE'),
(123001,'4000-1956-3456','SAVINGS',200000,'ACTIVE'),
(123001,'4000-1956-3456','SAVINGS',200000,'ACTIVE'),
(123001,'4000-1956-3456','SAVINGS',200000,'ACTIVE'),
(123001,'4000-1956-3456','SAVINGS',200000,'ACTIVE');

SELECT * FROM CUSTOMER7;
SELECT * FROM ACCOUNTS;
SELECT * FROM CUSTOMER7,ACCOUNTS;

-- WHEN TO USE WHERE (AGGREAGRE FUNCTION ILANA),WHEN TO USE HAVING (AGGREGATE FUNCTION IRUNTHAL SHOULD USE HAVING)

SELECT C.NAME,A.ACCT_NUM
FROM CUSTOMER7 AS C
LEFT JOIN ACCOUNTS AS A
ON C.CUST_ID = A.CUST_ID;

SELECT C.NAME LIKE '%O%',A.ACCT_NUM
FROM CUSTOMER7 AS C
LEFT JOIN ACCOUNTS AS A
ON C.CUST_ID = A.CUST_ID;







# CUSTOMER TABLE
 
CREATE TABLE CUSTOMER_TABLE(
CUSTOMER_ID INT PRIMARY KEY,
CUST_NAME VARCHAR(30),
CITY VARCHAR(30),
GRADE INT,
SALESMAN_ID INT
);

INSERT INTO CUSTOMER_TABLE(CUSTOMER_ID,CUST_NAME,CITY,GRADE,SALESMAN_ID)
VALUES(3002,"NICK RIMANDO","NEW YORK",100,5001),
(3007,"BRAD DAVIS","NEW YORK",200,5001),
(3005,"GRAHAM ZUSI","CALIFONIA",200,5002),
(3008,"JULIAN GREEN","LONDON",300,5002),
(3004,"FABIAN JOHNSON","PARIS",300,5006),
(3009,"GEOFF CAMERON","BERLIN",100,5003),
(3003,"JOZY ALTIDOR","MOSCOW",200,5007),
(3001,"BRAD GUZAN","LONDON",NULL,5005);

SELECT * FROM CUSTOMER_TABLE;

# SALESMAN TABLE:

CREATE TABLE SALESMAN (
SALESMAN_ID INT,
NAME VARCHAR(30),
CITY VARCHAR(30),
COMMISSION VARCHAR(30)
);

INSERT INTO SALESMAN (SALESMAN_ID,NAME,CITY,COMMISSION)
VALUES (5001 ,'JAMES HOOG' ,'NEW YORK', 0.15),
(5002 ,'NAIL KNITE' ,'PARIS' , 0.13),
(5003 ,'LAUSON HEN' ,'SAN JOSE' , 0.12),
(5005 ,'PIT ALEX','LONDON', 0.11),
(5006 ,'MC LYON','PARIS',0.14),
(5007 ,'PAUL ADAM','ROME' ,0.13);


# ORDER TABLE
CREATE TABLE ORDER_TABLE(
ORD_NO INT,
PURCH_AMT FLOAT,
ORD_DATE INT,
CUSTOMER_ID INT,
SALESMAN_ID INT);

INSERT INTO ORDER_TABLE (ORD_NO,PURCH_AMT,ORD_DATE,CUSTOMER_ID,SALESMAN_ID)
VALUES (70001,150.5,2012-10-05,3005,5002),                                                                	
(70009,270.65,2012-09-10,3001,5005),
(70002,65.26,2012-10-05,3002,5001),
(70004,110.5,2012-08-17,3009,5003),
(70007,948.5,2012-09-10,3005,5002),
(70005,2400.6,2012-07-27,3007,5001),
(70008,5760, 2012-09-10,3002,5001),
(70010,1983.43 ,2012-10-10,3004,5006),
(70003,2480.4,2012-10-10,3009,5003),
(70012,250.45,2012-06-27,3008,5002),
(70011,75.29,2012-08-17,3003,5007),
(70013,3045.6,2012-04-25,3002,5001);


SELECT * FROM CUSTOMER_TABLE;
SELECT * FROM SALESMAN;
SELECT * FROM ORDER_TABLE ;

/*-From the following tables write a SQL query to find the salesperson 
and customer who reside in the same city. Return Salesman, cust_name and city.*/
SELECT CUSTOMER_TABLE.CUST_NAME,CUSTOMER_TABLE.SALESMAN_ID,CUSTOMER_TABLE.CITY
FROM CUSTOMER_TABLE
INNER JOIN SALESMAN
ON CUSTOMER_TABLE.CITY = SALESMAN.CITY;

/* From the following tables write a SQL query to find those orders where the order amount exists between 500 and 2000. 
Return ord_no, purch_amt, cust_name, city. */
SELECT * FROM CUSTOMER_TABLE;
SELECT * FROM SALESMAN;
SELECT * FROM ORDER_TABLE ;

SELECT ORDER_TABLE.ORD_NO,ORDER_TABLE.PURCH_AMT,CUSTOMER_TABLE.CUST_NAME,CUSTOMER_TABLE.CITY
FROM CUSTOMER_TABLE
INNER JOIN ORDER_TABLE
ON CUSTOMER_TABLE.SALESMAN_ID=ORDER_TABLE.SALESMAN_ID
WHERE ORDER_TABLE.PURCH_AMT BETWEEN 500 AND 2000;

/* From the following tables write a SQL query to find salespeople who received commissions of more than 12 percent from the company. 
Return Customer Name, customer city, Salesman, commission. */

SELECT CUSTOMER_TABLE.CUST_NAME,CUSTOMER_TABLE.CITY,SALESMAN.COMMISSION
FROM CUSTOMER_TABLE
INNER JOIN SALESMAN
ON CUSTOMER_TABLE.SALESMAN_ID = SALESMAN.SALESMAN_ID
WHERE SALESMAN.COMMISSION > 0.12;

/* From the following tables write a SQL query to locate those salespeople who do not live in the same city where their 
customers live and have received a commission of more than 12% from the company.
Return Customer Name, customer city, Salesman, salesman city, commission */ 
SELECT * FROM CUSTOMER_TABLE;
SELECT * FROM SALESMAN;
SELECT * FROM ORDER_TABLE ;

SELECT CUSTOMER_TABLE.CUST_NAME,CUSTOMER_TABLE.CITY,SALESMAN.COMMISSION
FROM CUSTOMER_TABLE
INNER JOIN SALESMAN
ON CUSTOMER_TABLE.SALESMAN_ID = SALESMAN.SALESMAN_ID
WHERE (CUSTOMER_TABLE.CITY <> SALESMAN.CITY) AND SALESMAN.COMMISSION > 0.12;

-- Windows Function
CREATE TABLE EMPLOYEEE(
NAME VARCHAR(20),
AGE INT,
DEPARTMENT VARCHAR(30),
SALARY INT
);

INSERT INTO EMPLOYEEE(NAME,AGE,DEPARTMENT,SALARY)
VALUES ('RAMESH',20,'FINANCE',50000),
('DEEP',25,'SALES',30000),
('RAM',28,'FINANCE',20000),
('PRADEEP',22,'SALES',20000);

SELECT * FROM EMPLOYEEE;

select name, age, department, salary, avg(salary) avg_salary
from EMPLOYEEE
group by name, age, department, salary
order by department;

select name, age, department, salary, 
avg(salary) over (partition by department order by age) as avg_salary
from EMPLOYEEE;

select 
row_number() over (partition by department order by salary) row_number_,
name, age, department, salary, 
rank() over (partition by department order by salary) rank_,
dense_rank() over (partition by department order by salary) dense
from EMPLOYEEE;


CREATE TABLE student_score (
  student_id SERIAL PRIMARY KEY,
  student_name VARCHAR(30),
  dep_name VARCHAR(40),
  score INT
);

INSERT INTO student_score VALUES (11, 'Ibrahim', 'Computer Science', 80);
INSERT INTO student_score VALUES (7, 'Taiwo', 'Microbiology', 76);
INSERT INTO student_score VALUES (9, 'Nurain', 'Biochemistry', 80);
INSERT INTO student_score VALUES (8, 'Joel', 'Computer Science', 90);
INSERT INTO student_score VALUES (10, 'Mustapha', 'Industrial Chemistry', 78);
INSERT INTO student_score VALUES (5, 'Muritadoh', 'Biochemistry', 85);
INSERT INTO student_score VALUES (2, 'Yusuf', 'Biochemistry', 70);
INSERT INTO student_score VALUES (3, 'Habeebah', 'Microbiology', 80);
INSERT INTO student_score VALUES (1, 'Tomiwa', 'Microbiology', 65);
INSERT INTO student_score VALUES (4, 'Gbadebo', 'Computer Science', 80);
INSERT INTO student_score VALUES (12, 'Tolu', 'Computer Science', 67);

SELECT * FROM student_score;

-- Fetch minimum score and Maximum Score by using Windows Function:
select * ,
min(score) over() as min,
max(score) over () as max
from student_score;

-- find maximum score by means of department name and rounded average value (2 decimals round off)
select * ,
max(score) over (partition by dep_name order by score) max_score,
round(avg(score) over (partition by dep_name),2) rounded_average_value
from student_score;


CREATE TABLE CRM(
ID INT);

INSERT INTO CRM(ID)
VALUES(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10);

 -- NTILE
SELECT ID, NTILE(3) 
OVER (ORDER BY ID) NTILED
FROM CRM;

-- PERCENT_RANK
SELECT ID, PERCENT_RANK()
OVER (ORDER BY ID) PERCENTILE
FROM CRM;


CREATE TABLE ZOHO_CRM(
COMPANY VARCHAR(20),
YEAR INT,
AMOUNT INT);

INSERT INTO ZOHO_CRM(COMPANY,YEAR,AMOUNT)
VALUES ('CAMERON',2001,20000),
('PAYODA',2002,30000),
('ACCENTURE',2003,40000),
('DELL',2004,50000),
('HP',2005,60000),
('ACCESS',2006,55000);

SELECT *,LEAD(AMOUNT)
OVER (ORDER BY AMOUNT) LEAD_WINDOWS
FROM ZOHO_CRM;

SELECT *,LAG(AMOUNT)
OVER (ORDER BY AMOUNT) LAG_WINDOWS
FROM ZOHO_CRM;
