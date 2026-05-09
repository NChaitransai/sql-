#creating new database
CREATE DATABASE school;
 use school;
 
 #creating  a table
 create table class9(student_id int, Name VARCHAR(40),age int,perctange float);
 
 select * from class9;
 #inserting  values into elements
 insert into class9(student_id,Name,age,perctange)
 values(101, "sai",21,97.3),(102,"chaitran",22,96.1),(103,"kaushik",20,95.0);
 
 
 select * from class9;
 
 