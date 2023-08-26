#creation of database and using it
create database surya_db;
use surya_db;

#1.To list all the candidates who posses all the skills
#creating table and loading data into the table
create table my_table(id int,Technology varchar(30));
insert into my_table (id, Technology)
values(1,'Data Structures'),
      (1,'Tableau'),
      (1,'sql'),
      (2,'R'),
      (2,'powerbi'),
      (1,'python');

#Retrieving the data from the table
select *
from my_table
where Technology in ('Data Structures',
                     'Tableau',
                     'python',
                     'sql');
-------------------------------------------------------------------------------------------------------                     
#2. Query to return ids of product info that has 0 likes
#creating product info table and loading the data into table
create table product_info(product_id int,product_name varchar(30));
insert into product_info(product_id, product_name)
values(1001,'Blog'),
      (1002,'Youtube'),
      (1003,'Education');

#creating product info product info likes table and loading the data into table
create table product_info_likes(user_id int,product_id int,liked_date date);
insert into product_info_likes(user_id, product_id, liked_date)
values(1,1001,'2023-08-19'),
      (2,1003,'2023-08-18');

#Retrieving the data from the table  
SELECT *
FROM product_info
WHERE product_id NOT IN
    (SELECT DISTINCT product_id
     FROM product_info_likes);
--------------------------------------------------------------------------------------------------------     
