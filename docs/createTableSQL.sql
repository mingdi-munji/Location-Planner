CREATE database location_planner;
use location_planner;
create table user(id int primary key auto_increment, -- pk는 not null 기본
	user_name varchar(10),
    email varchar(30),
    password varchar(40),
    created_at timestamp);
create table location(id int primary key auto_increment,
user_id int,
name varchar(20),
foreign key (user_id) references user(id)) ;
create table todo(id int primary key auto_increment,
user_id int, 
location_id int, 
title varchar(20),
todo_date timestamp,
completed tinyint,
created_at timestamp,
foreign key (user_id) references user(id),
foreign key (location_id) references location(id));

drop table location,todo;