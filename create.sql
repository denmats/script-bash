/*create database mydb*/
create database mydb;

/*create tables users, posts, comment*/
create table users(id_user int auto_increment primary key,
	firstname varchar(20), surname varchar(20),
	email varchar(20));

create table posts(id_post int auto_increment primary key,
	id_user int, ptext text, pdate date);

create table comment(id_comment int auto_increment primary key,
	id_post int, id_user int, ctext varchar(255),
	cdate date);

/*load data from users.csv, posts.csv, comment.csv to tables*/
load data local infile 'users.csv' into table users
 fields terminated by ',' enclosed by ' '
 lines terminated by '\n'
 (id_user,firstname,surname,email);

load data local infile 'comment.csv' into table comment
 fields terminated by ',' enclosed by ' '
 lines terminated by '\n'
 (id_comment,id_post,id_user,ctext,cdate);

load data local infile 'posts.csv' into table
 posts fields terminated by ',' enclosed by ' '
 lines terminated by '\n' (id_post,id_user,ptext,pdate);

