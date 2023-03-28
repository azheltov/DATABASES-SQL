https://www.udemy.com/course/introduction-to-databases-and-sql-querying/learn/lecture/3250990#overview

Microsoft SQL Server

CREATE      SQL
            SQL server installation
            create database mytestdb
            use mytestdb
           
            create table mytestdb
            (
            rollno int,
            firstname varchar(50)
            )
            use mytestdb
            select rollno, firtname, lastname from mytestable
            
            insert into mytesttaable(rollno, firstname, lastname)
            values(1, "John", "Doe")
            

-- ' '      for text

            -- show me all the department name who are a part of manufacturing
            select name, groupname from [hr].[department]
-- LIKE     
            where groupname like 'manufacturing'
            
            -- give me all the employees from the employee table
            slect * from [hr].[emplyee]
-- *            
            ----------
            select * from [hr].[emplyee] where orgranization level = 2
            select * from [hr].[emplyee] where orgranization level in (2,3)
            
-- %        
            select * from [hr].[emplyee] where jobtitle like "%Manager"
                                                            %Manager%
                                                            
            select * from [hr].[emplyee] where birthdate > '1/1/1980'
            
-- calculated colums
            select naem, listprice, listprice + 10 as adjucted_list_price from [].[]
            
--INTO
            select naem, listprice, listprice + 10 as adjucted_list_price into [productkion].[product2] from [production].[product1]
            
--#tmpname              temprary table exists only during the session


             delete from [].[] wehre name like 'brearding ball' 
             
 --UPDATE   
            update [].[]
            set name = 'blade_new'
            where name like 'blade'
            
--JOINS
            -- INNER (common rules)
            -- OUTER (no common rules)
            -- LEFT OUTER JOINS (all common rules of table 1 + table 2 existing rules + NULL (DATA + NULL)
            -- RIGHT OUTER JOINS (NULL + DATA)
            -- FULL OUTER JOIN (NULL + NULL)
            -- CROSS JOIN
            
            
            create table myemployee (id int, firstname varchar(20), lastname varchar(20))
            insert into myeployee values (1, 'asdfasdf', 'adsfasdf')
            select * from myemployee
            create tabe mysalary --do the same
            
            select * from myemployee
            select * from mysalary
            
            select * from myemployee a iner join mysalary b on a.id = b.id
            
            
            
            ---
            						
select * from player 			sql lite 	football data						
												
select 	*	from 	player	where	weight>199	
					weight	between
					is null	
				order by		
						
						
JIONS						
select	player 					
						
			inner join		on	
						
						
						
AGGREAGATE						
						


-- Show unique birth years from patients and order them by ascending.
select distinct year(birth_date) as year from patients order by year asc;

-- Show unique first names from the patients table which only occurs once in the list.
select distinct first_name from patients group by 1 HAVING COUNT(1)=1;

-- Show patient_id and first_name from patients where their first_name start and ends with 's' and is at least 6 characters long.
select patient_id, first_name from patients where length(first_name) >= 6 and first_name like 's%s';
-- or
SELECT
  patient_id,
  first_name
FROM patients
WHERE first_name LIKE 's____%s';

-- Show first name, last name, and gender of patients who's gender is 'M'
SELECT first_name, last_name, gender FROM patients where gender <>'F';

-- Show first name and last name of patients who does not have allergies. (null)
SELECT first_name, last_name FROM patients where allergies is NULL;

-- Show first name of patients that start with the letter 'C'
SELECT first_name FROM patients where first_name LIKE 'C%';

-- Show first name and last name of patients that weight within the range of 100 to 120 (inclusive)
SELECT first_name, last_name FROM patients where weight between 100 and 120;

-- Update the patients table for the allergies column. If the patient's allergies is null then replace it with 'NKA'
UPDATE patients
SET allergies = 'NKA'
WHERE allergies isNULL;

-- Show first name and last name concatinated into one column to show their full name.

SELECT concat (first_name, ' ', last_name) as full_name FROM patients;







--------
NOTES     - Advanced Databases and SQL Querying
--------
topics refreshed:
SQL Views
	create view myCustomView
	as
	select*from [].[].[]
	where contryRegioncode like 'US'
	
SQL Triggers
	insert | update | delete
	triggers folder
		--pecify values for template paramiters
	select * from [HR].[shift]
	create trigger Demo_Trigger
	on [HR].[shift]
	after insert
	as 
	begin
	print 'insert is not allowed. you need approval'
	rollaback transaction
	end
	go
	
	--test the trigger
	insert into [HR].[shift]
	(
		[name],
		[startTime],
		[endtime],
		[ModifiedDate])
		values
		{'JOHN',
		'07:00:00.00000',
		'8:00:00.00000',
		getdate()
	
	
	--database level trigger
	create trigger DB_Trigger
	on database
	after create_table
	as 
	begin
	print 'not allowed. you need approval'
	rollaback transaction
	end
	go
	--test the trigger	
	create table blablabla(col1 varchar(10))
	
	
SQL Computed Columns
	(formula) 	(([firstname]+' ')+[lastname])
