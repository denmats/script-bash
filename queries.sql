/*All user posts*/
select * from users;

/*Comments for post id=" "*/
select * from comment where id_post = 3;

/*Posts from date "from" till "to"*/
select * from posts where pdate beetwen '2018-07-10'
and '2018-12-14';
