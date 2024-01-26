-- Q1 Create a Database Bank

create database bank;

use bank;

-- Q2 Create a table with name "Bank_Inventory" with the following columns

drop table Bank_inventory;
create table Bank_inventory(
Product char (10),
Quanity int,
price real,
Purchase_cost float,
estimated_sale_price float
);

-- Q3 Display all column names and their datatype and size in Bank_Inventory:
desc Bank_inventory;


-- Q4 Insert the two records into Bank_Inventory table:

insert into Bank_Inventory(Product,Quanity,price,Purchase_cost,estimated_sale_price)
values ('PayCard',2,300.45,8000.87,9000.56),
('PayPoints',4,200.89,7000.67,6700.56),
('Dailcard',2,380.00,8500.87,9000.00);

select * from Bank_Inventory;

-- Q5 Add a column : Geo_Location to the existing:

alter table Bank_Inventory add column Geo_Location varchar(20);

-- Q6 What is the value of Geo_Location for product : 'Paycard'?
select Geo_Location from Bank_Inventory 
where Product = 'Paycard';

-- Q7 HOW MANY CHARACTERS does the Product ; 'Paycard' store in the Bank_inventory table: = 6
select length('Paycard');

-- Q8
-- A update the Geo_Location field from NULL to 'Delhi-City'
UPDATE Bank_Inventory 
SET Geo_Location = 'Delhi City' 
where Geo_Location is null;

select * from Bank_Inventory;
 -- B How many characters does the Geo_Location field value 'Delhi City stores in the Bank_inventory table 
select length('Delhi City');

-- Q9 Update the product field from char to varchar size 10 in Bank_Inventory:

alter table Bank_Inventory modify Product varchar(10) not null;
desc Bank_Inventory;

-- Change FUnction 
alter table Bank_Inventory change Product prod varchar(25);



-- Q10
alter table Bank_Inventory modify Product varchar(6) not null;
-- Q11 
select * from Bank_Inventory where product = 'PayCard';

-- Q12
create table Bank_Holidays(
Holiday date,
Start_time datetime,
End_time timestamp);

desc Bank_Holidays;

-- Q13
insert into Bank_Holidays values 
(current_date(),current_date(),current_date());
select * from Bank_Holidays;
desc Bank_Holidays;


-- Q13 Step 2
update Bank_Holidays
set Holiday = date_add(Holiday,interval 1 day);
select * from Bank_Holidays;

-- Q 14
update Bank_Holidays 
set Start_time = now();
select * from Bank_Holidays;

-- Q15
update Bank_Holidays
set End_time = timestamp;

-- Q16 
select * from Bank_Inventory;



-- Q17
select Product as New_Product from Bank_Inventory;
desc Bank_Inventory;

-- Q18 
Select * from Bank_Inventory limit 1;
desc Bank_Inventory;

-- Q19
update Bank_Holidays
set End_time = now();
select * from Bank_Holidays;

-- Q 20
Select * from Bank_Inventory limit 5;




-- Sql queries - 22
-- Q1 

alter table Bank_Inventory modify Geo_Location varchar(30) not null;
desc Bank_Inventory;


-- Q2 
 select * from Bank_Inventory;
update Bank_Inventory 
set estimated_sale_price =(estimated_sale_price)*0.15
where Quanity > 4;

-- Q3

select * from Bank_Inventory;
update Bank_Inventory
set estimated_sale_price =estimated_sale_price + estimated_sale_price * 0.10 
where Product = 'Dailcard';

-- Q4
delete from Bank_Inventory
where (Purchase_cost - estimated_sale_price) < (estimated_sale_price * 0.5);

-- Q5
update Bank_Holidays
set End_time = "2020-03-20 11:59:59"
where End_time = '2023-09-12 19:15:41';

select * from Bank_Holidays;

-- End 

-- 
select * from cricket_1;
select * from cricket_2;
select * from cric_combined;

-- Q6

SELECT * FROM cricket_2
where Charisma is null;

-- q7

select Player_Id,Player_Name from cricket_1;
select Player_Id,Player_Name from cricket_2;

-- q 8 

select Player_Id,Player_Name from cric_combined
where  Runs>50;cricket_2

-- q 9 

select Player_Id,Player_Name from cric_combined
where  between (Popularity > 10) and (Popularity < 12);

-- Q10

select * from cric_combined;
select Player_Id,Player_Name from cric_combined
where Runs and Charisma > 50;




select * from cric_combined;

CREATE TABLE product_information (
product_id int, 
product_name varchar(30), 
product_type varchar(30), 
total_inventory int(200),
product_cost float(3, 2), 
product_retail float(3, 2), 
store_units int,
online_units int,
PRIMARY KEY (product_id)
);

INSERT INTO product_information
(product_id, product_name, product_type, total_inventory, product_cost, product_retail, store_units, online_units)
VALUES
(1, 'chamomile', 'tea', 200, 5.12, 7.50, 38, 52),
(2, 'chai', 'tea', 100, 7.40, 9.00, 17, 27),
(3, 'lavender', 'tea', 200, 5.12, 7.50, 50, 112),
(4, 'english_breakfast', 'tea', 150, 5.12, 7.50, 22, 74),
(5, 'jasmine', 'tea', 150, 6.17, 7.50, 33, 92),
(6, 'matcha', 'tea', 100, 6.17, 7.50, 12, 41),
(7, 'oolong', 'tea', 75, 7.40, 9.00, 10, 29),
(8, 'tea sampler', 'tea', 50, 6.00, 8.50, 18, 25),
(9, 'ceramic teapot', 'tea item', 30, 7.00, 9.75, 8, 15),
(10, 'golden teaspoon', 'tea item', 100, 2.00, 5.00, 18, 67);





SELECT 895+1070 as Summation;
SELECT 789 - 989 as Difference;
SELECT 777 * 677 as Product;
SELECT 890 / 678 as Division;
SELECT 25 % 5 as Modulus;
SELECT pow(3,2) as Power;

# Order of operations: (Multiple Operations)
SELECT (2+8)*3+787 as eqn;

# NUMERIC FUNCTIONS:
# ABS()- it returns the absolute value of  number

SELECT ABS(-245) as absolute_number;


# ACOS()- it returns the cosine of a number in radians:

SELECT ACOS(0) as cosine;
SELECT ATAN(45) as tan;
SELECT ASIN(0.25) as sin;

# CEIL()- it returns the smallest interger value that is >= to a number:

SELECT CEIL(25.75) as ceiling;
SELECT ceiling(25.75) as ceiling;

# Degrees()-it retuns the radian value into a degree:

SELECT degrees(1.5) as Degree;

# DIV()- it used for integer division:

SELECT 10 div 5 as division;

#EXP() - It returns the e raised to the power of a number:

SELECT exp(2) as expotentional;

#FLOOR() - it returns the largest integer value that is <= to a number:

SELECT FLOOR(23.78) as floor;

# GREATEST()- IT returns the greatest value in a list of expressions:

SELECT GREATEST(13,14,99,787,950) as greater_number;

# SMALLEST() - it retuns the smallest value in a list of expression:
SELECT LEAST(11,34,67,9) as smallest_number;


# LN()- It returns the Natural Logarithm of a Number: 
select LN(2) AS LOG;


# Log10() - It returns the base 10 Logarithm of a Number: 
select log10(5) as Base10_Log;

#Log2() - It returns the base 2 Logarithm of a Number:
select log2(11) as Base2_log;

#Mod() - It returns the reminder (whereas n divided by m);
select mod(18,4);

# pi() - It reuturns the pi value of Number and displays 6 decimal places:
select pi() as pi_value;


select power(4,2);

select radians(180);

select rand();

select round(2.589);

select sin(2);

select sign(-256);

select sqrt(5);

select truncate(7.53566989999,5);

select char_length('Kavin');

select character_length('Kavin');


select concat('Kavin','NR') as concat;

select concat_ws('_', 'IPCS','Global','Coimbatore') as concat_ws;

-- Hold On 
select find_in_set('K',"K,A,V,I,N");

select format("0.981","dollar");


select lcase("ProfessIoNal");

select ucase("professional");


select lpad('Kavin',8,"2") as lpad;

select rpad("IPCS",5,"3") as rpad;

-- Hold
SELECT LTRIM('123',"123123kavin");
-- Hold
select replace("1234GLOBAL1234",'IPCS');

select reverse('Ambulance') ;

select space();
-- It will increasre the space

select substr("IPCSglobalpvtltd",1,8) as substr;
 
 -- New Question Suppliers
create table suppliers(
supplierid varchar(20),
name varchar(20),
address varchar(50)
);
truncate suppliers;
insert into suppliers(supplierid,name,address)
values ('S1','Paragon Suppliers','21-3,okhla,Delhi'),
('S2','Mango Nation','21,Faridabad,Haryana'),
('S3','Canandian Biz','6/7,okhla,Phase II, Delhi'),
('S4','Caravan Traders','2-A,Pitampura Delhi'),
('S5','Harish and Sons','Gurgaon, NCR'),
('S6','Om Suppliers','2/1,Faridabad, Haryana');

select * from suppliers;


-- Fetch the query where the name starts with CA:

select name from suppliers
where name like 'Ca%';

select * from suppliers
where address like '%okhla%';

select name from suppliers
where name like '%Mango Nation%';


select name from suppliers
where name like 'C__%';


-- Marks Table

create table mark(
id int,
name varchar(20),
marks int,
age int);
desc mark;
select * from mark;
insert into mark(id,name,marks,age)
values (1,'harsh',90,19),
(2,'suresh',50,20),
(3,'pratik',80,19),
(4,'Dhanraj',95,21),
(5,'ram',85,18);

select avg(marks) as average from mark ;

select avg(age) as ave_age from mark;

select count(name) as count_people from mark;

select count(*) as num_students from mark;


-- Unique Identity 
select count(distinct(age)) as unique_age from mark ; 

-- Hold 
select first(age) as first_Val from mark ; 
select last(age) as last_Val from mark ; 


-- Min(), Max()
select max(age) as max_age from mark;
select min(age) as max_age from mark; 

select sum(marks) as sum_marks from mark;

-- Upper Case
select ucase(name) as uppercase from mark;

-- Lower Case
select lcase(name) as lowercase from mark;

-- Mid
-- 1 la irunthu crop aaganum and 3 ooda mudiyanum  
select mid(name, 1, 3) as mid_func from mark;

select length(name) as len_name from mark;

select round(marks) as roundoff_values from mark;

select now() as current_datetime from mark;

select name,marks,now() from mark;

select name,format(now(),"YYYY/mm/dd") as for_func from mark;

create table student_table(
studentid int,
name varchar(20),
course varchar(20)
);

insert into student_table(studentid,name,course)
values (1,'rohan','dbms'),
(2,'kevin','os'),
(3,'mansi','dbms'),
(4,'mansi','ada'),
(5,'rekha','ada'),
(6,'megha','os');

create table ta_table(
studentid int,
name varchar(20),
course varchar(20)
);

insert into ta_table(studentid,name,course)
values (1,'kevin','toc'),
(2,'sita','ip'),
(3,'manik','ap'),
(4,'rekha','sns');

select * from student_table;
select * from ta_table;


select name from student_table 
except
select name from ta_table;

select name from student_table 
except all
select name from ta_table;


create table if not exists emp(
empid int primary key,
empname varchar(20) not null,
email varchar(20) not null,
address varchar(50) not null,
age int not null,
salary int not null
);


desc emp;

insert into emp(empid,empname,email,address,age,salary)
values (1,'shubham','shubham@example.com','india',23,50000),
(2,'aman','aman@example.com','australia',21,45000),
(3,'naveen','naveen@example.com','srilanka',24,55000),
(4,'aditya','aditya@example.com','austria',21,42000),
(5,'nishant saluja','nishant@example.com','spain',22,48000);
select * from emp;
-- Top 
SELECT 
    empname, address,age
FROM
    emp
ORDER BY age DESC
LIMIT 2; 



select * from emp
where age>=22
order by salary asc 
limit 2;


-- Offset - It skip the row from Begining
select * from emp
limit 3
offset 1;

-- New Question 
create table hr(
fname varchar(20),
lname varchar(20),
ssn int,
salary int,
super_ssn int);

insert into hr (fname,lname,ssn,salary,super_ssn)
values('John','Smith',123456789,30000,33344555),
('Franklin','Wong',333445555,40000,888665555),
('Joyce','English',453453453,80000,333445555),
('Ramesh','Narayan',666884444,38000,333445555),
('James','Borg',888665555,55000,Null),
('Jennifier','Wallace',987654321,43000,88866555),
('Ahmad','Jabbar',987987987,25000,987654321),
('Alicia','Zeala',999887777,25000,987654321);

-- Print First name last name of all the employee except the employee having the lowest salary 

select fname,lname,salary from hr
order by salary desc
limit 5;

select fname,lname,salary from hr 
order by salary asc
limit 5
offset 2;

-- Grocery Table; 
create table groceries(
product_id int,
product_name varchar(30),
product_cost float);


insert into groceries(product_id,product_name,product_cost)
values (1001,'Colgate Totthpaste',2.25),
(1002,'T-Shirt',5),
(1003,'jeans',6.5),
(1004,'Shorts',4.5),
(1005,'Sneakers',8.99),
(1007,'Mouthwash',3.35),
(1008,'Denim Jeans',8.99),
(1009,'Synsodyne Toothpaste',3.35);

select product_name,product_cost
from groceries 
group by product_name,product_cost
having sum(product_cost) > 3.50
order by product_cost; 

select sum(product_cost)
from groceries;

select product_name,product_cost
from groceries 
group by product_name,product_cost
having max(product_cost)>7 
order by product_cost asc;

select product_name,product_cost
from groceries 
group by product_name,product_cost
having min(product_cost)<3 
order by product_cost asc;

-- Group by hold

select product_name,product_cost
from groceries 
group by product_name,product_cost
having avg(product_cost) > (select avg(product_cost) from groceries)
order by product_cost asc;

/*
select customer_id
from groceries 
where product_idt ggt g */

-- Question
CREATE TABLE ep4(
emp_no int(25),
name VARCHAR(100),
sal FLOAT(10) ,
age INT (3) 
);
INSERT INTO ep4(emp_no,name, sal,age)
VALUES (1,"aman",50000,25),
(2,"shubham",60000.5,30),
(3,"aditya",75000.75,35),
(4,"navin",45000.25,28),
(5,"chetan",80000,32),
(6,"divya",65000,27),
(7,"gaurav",55000.5,29),
(8,"isha",72000.75,31),
(9,"kavitha",48000.25,26),
(10,"mohan",83000,33);
SELECT * FROM ep4;


CREATE TABLE student1(
name VARCHAR(100),
year INT(5),
subject VARCHAR(600)
);

INSERT INTO student1(name,year,subject)
VALUES("alice",1,"mathematics"),
("bob",2,"english"),
("charlie",3,"science"),
("david",4,"history"),
("emily",5,"art"),
("frank",6,"computer science");
SELECT * FROM student1;

SELECT  * from ep4;

select name, round(sum(sal)) Salary
from ep4
group by name;

select name, age 
from ep4
where age > 30
group by name, age
order by age desc;

select name, age, ceil(max(sal)) Salary
from ep4
group by name, age
having (select avg(age) from ep4 );

CREATE TABLE COUNTRY(
CUSTOMERNAME VARCHAR(30),
LASTNAME VARCHAR(30),
COUNTRY VARCHAR(30),
AGE INT);

INSERT INTO COUNTRY(CUSTOMERNAME,LASTNAME,COUNTRY,AGE)
VALUES ('SHUBHAM','THAKUR','INDIA',23),
('AMAN','CHOPRA','AUSTRALIA',21),
('NAVEEN','TULASI','SRI LANKA',24),
('ADITYA','ARPAN','AUSTRIA',21),
('BISHANT. SALCHICHAS S.A.','JAIN','SPAIN',22);


SELECT * FROM COUNTRY;

SELECT CUSTOMERNAME, AGE,
CASE 
    WHEN AGE > 21 THEN 'The age is over 21'
    WHEN AGE = 21 THEN 'The age is equal to 21'
    ELSE 'The age is Over 30'
END AS COMPARISON 
FROM COUNTRY;


CREATE TABLE GRADE1(
GRADEID INT,
STUDENTID INT,
COURSEID INT,
GRADE INT);

INSERT INTO GRADE1(GRADEID,STUDENTID,COURSEID,GRADE)
VALUES(1,1,1,4),
(2,2,1,5),
(3,3,3,0),
(4,4,3,3),
(5,1,3,5);

SELECT GRADEID,GRADE,
CASE
	WHEN GRADE >4 THEN 'Outstanding'
    WHEN GRADE >3 AND GRADE <5 THEN 'Excellent'
    WHEN GRADE >2 AND GRADE <4 THEN 'Fair'
    WHEN GRADE = 2 THEN 'Good'
    ELSE 'Poor'
END AS Grade_Comments
FROM GRADE1;

CREATE TABLE RANKING(
EMPLOYEE_ID INT,
FIRST_NAME VARCHAR(30),
LAST_NAME VARCHAR(30),
JOB_TITLE VARCHAR(30),
SALARY INT,
REPORTS_TO INT,
OFFICE_ID INT);


INSERT INTO RANKING(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,JOB_TITLE,SALARY,REPORTS_TO,OFFICE_ID)
VALUES (33391,'DARCY','NORTUNEN','ACCOUNT EXECUTIVE',62871,37270,1),
(37270,'YOVONNDA','MAGRANNEL','EXECUTIVE SECRETARY',63996,NULL,10),
(37851,'SAYER','MATTERSON','STATISTICAN III',98926,37270,1),
(40448,'MINDY','CRISSIL','STAFF SCIENTIST',94860,37270,1),
(56274,'KERIANN','ALLOISI','VP MARKETING',110150,37270,1),
(63196,'ALASTER','SCRUTCHIN','ASSISTANT PROFESSOR',32179,37270,2),
(67009,'NORTH','DE CLERC','VP PRODUCT MANAGEMENT',114257,37270,2),
(67370,'ELLADINE','RISING','SOCIAL WORKER',96767,37270,2),
(68249,'NISSE','VOYSEY','FINANCIAL ADVISOR',52832,37270,2),
(72540,'GUTHREY','IACOPETTI','OFFICE ASSISTANT I',117690,37270,3),
(72913,'KASS','HEFFERAN','COMPUTER SYSTEMS ANAL',96401,37270,3),
(75900,'VIRGE','GOODRUM','INFORMATION SYSTEM MANAGER',54578,37270,3),
(76196,'MIRILLA','JANOWSKI','COST ACCOUNTANT',119241,37270,3),
(80529,'LYNDE','ARONSON','JUNIOR EXECUTIVE',77182,37270,4),
(80679,'MILDRID','SOKALE','GEOLOGIST II',67987,37270,4);

SELECT EMPLOYEE_ID,FIRST_NAME,SALARY,
CASE
	WHEN SALARY > 50000 THEN 'SUPERIOR'
    ELSE 'NOT SUPERIOR'
END AS POSITIONS
FROM RANKING;

SELECT EMPLOYEE_ID,FIRST_NAME,SALARY,
CASE
	WHEN SALARY >= 50000 THEN 'Dignified People'
    ELSE 'lack of Appraisal'
END AS SALARYTEXT
FROM RANKING;


-- Q2
SELECT FIRST_NAME,OFFICE_ID,SALARY
FROM RANKING
ORDER BY 
CASE OFFICE_ID
	WHEN '1' THEN  SALARY END DESC,
CASE 
    WHEN '2'  THEN SALARY END;
    
-- CASE HOLD
SELECT 
CASE
	WHEN SALARY >=80000 AND SALARY <= 100000 THEN 'MID-LEVEL'
    WHEN SALARY >= 50000 AND SALARY <80000 THEN 'EXECUTIVE LEVEL'
    ELSE 'SENIOR LEVEL'
END AS DESIGNATION,
MAX(SALARY) AS MAXIMUMSALARY,
MIN(SALARY) AS MAXIMUMSALARY
FROM RANKING
GROUP BY 
CASE
	WHEN SALARY >=80000 AND SALARY <= 100000 THEN 'MID-LEVEL'
    WHEN SALARY >= 50000 AND SALARY <80000 THEN 'EXECUTIVE LEVEL'
    ELSE 'SENIOR LEVEL'
END;


CREATE TABLE COUNTRIES1(
OFFICE_ID INT PRIMARY KEY,
ADDRESS VARCHAR(40),
CITY VARCHAR(20),
STATE VARCHAR(20)
);

INSERT INTO COUNTRIES1 (OFFICE_ID,ADDRESS,CITY,STATE)
VALUES (1,'03 REINKE TRAIL','CINCINNATI','OH'),
(2,'5507 BECKER TERRACE','NEW YORK CITY','NY'),
(3,'54 NORTHLAND COURT','RICHMOND','VA'),
(4,'08 SOUTH CROSSING','CINCINNATI','OH'),
(5,'553 MAPLE DRIVE','MINNEAPOLIS','MN'),
(6,'23 NORTH PLAZA','AURORA','CO'),
(7,'9658 WAYRIDGE COURT','BOISE','ID'),
(8,'9 GRAUHAWK TRAIL','NEW YORK CITY','NY'),
(9,' 16862 WESTEND HILL', 'KNOXVILLE','TN'),
(10,'4 BLUSTEM PARKWAY','SAVANNAH','GA');

UPDATE COUNTRIES1
SET STATE = CASE STATE
	WHEN 'OH' THEN 'IN'
    WHEN 'NY' THEN 'TK'
    ELSE 'TX'
    END;
    
SELECT * FROM COUNTRIES1;

DROP TABLE POPULATION_1;
CREATE TABLE POPULATION_1(
CITY VARCHAR(20),
POPULATION VARCHAR(20),
LEVEL VARCHAR(20)
);

INSERT INTO POPULATION_1(CITY,POPULATION,LEVEL)
VALUES ('SANTA BARBARA',88000,'LOW'),
('BROOKLYN',2533862,'HIGH'),
('QUEENS',2271000,'HIGH'),
('NEW YORK',8468000,'HIGH'),
('OAKLAND',433800,'LOW'),
('SUNNYVALE',152300,'LOW'),
('AN DIEGO',1382000,'MEDIUM'),
('SAN FRANSCISCO',815200,'MEDIUM'),
('LONG BEACH',456000,'LOW'),
('BUFFALO',276800,'LOW');

SELECT 
CASE 
	WHEN POPULATION < 500000 THEN 'LOW'
    WHEN POPULATION >= 500000 AND POPULATION < 1500000 THEN 'MEDIUM'
    WHEN POPULATION > 1500000 THEN 'HIGH'
    ELSE 'NONE'
END AS POPULATION_LEVEL,
AVG(POPULATION) AS AVERAGE_POPULATION
FROM POPULATION_1
GROUP BY
CASE 
	WHEN POPULATION < 500000 THEN 'LOW'
    WHEN POPULATION >= 500000 AND POPULATION < 1500000 THEN 'MEDIUM'
    WHEN POPULATION > 1500000 THEN 'HIGH'
    ELSE 'NONE'
END;

-- FASHION
DESC FASHION;

DROP TABLE FASHION;

CREATE TABLE FASHION(
SKU BIGINT,
DESCRIPTIONS VARCHAR(255),
PRICE INT,
STATUS VARCHAR(20)
);


INSERT INTO FASHION(SKU,DESCRIPTIONS,PRICE,STATUS)
VALUES (978568952,'COWL NECK SWEATER',59,'IN_STOCK'),
(978548759,'EMBROIDERED NECK BLOUSE',49,'IN STOCK'),
(978125698,'NOTCHED COLLAR BUTTON DOWN BLAZER',79,' IN STOCK'),
(979156258,'OVERSIZED STRIPE SHIRT',29,'SALE'),
(979145875,'OLKA DOT MAXI DRESS',109,'BACK ORDERED'),
(978457852, 'RIB KNIT T SHIRT',19,'ALE'),
(97833562,'CROPPED DENIM JACKET',99,'BACK ORDERED'),
(978142154,'SLEEVELESS MIDI DRESS',59,'SALE'),
(978112546,'SCOOP NECK SWEATER',49,'IN STOCK');

select * from FASHION;

SELECT 
CASE 
	WHEN DESCRIPTIONS LIKE '%SWEATER%' OR DESCRIPTIONS LIKE '%BLAZER%' OR DESCRIPTIONS LIKE '%JACKET%' THEN 'OUTWEAR'
    WHEN DESCRIPTIONS LIKE '%DRESS%' OR DESCRIPTIONS LIKE '%JUMPSUITS%' THEN 'DRESSES'
    WHEN DESCRIPTIONS LIKE '%SHIRT%' OR DESCRIPTIONS LIKE '%BLOUSE%' THEN 'TOPS'
END AS PRODUCT_DETAILS
FROM FASHION;


--
SELECT 
CASE 
	WHEN DESCRIPTIONS LIKE '%SWEATER%' OR DESCRIPTIONS LIKE '%BLAZER%' OR DESCRIPTIONS LIKE '%JACKET%' THEN 'OUTWEAR'
    WHEN DESCRIPTIONS LIKE '%DRESS%' OR DESCRIPTIONS LIKE '%JUMPSUITS%' THEN 'DRESSES'
    WHEN DESCRIPTIONS LIKE '%SHIRT%' OR DESCRIPTIONS LIKE '%BLOUSE%' THEN 'TOPS'
END AS PRODUCT_DETAILS,
COUNT(DISTINCT DESCRIPTIONS) AS NUMBER_OF_PRODUCTS
FROM FASHION
GROUP BY 
CASE WHEN DESCRIPTIONS LIKE '%SWEATER%' 
	   OR DESCRIPTIONS LIKE '%BLAZER%' 
       OR DESCRIPTIONS LIKE '%JACKET%' THEN 'OUTWEAR'
    WHEN DESCRIPTIONS LIKE '%DRESS%' OR DESCRIPTIONS LIKE '%JUMPSUITS%' THEN 'DRESSES'
    WHEN DESCRIPTIONS LIKE '%SHIRT%' OR DESCRIPTIONS LIKE '%BLOUSE%' THEN 'TOPS'
    END;

-- Display Only Number of Products    
SELECT 
COUNT(DISTINCT DESCRIPTIONS) AS NUMBER_OF_PRODUCTS
FROM FASHION
GROUP BY 
CASE WHEN DESCRIPTIONS LIKE '%SWEATER%' 
	   OR DESCRIPTIONS LIKE '%BLAZER%' 
       OR DESCRIPTIONS LIKE '%JACKET%' THEN 'OUTWEAR'
    WHEN DESCRIPTIONS LIKE '%DRESS%' OR DESCRIPTIONS LIKE '%JUMPSUITS%' THEN 'DRESSES'
    WHEN DESCRIPTIONS LIKE '%SHIRT%' OR DESCRIPTIONS LIKE '%BLOUSE%' THEN 'TOPS'
    END;
    
    
    
-- QUESTION 
-- NEW TABLE

SELECT * FROM STUDENTS;

SELECT ID,NAME,SCORE,
CASE 
	WHEN SCORE >= 94 THEN 'A'
    WHEN SCORE >=90 AND SCORE <=93 THEN 'A-'
    WHEN SCORE >=87 AND SCORE <= 89 THEN 'B+'
    WHEN SCORE >=83 AND SCORE <=86 THEN 'B'
    WHEN SCORE>=80 AND SCORE <=82 THEN 'B-'
    WHEN SCORE >=77 AND SCORE <=79 THEN 'C+'
    WHEN SCORE >=73 AND SCORE <=76 THEN 'C'
    WHEN SCORE >=70 AND SCORE <=72 THEN 'C-'
    WHEN SCORE >=67 AND SCORE <=69 THEN 'D+'
    WHEN SCORE >=60 AND SCORE <=66 THEN 'D+'
    ELSE 'FAIL'
	END AS GRADE
FROM STUDENTS;

-- QUERY 2 
SELECT NAME,
CASE 
	WHEN SCORE >= 94 THEN 'A'
    WHEN SCORE >=90 AND SCORE <=93 THEN 'A-'
    WHEN SCORE >=87 AND SCORE <= 89 THEN 'B+'
    WHEN SCORE >=83 AND SCORE <=86 THEN 'B'
    WHEN SCORE>=80 AND SCORE <=82 THEN 'B-'
    WHEN SCORE >=77 AND SCORE <=79 THEN 'C+'
    WHEN SCORE >=73 AND SCORE <=76 THEN 'C'
    WHEN SCORE >=70 AND SCORE <=72 THEN 'C-'
    WHEN SCORE >=67 AND SCORE <=69 THEN 'D+'
    WHEN SCORE >=60 AND SCORE <=66 THEN 'D+'
    ELSE 'FAIL'
END AS GRADE
FROM STUDENTS
ORDER BY GRADE ASC;

-- Q3
SELECT 
CASE 
	WHEN SCORE >= 94 THEN 'A'
    WHEN SCORE >=90 AND SCORE <=93 THEN 'A-'
    WHEN SCORE >=87 AND SCORE <= 89 THEN 'B+'
    WHEN SCORE >=83 AND SCORE <=86 THEN 'B'
    WHEN SCORE>=80 AND SCORE <=82 THEN 'B-'
    WHEN SCORE >=77 AND SCORE <=79 THEN 'C+'
    WHEN SCORE >=73 AND SCORE <=76 THEN 'C'
    WHEN SCORE >=70 AND SCORE <=72 THEN 'C-'
    WHEN SCORE >=67 AND SCORE <=69 THEN 'D+'
    WHEN SCORE >=60 AND SCORE <=66 THEN 'D+'
    ELSE 'FAIL'
END AS GRADE,
COUNT(SCORE) AS NUMBER_OF_STUDENTS
FROM STUDENTS
GROUP BY GRADE
ORDER BY GRADE ;


-- Q4
SELECT 
CASE 
	WHEN SCORE >=60 AND SCORE <=100 THEN 'PASSED'
    ELSE 'FAIL'
END AS RESULT,
COUNT(SCORE) AS NUMBER_OF_STUDENTS
FROM STUDENTS
GROUP BY
CASE 
	WHEN SCORE >=60 AND SCORE <=100 THEN 'PASSED'
    ELSE 'FAIL'
END;


CREATE TABLE SALARY2(
EMPLOYEEID INT,
EMPLOYEENAME VARCHAR(20),
GENDER VARCHAR(10),
STATECODE VARCHAR(5),
SALARY INT);

INSERT INTO SALARY2(EMPLOYEEID,EMPLOYEENAME,GENDER,STATECODE,SALARY)
VALUES (201,'JEROME','M','FL',830000.00),
(202,'RAY','M','AL',88000.00),
(203,'STELLA','F','AL',76000.00),
(204,'GILBERT','M','AR',42000.00),
(205,'EDWARD','M','FL',93000.00),
(206,'ERNEST','F','AL',64000.00),
(207,'JORGE','F','IN',75000.00),
(208,'NICHOLAS','F','GE',71000.00),
(209,'LAWRENCE','M','IN',95000.00),
(210,'SALVADOR','M','CO',75000.00);


-- COMPOUND SEARCHES

CREATE TABLE COMPOUND(
ROLL_NO INT,
NAME VARCHAR(20),
ADDRESS VARCHAR(30),
PHONE VARCHAR(30),
AGE INT);

INSERT INTO COMPOUND (ROLL_NO,NAME,ADDRESS,PHONE,AGE)
VALUES (1,'RAM','DELHI','XXXXXXXXXX',18),
(2,'RAMESH','GURGAON','XXXXXXXXXX',18),
(3,'SUJIT','ROHTAK','XXXXXXXXXX',20),
(4,'SURESH','DELHI','XXXXXXXXXX',18),
(3,'SUJIT','ROHTAK','XXXXXXXXXX',20),
(2,'RAMESH','GURGAON','XXXXXXXXXX',18);

SELECT NAME,AGE
FROM COMPOUND
WHERE AGE= 18 AND ADDRESS = 'DELHI';

SELECT * FROM COMPOUND
WHERE AGE = 18 AND NAME = 'RAM';

SELECT * FROM COMPOUND
WHERE NAME = 'RAM' OR NAME ='SUJITH';

SELECT * FROM COMPOUND
WHERE AGE = 18 AND (NAME ='RAM' OR NAME = 'SUJITH');

-- SAME QUESTION USING WILD CARD
SELECT NAME,AGE
FROM COMPOUND
WHERE AGE LIKE '%18%' AND ADDRESS LIKE '%DELHI%';

SELECT * FROM COMPOUND
WHERE AGE LIKE '%18%' AND NAME LIKE '%RAM%';

SELECT * FROM COMPOUND
WHERE NAME LIKE '%RAM%' OR NAME LIKE '%SUJITH%';

SELECT * FROM COMPOUND
WHERE AGE LIKE '%18%' AND (NAME LIKE '%RAM%' OR NAME LIKE '%SUJITH%');


-- New Question

CREATE TABLE fall_grades (
student_id int, 
first_name varchar(20),
last_name varchar(20), 
email_address varchar(30),
participation_grade int,
attendance_grade int,

midterm_deadline TIMESTAMP,
midterm_submitted TIMESTAMP,
midterm_grade decimal(4,1),
essay_deadline TIMESTAMP,
essay_submitted TIMESTAMP,
essay_grade decimal(4,1),
finalexam_deadline TIMESTAMP,
finalexam_submitted TIMESTAMP,
finalexam_grade decimal(4,1),
PRIMARY KEY (student_id)
);

INSERT INTO fall_grades
(student_id, first_name, last_name, email_address, participation_grade, attendance_grade, midterm_deadline, midterm_submitted, midterm_grade, essay_deadline, essay_submitted, essay_grade, finalexam_deadline, finalexam_submitted, finalexam_grade)
VALUES
(1, 'Arnold', 'Shortman', 'ashortman@ps118.com', 98, 90, '2022-10-16 12:00:00', '2022-10-16 06:30:00', 85.8, '2022-11-20 12:00:00', '2022-11-20 03:00:00', 90.1, '2022-12-11 12:00:00', '2022-12-11 03:00:00', 82.5),
(2, 'Helga', 'Pataki', 'hpataki@ps118.com', 85, 100, '2022-10-16 12:00:00', '2022-10-16 10:00:00', 88.4, '2022-11-20 12:00:00', '2022-11-21 03:15:00', 72.5, '2022-12-11 12:00:00', '2022-12-11 05:00:00', 90.0),
(3, 'Gerald', 'Johanssen', 'gjohanssen@ps118.com', 100, 95, '2022-10-16 12:00:00', '2022-10-16 02:00:00', 94.2, '2022-11-20 12:00:00', '2022-11-20 02:45:00', 95.8, '2022-12-11 12:00:00', '2022-12-11 11:00:00', 88.1),
(4, 'Phoebe', 'Heyerdahl', 'pheyerdahl@ps118.com', 100, 100, '2022-10-16 12:00:00', '2022-10-16 11:00:00', 98.8, '2022-11-20 12:00:00', '2022-11-20 11:15:00', 90.4, '2022-12-11 12:00:00', '2022-12-11 11:40:00', 100.0),
(5, 'Harold', 'Berman', 'hberman@ps118.com', 100, 75, '2022-10-16 12:00:00', '2022-10-16 08:00:00', 75.7, '2022-11-20 12:00:00', '2022-11-22 09:15:00', 67.5, '2022-12-11 12:00:00', '2022-12-11 09:15:00', 90.9),
(6, 'Eugene', 'Horowitz', 'ehorowitz@ps118.com', 100, 100, '2022-10-16 12:00:00', '2022-10-16 01:00:00', 100.0, '2022-11-20 12:00:00', '2022-11-20 01:22:00', 89.9, '2022-12-11 12:00:00', '2022-12-11 07:55:00', 98.2),
(7, 'Rhonda', 'Lloyd', 'rlloyd@ps118.com', 100, 80, '2022-10-16 12:00:00', '2022-10-16 06:00:00', 90.4, '2022-11-20 12:00:00', '2022-11-20 06:09:00',81.3, '2022-12-11 12:00:00', '2022-12-11 06:45:00', 95.5),
(8, 'Stinky', 'Peterson', 'speterson@ps118.com', 100, 85, '2022-10-16 12:00:00', '2022-10-16 03:00:00', 70.6, '2022-11-20 12:00:00', '2022-11-20 05:55:00', 93.1, '2022-12-11 12:00:00', '2022-12-11 10:11:00', 73.2);

SELECT * FROM fall_grades;


SELECT first_name,last_name,midterm_grade,essay_grade,finalexam_grade 
FROM fall_grades;

SELECT first_name,last_name,
CAST(midterm_grade AS CHAR(2)) AS MIDTERM,
CAST(essay_grade AS CHAR(2)) AS ESSAY,
CAST(finalexam_grade AS CHAR(2)) AS FINALEXAM
FROM fall_grades;

SELECT first_name,last_name,
CAST(midterm_submitted AS DATE) AS MIDTERM,
CAST(essay_submitted AS DATE) AS ESSAY,
CAST(finalexam_submitted AS DATE) AS FINALEXAM
FROM fall_grades;


-- CONCAT
SELECT CONCAT(first_name, ' ', last_name) AS NAMES FROM fall_grades;

SELECT CONCAT (first_name,' ',last_name, ' ',email_address, ' ',finalexam_grade, ' ',finalexam_submitted) AS INFO FROM fall_grades;

SELECT * FROM fall_grades;
-- 
SELECT CONCAT (first_name,' ',last_name, ' ',email_address, ' ', 
CAST(finalexam_grade AS CHAR(2)), ' ', 
CAST(finalexam_submitted AS DATE)) AS STUDENT_INFO
FROM fall_grades;

-- Fetch a Output; 

SELECT CONCAT (first_name,' ',last_name, ' ','can be contacted at',' ',email_address, ' ',' and received a grade of',' ',
CAST(finalexam_grade AS CHAR(2)), ' ', 'after submitting the final exam on',' ',
CAST(finalexam_submitted AS DATE)) AS STUDENT_INFO
FROM fall_grades;









-- QUESTION
SELECT * FROM CARCOLLECTION
ORDER BY MAKE,VALUE DESC;

DELIMITER //
CREATE PROCEDURE get_all_cars()
begin 
     select * from CARCOLLECTION order by make,value desc;
END //
DELIMITER ; 

CALL get_all_cars();


-- CREATING A STORED PROCEDURE WITH AN INPUT PARAMETER 
DELIMITER //
CREATE PROCEDURE get_all_cars_year(
			IN YEAR_FILTER INT 
)
begin 
     select * from CARCOLLECTION WHERE YEAR = YEAR_FILTER ORDER BY MAKE,VALUE DESC;
END //
DELIMITER ; 

CALL get_all_cars_year(2017);



DELIMITER //
CREATE PROCEDURE GET_ALL_CARS_VALUES(
				IN VALUES_FILTER INT
)
BEGIN
	SELECT * FROM CARCOLLECTION WHERE VALUE = VALUES_FILTER ORDER BY MAKE,VALUE DESC;
END //
DELIMITER ;

CALL GET_ALL_CARS_VALUES(169700);

-- NEW QUESTION
CREATE TABLE CUSTOMERS (
   ID INT NOT NULL,
   NAME VARCHAR (20) NOT NULL,
   AGE INT NOT NULL,
   ADDRESS CHAR (25),
   SALARY DECIMAL (18, 2),       
   PRIMARY KEY (ID)
);


INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY)
VALUES (1, 'Ramesh', 32, 'Ahmedabad', 2000.00 );

INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY)
VALUES (2, 'Khilan', 25, 'Delhi', 1500.00 );

INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY)
VALUES (3, 'kaushik', 23, 'Kota', 2000.00 );

INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY)
VALUES (4, 'Chaitali', 25, 'Mumbai', 6500.00 );

INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY)
VALUES (5, 'Hardik', 27, 'Bhopal', 8500.00 );

INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY)
VALUES (6, 'Komal', 22, 'MP', 4500.00 );

INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY)
VALUES (7, 'Muffy', 24, 'Indore', 10000.00 );



DELIMITER //
CREATE PROCEDURE CUSTOMER_AGE(
				IN AGE_FILTER INT
)
BEGIN
	 SELECT * FROM CUSTOMERS WHERE AGE = AGE_FILTER ORDER BY AGE,SALARY DESC;
END //
DELIMITER ;

CALL CUSTOMER_AGE(27);

DELIMITER //
CREATE PROCEDURE CUSTOMER_AGE(
				IN AGE_FILTER INT
)
BEGIN
	 SELECT * FROM CUSTOMERS WHERE AGE = AGE_FILTER ORDER BY AGE,SALARY DESC;
END //
DELIMITER ;


DELIMITER //
CREATE PROCEDURE CUSTOMER_AVERAGE(
				IN SALARY_FILTER INT
)
BEGIN
	 SELECT min(salary),max(salary),avg(salary) from CUSTOMERS WHERE SALARY = SALARY_FILTER GROUP BY SALARY;
END //
DELIMITER ;

call CUSTOMER_AGE();


CREATE DATABASE STUDENT;

USE STUDENT;


SHOW schemas;

-- TABLE NAME EMPLOYEE5
CREATE TABLE EMPLOYEE5(
ID INT,
NAME VARCHAR(20),
SALARY INT,
ROLE VARCHAR(20)
);

INSERT INTO EMPLOYEE5(ID,NAME,SALARY,ROLE)
VALUES (1,'AUGUSTINE HAMMOND',10000,'DEVELOPER'),
(2,'PERICE MUNDFORD',10000,'MANAGER'),
(3,'CASSY DELAFOY',30000,'DEVELOPER'),
(4,'GARWOOD SAFFEN',40000,'MANAGER'),
(5,'FAYDRA BEAVES',50000,'DEVELOPER');


-- TABLE NAME AWARDS 
CREATE TABLE AWARDS(
ID INT,
EMPLOYEE_ID INT,
AWARD_DATE DATE);

INSERT INTO AWARDS(ID,EMPLOYEE_ID,AWARD_DATE)
VALUES(1,1,'2022-04-01'),
(2,3,'2022-05-01');

DESC AWRADS;
SELECT * FROM EMPLOYEE5;
SELECT * FROM AWARDS;


SELECT ID,NAME FROM EMPLOYEE5
WHERE ID IN (SELECT ID FROM AWARDS);

-- SELECT THE EMPLOYEE WHO NEVER WON AN AWARD;
SELECT ID,NAME FROM EMPLOYEE5
WHERE ID NOT IN (SELECT ID FROM AWARDS);

-- Any All
-- SELECT ALL DEVELOPERS WHO CAN EARNS MORE THAN ALL THE MANAGERS;
SELECT * FROM EMPLOYEE5
WHERE ROLE = 'DEVELOPER' 
AND  
SALARY > all(SELECT SALARY WHERE ROLE = 'MANAGER');
select * from EMPLOYEE5;


-- SELECT ALL DEVELOPERS WHO EARNS MORE THAN ANY THE MANAGERS;

SELECT * FROM EMPLOYEE5
WHERE ROLE = 'DEVELOPER' 
AND  
SALARY > ANY (SELECT SALARY FROM EMPLOYEE5 WHERE ROLE = 'MANAGER'
);


-- SELECT ALL EMPLOYEES WHOSE SALARY IS ABOVE THE AVERAGE SALARY OF THE EMPLOYEE IN THE ROLE: 
SELECT * FROM EMPLOYEE5 as emp1
WHERE SALARY > (
            SELECT AVG(SALARY) 
            FROM EMPLOYEE5 as emp2
            where emp1.role = emp2.role
);

CREATE TABLE GOAL(
PLAYER_ID INT,
NAME VARCHAR(20),
COUNTRY VARCHAR(20),
GOALS INT);


INSERT INTO GOAL (PLAYER_ID,NAME,COUNTRY,GOALS)
VALUES (101,'SAM','USA',6),
(103,'DANIEL','ENGLAND',7),
(104,'ANTHONY','FRANCE',10),
(102,'BRUNO','SWEDEN',6),
(105,'ALEX','WALES',5),
(106,'MATT','SCOTLAND',3);

-- WITH PARAMETER;
DELIMITER //
CREATE PROCEDURE GET_GOALS(
						IN GOAL_FILTER int
)
BEGIN
	SELECT NAME,COUNTRY,GOALS FROM GOAL WHERE GOALS > GOAL_FILTER;
END //
DELIMITER ;

DROP PROCEDURE GET_GOALS; 

CALL GET_GOALS(6);
    
-- WITHOUT PARAMETER;
DELIMITER //
CREATE PROCEDURE GET_GOAL()
BEGIN
	SELECT NAME,COUNTRY,GOALS FROM GOAL WHERE GOALS > 6;
END //
DELIMITER ;

CALL GET_GOAL();


CREATE TABLE TABLE1(
ID INT,
NAME VARCHAR(20)
);

CREATE TABLE TABLE2(
ID INT,
NAME VARCHAR(20)
);

INSERT INTO TABLE1 (ID,NAME)
VALUES (1,'JACK'),
(2,'HARRY'),
(3,'JACKSON');

INSERT INTO TABLE2(ID,NAME)
VALUES (3,'JACKSON'),
(4,'STEPHAN'),
(5,'DAVID');

-- UNION MEANS MERGING TABLE AND REMOVING DUPLICATES
SELECT * FROM TABLE1
UNION
SELECT * FROM TABLE2;

-- UNION MEANS MERGING TABLE AND IT WILL SHOW ALL VALUES;
SELECT * FROM TABLE1
UNION ALL
SELECT * FROM TABLE2; 

-- INTERSECT MEANS ONLY COMMON VALUES:
SELECT * FROM TABLE1
INTERSECT
SELECT * FROM TABLE2;


-- PRIMARY KEY,FOREIGN KEY, UNIQUE
CREATE TABLE EMPLOYEE01(
ID INT ,
NAME VARCHAR(20) UNIQUE,
SALARY INT,
ROLE VARCHAR(20),
primary key(id)
);

INSERT INTO EMPLOYEE01(ID,NAME,SALARY,ROLE)
VALUES (1,'AUGUSTINE HAMMOND',10000,'DEVELOPER'),
(2,'PERICE MUNDFORD',10000,'MANAGER'),
(3,'CASSY DELAFOY',30000,'DEVELOPER'),
(4,'GARWOOD SAFFEN',40000,'MANAGER'),
(5,'FAYDRA BEAVES',50000,'DEVELOPER');

SELECT * FROM EMPLOYEE01;

-- FOREIGN KEY
CREATE TABLE AWARD01(
ID INT PRIMARY KEY,
EMPLOYEE_ID INT ,
AWARD_DATE DATE,
FOREIGN KEY(ID)
		REFERENCES EMPLOYEE01(ID)
);


INSERT INTO AWARD01(ID,EMPLOYEE_ID,AWARD_DATE)
VALUES(1,1,'2022-04-01'),
(2,3,'2022-05-01'); 

SELECT * FROM AWARD01;



-- cricket_1
 show tables;
-- churn_1
SELECT * FROM CRICKET_1;
SELECT * FROM CHURN_1;
SELECT * FROM CRICKET_2;
SELECT * FROM CRIC_COMBINED;

-- Q1. Find all the players who were present in the test match 1 as well as in the test match 2
select * from cricket_1
union all
select * from cricket_2;

/* # Q2. Write a query to extract the player details player_id, runs and 
# player_name from the table “cricket_1” who
# scored runs more than 50 */
SELECT * FROM CRICKET_1;

SELECT Player_Id,Player_Name,Runs
FROM CRICKET_1
WHERE
RUNS >50;

/* Q3. Write a query to extract all the columns from cricket_1 where player_name 
# starts with ‘y’ and ends with V */
SELECT Player_Id,Player_Name 
FROM CRICKET_1
WHERE Player_Name LIKE 'Y%V';


 /* Q4. Write a query to extract all the columns from cricket_1 where 
# player_name does not end with ‘t’ */

SELECT Player_Id,Player_Name 
FROM CRICKET_1
WHERE Player_Name NOT LIKE '%T';

/* Q5. Write a MySQL query to add a column PC_Ratio to the table that contains the divsion ratio 
# of popularity to charisma .(Hint :- Popularity divide by Charisma) */
SELECT * FROM CRIC_COMBINED;
DESC CRIC_COMBINED;

ALTER TABLE CRIC_COMBINED ADD COLUMN PC_Ratio FLOAT;
UPDATE CRIC_COMBINED SET PC_RATIO = POPULARITY / Charisma;

/* Q6 Write a MySQL query to find the top 5 players having the 
# highest popularity to charisma ratio. */
SELECT Player_Name,Popularity FROM CRIC_COMBINED
ORDER BY Popularity DESC
LIMIT 5;

/* Q7. Write a MySQL query to find the player_ID and 
# the name of the player that contains the character “D” in it. */
SELECT * FROM CRIC_COMBINED;

SELECT Player_Name FROM CRIC_COMBINED
WHERE Player_Name 
LIKE '%D%';

/* Q8. Extract Player_Id and PC_Ratio where the PC_Ratio is between 0.12 and 0.25. */

SELECT Player_Id, PC_Ratio 
FROM CRIC_COMBINED
WHERE PC_Ratio between 0.12 and 0.25;

/* Q9. Extract the Player_Id and Player_name of the players where the charisma value is null. */

SELECT Player_Id,Player_Name 
FROM CRIC_COMBINED
WHERE Charisma IS NULL;

/* Q10. Write a MySQL query to display all the NULL values in the column Charisma imputed with 0. */ 
SELECT * FROM CRIC_COMBINED;
-- PENDING

/* Q11. Separate all Player_Id into single numeric ids 
 (example PL1 to be converted as 1, PL2 as 2 , ... PL12 as 12 ). */ 
SELECT * FROM CRIC_COMBINED; 
SELECT Player_Id,SUBSTR(Player_Id,3) AS EXTRACT
FROM CRIC_COMBINED; 


/*  Q12. Write a MySQL query to extract Player_Id, 
# Player_Name and charisma where the charisma is greater than 25. */
SELECT * FROM CRIC_COMBINED; 

SELECT Player_Id,Player_Name
FROM CRIC_COMBINED
WHERE Charisma > 25;

-- Dataset Used: churn_1
/* Q13. Write a query to display the rounding of lowest integer value 
# of monthlyservicecharges and rounding of higher integer value of totalamount 
# for those paymentmethod is through Electronic check mode. */ 
-- PENDING

/* Q14. Rename the table churn1 to “Churn_Details”. */
RENAME TABLE churn_1 TO  Churn_Details ;
SELECT * FROM Churn_Details ;


/*  Q15. Write a query to create a display a column new_Amount 
that contains the sum of TotalAmount and MonthlyServiceCharges */ 

ALTER TABLE Churn_Details ADD COLUMN new_Amount REAL;

UPDATE Churn_Details SET new_Amount = MonthlyServiceCharges + TotalAmount;

/* Q16. Rename column new_Amount to Amount. */ 
alter table Churn_Details RENAME COLUMN new_Amount TO Amount;
SELECT * FROM Churn_Details ;

/* Q17. Drop the column “Amount” from the table “Churn_Details”. */ 

 /* Q18. Write a query to extract the customerID, InternetConnection and gender 
# from the table “Churn_Details ” where the value of the column “InternetConnection” has ‘i’ 
# at the second position. */
SELECT * FROM Churn_Details ; 
SELECT customerID, InternetConnection, gender FROM Churn_Details 
WHERE InternetConnection LIKE '_I%';

/*  Q19. Find the records where the tenure is 6x, where x is any number. */
SELECT * FROM Churn_Details ;

SELECT tenure FROM Churn_Details
WHERE tenure LIKE '%6_';



/* Q20. Write a query to display the player names in capital 
# letter and arrange in alphabatical order along with the charisma, display 0 for whom the charisma value is NULL */ 

SHOW TABLES ;
SELECT UPPER(PLAYER_NAME) AS UPPER_NAME,
IFNULL (CHARISMA, 0) AS IMPUTED_NILL
FROM new_cricket
ORDER BY Player_Name;

-- BANKING SUM
CREATE TABLE BANK_INVENTORY_PRICING ( 
PRODUCT CHAR(15), 
QUANTITY INT, 
PRICE REAL,
PURCHASE_COST DECIMAL(6,2), 
ESTIMATED_SALE_PRICE FLOAT,
MONTH INT) ;

-- STEP2: 
-- INSERT RECORDS FOR ABOVE 
INSERT INTO BANK_INVENTORY_PRICING (PRODUCT,QUANTITY,PRICE,PURCHASE_COST,ESTIMATED_SALE_PRICE, MONTH)
VALUES ( 'PAYCARD' , 2 , 300.45, 8000.87, 9000.56, 1 ),
('PAYCARD' , 2 , 800.45, 5000.80, 8700.56, 1 ),
('PAYCARD' , 2 , 500.45, 6000.47, 7400.56, 1 ),
('PAYPOINTS' , 4 , 390.87, 7000.67, 6700.56, 2),
('SMARTPAY' , 5 , 290.69, 5600.77, 3200.12 , 1),
( 'MAXGAIN', 3 , NULL, 4600.67, 3233.11 , 1 ),
( 'MAXGAIN', 6 , 220.39, 4690.67, NULL , 2 ),
( 'SUPERSAVE', 7 , 290.30, NULL, 3200.13 ,1 ),
('SUPERSAVE', 6 , 560.30, NULL, 4200.13 ,1 ),
('SUPERSAVE', 6 , NULL, 2600.77, 3200.13 ,2 ),
('SUPERSAVE', 9 , NULL, 5400.71, 9200.13 ,3 ),
('SMARTSAV', 3 , 250.89, 5900.97, NULL ,1 ),
('SMARTSAV', 3 , 250.89, 5900.97, 8999.34 ,1 ),
('SMARTSAV', 3 , 250.89, NULL , 5610.82 , 2 ),
('EASYCASH', 3 , 250.89, NULL, 5610.82 ,1 ),
('EASYCASH', 3 , 250.89, NULL, 5610.82 , 2 ),
('EASYCASH', 3 , 250.89, NULL, 5610.82 , 3 ),
('BUSICARD' , 1, 3000.99 , NULL, 3500, 3),
('BUSICARD' , 1, 4000.99 , NULL, 3500, 2);


Create table Bank_branch_PL
(Branch varchar(15),
 Banker Int,
 Product varchar(15) ,
 Cost Int,
 revenue Int,
 Estimated_profit Int, 
 month Int);
 
Insert into Bank_branch_PL values ( 'Delhi', 99101, 'SuperSave', 30060070, 50060070, 20050070, 1 ) ;
Insert into Bank_branch_PL values ( 'Delhi', 99101, 'SmartSav', 45060070, 57060070, 30050070, 2) ;
Insert into Bank_branch_PL values ( 'Delhi', 99101, 'EasyCash', 66660070, 50090090, 10050077, 3) ;
Insert into Bank_branch_PL values ( 'Hyd', 99101, 'SmartSav', 66660070, 79090090, 10050077, 3) ;
Insert into Bank_branch_PL values ( 'Banglr', 77301, 'EasyCash', 55560070, 61090090, 9950077, 3) ;
Insert into Bank_branch_PL values ( 'Banglr', 77301, 'SmartSav', 54460090, 53090080, 19950077, 3) ;
Insert into Bank_branch_PL values ( 'Hyd', 77301, 'SmartSav', 53060090, 63090080, 29950077, 3) ;
Insert into Bank_branch_PL values ( 'Hyd', 88201, 'BusiCard', 40030070, 60070080, 10050070,1) ;
Insert into Bank_branch_PL values ( 'Hyd', 88201, 'BusiCard', 70030070, 60070080, 25060070,1) ;
Insert into Bank_branch_PL values ( 'Hyd', 88201, 'SmartSav', 40054070, 60070080, 20050070, 2) ;
Insert into Bank_branch_PL values ( 'Banglr', 99101, 'SmartSav', 88660070, 79090090, 10050077, 3) ; 

SELECT * FROM Bank_branch_PL;
SELECT * FROM BANK_INVENTORY_PRICING;


-- QUESTION 1
-- 1) For every branch find the sum of calculated profit after ignoring the loss. 
SELECT revenue - Cost AS CALCULATED_PROFIT,sum(CALCULATED_PROFIT) as Summation
FROM Bank_branch_PL
group by CALCULATED_PROFIT;


-- QUESTION 2
-- 2) Find the average Estimated_ sale_price for each product 
SELECT PRODUCT,AVG(ESTIMATED_SALE_PRICE) 
FROM BANK_INVENTORY_PRICING
GROUP BY PRODUCT;

-- QUESTION 6 
-- 6) Display the products and month where the total Quantity in Bank Inventory was more than 6.
SELECT PRODUCT, QUANTITY, MONTH
FROM BANK_INVENTORY_PRICING
WHERE QUANTITY > 6 ;

-- QUESTION 7 
--  7) IF Real profit is calculated as : Real Profit = revenue - cost 
-- # Find the branches for which branch level real profit is more than the estimated_profit.
SELECT * FROM Bank_branch_PL;
SELECT * FROM BANK_INVENTORY_PRICING;

ALTER TABLE Bank_branch_PL ADD COLUMN Real_Profit BIGINT;
UPDATE Bank_branch_PL
SET Real_Profit = revenue + Cost;

-- DROPPING COLUMN
ALTER TABLE Bank_branch_PL
DROP COLUMN Real_Profit;

-- Real profit is more than the estimated_profit
SELECT Branch,Estimated_profit,Real_Profit
FROM Bank_branch_PL
WHERE Real_Profit > Estimated_profit;



CREATE TABLE ANIMAL(
ID INT,
NAME VARCHAR(20),
WEIGHT INT);

INSERT INTO ANIMAL (ID,NAME,WEIGHT)
VALUES (1,'TIGER',120),
(2,'AFRICAN ELEPHANT',4800),
(3,'LION',175),
(4,'KOALA',9),
(5,'GIRAFFE',800),
(6,'GAUR',NULL),
(7,'OKAPI',225);

SELECT * FROM ANIMAL;

SELECT NAME,
CASE
	WHEN NAME='TIGER' THEN 1
    WHEN NAME='AFRICAN ELEPHANT' THEN 1
    WHEN NAME='LION'THEN 1
    WHEN NAME='KOALA'THEN NULL
    WHEN NAME='GIRAFFE'THEN 2 
    WHEN NAME='GAUR'THEN 1
    WHEN NAME='OKAPI'THEN 0
    ELSE 'NONE'
END AS ZOO,
CASE
	WHEN NAME='TIGER' THEN 'BROOKFIELD ZOO'
    WHEN NAME='AFRICAN ELEPHANT' THEN 'BROOKFIELD ZOO'
    WHEN NAME='LION'THEN 'BROOKFIELD ZOO'
    WHEN NAME='KOALA'THEN 'UNKNOWN'
    WHEN NAME='GIRAFFE'THEN 'DUBLIN ZOO'
    WHEN NAME='GAUR'THEN 'BROOKFIELD ZOO'
    WHEN NAME='OKAPI'THEN 'UNKNOWN'
    ELSE 'NONE'
END AS 'CASE'
FROM ANIMAL;

ALTER TABLE ANIMAL ADD COLUMN NUMBER_OF_ANIMAL INT NOT NULL;
UPDATE ANIMAL 
SET NUMBER_OF_ANIMAL=3 WHERE ID = 1;
UPDATE ANIMAL 
SET NUMBER_OF_ANIMAL=5 WHERE ID = 2;
UPDATE ANIMAL 
SET NUMBER_OF_ANIMAL=1 WHERE ID = 3;
UPDATE ANIMAL 
SET NUMBER_OF_ANIMAL=2 WHERE ID = 4;
UPDATE ANIMAL 
SET NUMBER_OF_ANIMAL=5 WHERE ID = 5;
UPDATE ANIMAL 
SET NUMBER_OF_ANIMAL=2 WHERE ID = 6;
UPDATE ANIMAL 
SET NUMBER_OF_ANIMAL=5 WHERE ID = 7;


INSERT INTO ANIMAL(NUMBER_OF_ANIMAL)
VALUES (3),
(5),
(1),
(2),
(5),
(2),
(5);

SELECT NUMBER_OF_ANIMAL,
CASE
	WHEN NUMBER_OF_ANIMAL=3 THEN 'MIDDLE'
    WHEN NUMBER_OF_ANIMAL=5 THEN 'BIG'
    WHEN NUMBER_OF_ANIMAL=1 THEN 'OTHER'
    WHEN NUMBER_OF_ANIMAL=2 THEN 'SMALL'
    WHEN NUMBER_OF_ANIMAL=5 THEN 'OTHER'
    WHEN NUMBER_OF_ANIMAL=2 THEN 'OTHER'
    WHEN NUMBER_OF_ANIMAL=5 THEN 'OTHER'
    ELSE 'NONE'
END AS TOTAl_WEIGHT
FROM ANIMAL;

SELECT * FROM ANIMAL;


CREATE TABLE EMPLOYEE1(
ID INT,
NAME VARCHAR(20),
AGE INT,
ADDRESS VARCHAR(50),
SALARY REAL);

INSERT INTO EMPLOYEE1(ID,NAME,AGE,ADDRESS,SALARY)
VALUES (1,'RAMESH',32,'AHMEDABAD',2000.00),
(2,'KILAN',25,'DELHI',1500.00),
(3,'KAUSHIK',23,'KOTA',2000.00),
(4,'CHAITALI',25,'MUMBAI',6500.00),
(5,'HARDIK',27,'BHOPAL',8500.00),
(6,'KOMAL',22,'HYDERABAD',4500.00),
(7,'MUFFY',24,'INDORE',10000.00);

SELECT * FROM EMPLOYEE1;

-- OUTPUT 1 
SELECT NAME,AGE,
CASE
WHEN AGE=32 THEN 'GEN X'
WHEN AGE=25 THEN 'GEN Z'
WHEN AGE=23 THEN 'GEN Z'
WHEN AGE=25 THEN 'GEN Z'
WHEN AGE=27 THEN 'GEN Y'
WHEN AGE=22 THEN 'GEN ALPHA'
WHEN AGE=24 THEN 'GEN Z'
ELSE 'NONE'
END AS GENERATION
FROM EMPLOYEE1;

-- OUTPUT 2 
ALTER TABLE EMPLOYEE1 ADD COLUMN INCREMENT INT;

UPDATE EMPLOYEE1
SET INCREMENT =2500 WHERE AGE = 32;
UPDATE EMPLOYEE1 
SET INCREMENT =1875 WHERE ADDRESS = 'DELHI';
UPDATE EMPLOYEE1
SET INCREMENT =2500 WHERE AGE = 23;


-- OUTPUT 2
SELECT AGE,ADDRESS,SALARY,INCREMENT FROM EMPLOYEE1;

-- OUTPUT 3
SELECT ID,NAME,AGE,ADDRESS,SALARY FROM EMPLOYEE1
ORDER BY AGE DESC;


-- OUTPUT 4
SELECT 
CASE
WHEN SALARY <=5500 THEN 'LOWEST PAID'
WHEN SALARY > 5500 <=11000 THEN 'AVERAGE PAID'
ELSE 'HIGHEST PAID'
END AS SALARY_STATUS
CASE
SELECT ;


-- OUTPUT 5 
SELECT ID,NAME,AGE,ADDRESS,SALARY FROM EMPLOYEE1;

UPDATE EMPLOYEE1
SET SALARY  = CASE 
		WHEN ID =1 THEN SALARY=25000
        WHEN ID =2 THEN SALARY=17000
        WHEN ID =3 THEN SALARY=12000
		WHEN ID =4 THEN SALARY=17000
        WHEN ID =5 THEN SALARY=12000
        WHEN ID =6 THEN SALARY=12000
        WHEN ID =7 THEN SALARY=12000
        ELSE ID
END;

-- OUTPUT 6

SELECT NAME,ADDRESS,
CASE
	WHEN SALARY= 25000 THEN 'SENIOR DEVELOPER'
    WHEN SALARY =17000 THEN 'ASSOCIATE ENGINEER'
    ELSE 'INTERN'
END AS DESIGNATION
FROM EMPLOYEE1;

-- OUTPUT 7

SELECT ID,NAME,AGE,ADDRESS,SALARY FROM EMPLOYEE1;

UPDATE EMPLOYEE1
SET SALARY = 2000.00
WHERE ID=1;
UPDATE EMPLOYEE1
SET SALARY = 1500
WHERE ID=2;       
UPDATE EMPLOYEE1
SET SALARY = 2000
WHERE ID=3;       
UPDATE EMPLOYEE1
SET SALARY = 6500
WHERE ID=4;       
UPDATE EMPLOYEE1
SET SALARY = 8500
WHERE ID=5;       
UPDATE EMPLOYEE1
SET SALARY = 4500
WHERE ID=6;       
UPDATE EMPLOYEE1
SET SALARY = 10000
WHERE ID=7;       
UPDATE EMPLOYEE1
SET SALARY = 23000.00
WHERE ID=10;
INSERT INTO EMPLOYEE1(ID,NAME,AGE,ADDRESS,SALARY)
VALUES (10,'VIREN',28,'VARANASI',23000);


-- JOINS

CREATE TABLE Student (      
  id int PRIMARY KEY,     
  admission_no varchar(45) NOT NULL,  
  first_name varchar(45) NOT NULL,      
  last_name varchar(45) NOT NULL,  
  age int,  
  city varchar(25) NOT NULL      
);    
  
CREATE TABLE Fee(   
  admission_no varchar(45) NOT NULL,  
  course varchar(45) NOT NULL,      
  amount_paid int    
);

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


-- SQL With Pandas
CREATE TABLE EMPLOYEE7(
CUST_ID INT,
NAME VARCHAR(35)
);

INSERT INTO EMPLOYEE7(CUST_ID,NAME)
VALUES (1,'JOHN'),
(2,'DOE'),
(3,'WILLEY');

SELECT * FROM EMPLOYEE7;

-- seelcting single column:
SELECT CUST_ID FROM EMPLOYEE7;

-- selecting multiple columns
SELECT NAME, CUST_ID FROM EMPLOYEE7;

SELECT * FROM EMPLOYEE7
WHERE CUST_ID = 2;

# Top 1 row:
select * from EMPLOYEE7
limit 1;

-- CREATE A TABLE WITH 5 ROWS AND FIELD NAME ID,NAME
CREATE TABLE EMPLOYEE8(
ID INT,
NAME VARCHAR(35)
);

INSERT INTO EMPLOYEE8(ID,NAME)
VALUES (1,'KAVIN'),
(2,'NAVEEN'),
(2,'NAVEEN'),
(3,'RAJ'),
(4,'MOHAN');

SELECT * FROM EMPLOYEE8;

SELECT DISTINCT(ID)AS UNIQUEE FROM EMPLOYEE8;

SELECT COUNT(DISTINCT(ID))AS UNIQUEE FROM EMPLOYEE8;



