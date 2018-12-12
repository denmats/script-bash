mysql -u root1 -p123<<EOF
use mydb;
/*All users*/
select * from users\G;
/*all comments for post id = 3*/
select * from comment where id_post = 3\G;
/*Posts from date "from" till "to"*/
select * from posts
 where pdate between ('2018-01-01') and ('2018-11-01')\G;
EOF


