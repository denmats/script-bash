#! /bin/sh
echo 'To manage mydb database you should log in'
echo 'enter name: '
read  name
echo 'enter password: '
read  pass
if [ $name = "root1" ] && [ $pass = 123 ]
then
./create.sql
else
 echo "not ok"
fi
