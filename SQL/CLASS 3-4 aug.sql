create database jun_3;
create database employee;
use employee;
use jun_3;
create table employee(id int,emp_name varchar(10),
date_created varchar(10) , date_modified varchar(10));
create table student(student_name varchar(10),
time_created varchar(10),time_modified varchar(10));

create table employee_details(id int,emp_name varchar(10),emp_sal bigint,emp_loc varchar(1),
emp_designation varchar(10),emp_mng varchar(1));

create database xworkz;
use xworkz;
create table xworkz1(name varchar(10),id int ,dob varchar(10),date_joined varchar(10));
desc student;
select* from student;
alter table student add column email varchar(10);
alter table student add column branchs varchar(10),
add column yop varchar(1);
alter table student drop column yop ;
alter table student rename column email to yop;
alter table student;
desc student;
alter table student modify column yop decimal(7,4);
alter table employee_details modify column emp_sal int;
desc employee_details;
RENAME table student to student_details;
DROP DATABASE xworkz;
insert into employee_details values(46,"abc",400000,"r","manager","m");
insert into employee_details values(67,"gdhd",300000,"r","manager","m");
insert into employee_details values(67,"fjhgf",500000,"y","manager","m");
insert into employee_details(id,emp_name,emp_sal,emp_loc,emp_designation,emp_mng)
values(3,"fjhgf",500000,"y","manager","m");
desc employee_details;
select*from employee_details;
truncate table employee_details;
INSERT INTO employee_details values
(9,"fjhygf",580000,"g","manager","m"),
(6,"jvdjvjha",200000,"c","manager","w"),
(6,"jvdjvjha",209000,"c","manager","w");

-- //TASK//
create database task;
use task;

create table Spotify(userId int,userName varchar(20),email varchar(20),dob varchar(20),
gender varchar(20));
create table addhar(id int, name varchar(20),dob varchar(20),years int,
village varchar(20));

alter table Spotify add column age int,add column sign varchar(20),add column captcha varchar(20),
add column state varchar(20),add column country varchar(20);
alter table addhar add column district varchar(20),add column state varchar(20),add column country varchar(20),
add column email varchar(20),add column captcha varchar(20);

alter table Spotify drop column dob ,drop column gender;
alter table addhar drop column district,drop column state;

alter table Spotify rename column age to dob,rename column sign to gender,rename column captcha to pass;
alter table addhar rename column years to district,rename column captcha to state,rename column village to pass;
alter table addhar rename column pass to state,rename column state to pass;

alter table Spotify modify column userid bigint,modify column dob timestamp,modify column pass bigint;
alter table addhar modify column id bigint,modify column dob timestamp ,modify column pass bigint;

insert into Spotify values(667,"manasi","maa@gmail.com","2003-03-08","female","234567890","karnataka","india"),
(67,"anupama","anu@gmail.com","2002-09-06","female","9767890","karnataka","india"),
(67,"sambhram","sam@gmail.com","2008-09-04","male","2147890","karnataka","india");
desc Spotify;
select*from Spotify;
truncate table Spotify;
insert into Spotify values(68,"sunita","sunita@gmail.com","1990-12-08","female","890567890","uttarpradesh","india"),
(69,"mohan","moh@gmail.com","2001-04-05","male","97656790","tamilnadu","india"),
(70,"sanjana","sanju@gmail.com","2005-09-18","female","2964890","maharashtra","india"),
(71,"jeffin","jeff@gmail.com","2002-11-08","female","8866845","kerala","india"),
(72,"agnes","agnes@gmail.com","2000-08-06","female","9776445","tamilnadu","india"),
(73,"nandini","nand@gmail.com","2009-05-04","female","1234567","andhrapradesh","india"),
(74,"samarth","samubaby@gmail.com","2011-05-24","male","123984567","uttarchal","india");

insert into addhar values(1,"manasi","2003-03-08",10,"karnataka","india","maa@gmail.com","234567890"),
(2,"anupama","2002-09-06",9,"karnataka","india","anu@gmail.com","9767890"),
(3,"sambhram","2008-09-04",8,"karnataka","india","sam@gmail.com","2147890"),
(4,"sunita","1990-12-08",7,"uttarpradesh","india","sunita@gmail.com","890567890"),
(5,"mohan","2001-04-05",6,"tamilnadu","india","moh@gmail.com","97656790"),
(6,"sanjana","2005-09-18",5,"maharashtra","india","sanju@gmail.com","2964890"),
(7,"jeffin","2002-11-08",4,"kerala","india","jeff@gmail.com","8866845"),
(8,"agnes","2000-08-06",3,"tamilnadu","india","agnes@gmail.com","9776445"),
(9,"nandini","2009-05-04",2,"andhrapradesh","india","nand@gmail.com","1234567"),
(10,"samarth","2011-05-24",1,"uttarchal","india","samubaby@gmail.com","123984567");
select*from addhar;
-- //TASK//


SELECT* FROM Spotify WHERE userid = 74;
SELECT* FROM Spotify WHERE userName ="samarth";
SELECT* FROM Spotify WHERE userName ="samarth" AND gender = "female";
select*from Spotify where userName = "jeffin" or userName = "sanjana" or
 userName="manasi" or userName = "anupama";  (to avoid multiple or condition we use IN)
 IN:
select*from Spotify where userId in(67,68,69,"male");
select*from Spotify where userId NOT in(67,68,69,"male");
select * from Spotify where userid BETWEEN 67 and 70;
select * from Spotify where userid not BETWEEN 67 and 70;

SELECT UPPER(USERNAME) FROM SPOTIFY;
SELECT LOWER(USERNAME) FROM SPOTIFY;
SELECT CONCAT(userName,email,state) FROM SPOTIFY;
UPDATE Spotify set userName = "sun" where userid = 68;
select username from spotify where userid = 68;
update addhar set state = "goa" WHERE name = "mohan";
select *from addhar where district =7;
Delete from addhar where id = 9;
set sql_safe_updates = 0;
rollback;
use task;
select *from spotify where gender = "male";
-- NOT NULL-- 
create table hospital_info(id int NOT NULL, h_name varchar(20), h_loc varchar(20),ph_no bigint, h_department varchar(20));
select *from Hospital_info;
insert into hospital_info values(1,"apollo","ralajinagar",5765758778,"cardio");
insert into hospital_info values(1,"apollo","ralajinagar",5765758778,"cardio");
-- --unique--  
create table patient_details(id int not null ,p_name varchar(20) not null unique,age int , disease_name varchar(20));
desc patient_details;
insert into patient_details values(1,"apollo",45,"epilepsy");
insert into patient_details values(1,"apollo",30,"rabies");
-- check
create table doctor_details(id int not null unique,doctor_name varchar(20) unique,sal bigint,specialist varchar(20),
no_of_patients int,check(no_of_patients<50));
insert into doctor_details values(1,"suhas",70000,"drill",40);
insert into doctor_details values(1,"shantanu",75000,"toxic",60);
select * from doctor_details;
ALTER TABLE doctor_details ADD unique (id) ;
alter table doctor_details drop index id ;




-- -- task2-- 
-- create database task2;
-- use task2;
-- create table product_info(id int not null,product_name varchar(20) unique,product_type varchar(20),
-- price bigint,net varchar(20),exp_date varchar(20),mfg_date varchar(20),
-- check(product_name<16));
-- create table order_info(id int not null,owner_name varchar(20) unique,order_date varchar(20),
-- receive_date varchar(20),description_of_order varchar(20),qty int,payment_mode varchar(20),
-- check(id<16));
-- insert into product_info values(1, 'Laptop', 'Electronics', 799.99, 50,'2028-03-15' , '2024-01-15'),
-- (2, 'Smartphone', 'elec', 499.99, 100, 'GizmoInc', '2024-02-20'),
-- (4, 'Headphones', 'electronic', 79.99, 200, 'AudioMasters', '2024-04-05'),
-- (5, 'Smartwatch', 'Electronics', 149.99, 150, 'TimeTech', '2024-05-25'),
-- (6, 'Printer', 'Electronics', 129.99, 60, 'PrintIt', '2024-06-15'),
-- (7, 'Camera', 'Electronics', 899.99, 25, 'SnapShot', '2024-07-20'),
-- (8, 'Keyboard', 'Electronics', 49.99, 180, 'KeyTech', '2024-08-10'),
-- (9, 'Mouse', 'Electronics', 29.99, 300, 'MouseMakers', '2024-09-05'),(10, 'Monitor', 'Electronics', 199.99, 40, 'ViewTech', '2024-10-25'),
-- (11, 'Chair', 'Furniture', 89.99, 70, 'ComfortCorp', '2024-01-10'),
-- (12, 'Desk', 'Furniture', 199.99, 30, 'OfficeMakers', '2024-02-15'),
-- (13, 'Sofa', 'Furniture', 499.99, 10, 'RelaxCo', '2024-03-20'),
-- (14, 'Lamp', 'Furniture', 39.99, 120, 'BrightLights', '2024-04-25'),
-- (15, 'Bookshelf', 'Furniture', 149.99, 25, 'StoragePlus', '2024-05-30');

-- desc table product_info;

-- select*from product_info;

create database state;
use state;

create table state_info (id int not null,state_name varchar(20) unique,state_population bigint,
state_language varchar(20),no_of_dist int,capital_city varchar(20));
select *FROM state_info;
alter table state_info add column no_of_dist int;
ALTER TABLE state_info add constraint capital_city_uni unique(capital_city);
ALTER TABLE state_info add constraint state_language_uni unique(state_language);
desc state_info;

insert into state_info values (1,"karnataka",900000,"kannada","bengaluru","30"),
(2,"tamilnadu",9000,"tamil","chennai",20),
(3,"kerala",577777,"malyalam","thiruvanthapuram",26),
(4,"maharashtra",56546565,"marathi","mumbai",35),
(5,"goa",38888,"konkani","panaji",20),
(6,"telangana",787687,"telugu","hyderabad",30),
(7,"madhya pradesh",587870,"hindi","bhopal",29),
(8,"uttar pradesh",787777,"hjhkjh","delhi",56),
(9,"rajastan",585799,"rajastani","jaipur",45),
(10,"jammu",6878877,"urdu","srinagar",23);

alter table state_info drop index state_language_uni;
select *FROM state_info;
alter table state_info add constraint state_population_chk check(state_population >= 9000 and state_population <= 56546565);
alter table state_info add constraint no_of_dist_chk check(no_of_dist >=20  and no_of_dist <=56 );
alter table state_info add constraint id_chk check(id>=1 and id<=10);
desc state_info;
alter table state_info drop constraint id_chk;
alter table state_info drop constraint no_of_dist_chk;
desc state_info;
alter table state_info modify column capital_city varchar(20) after state_name ;
alter table state_info modify column capital_city varchar(20) after state_population ;
alter table state_info change column no_of_dist total_dist bigint;
alter table state_info add column country varchar(20) default "india";
update state_info set country ="bharath" where id =4;



