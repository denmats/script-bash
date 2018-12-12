/*log in mysql*/
mysql -u root1 -p123<<EOF
/*create database mydb*/
create database if not exists mydb;
/*turn into mydb*/
use mydb;
/*create tables: users, posts, comment*/
create table if not exists users(id_user int auto_increment primary key,
	firstname varchar(20), surname varchar(20),
	email varchar(20));

create table if not exists posts(id_post int auto_increment primary key,
	id_user int, ptext text, pdate date);

create table if not exists comment(id_comment int auto_increment primary key,
	id_post int, id_user int, ctext varchar(255),
	cdate date);

/*download data to the created tables*/
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
EOF
