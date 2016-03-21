# formar<br/>

mysql.server stop <br/>
sudo mysqld_safe --skip-grant-tables <br/>
mysql -u root <br/>
update user set authentication_string=password('mysql') where user='root'; <br/>
FLUSH PRIVILEGES; <br/>
\q <br/><br/>

http://www.newthinktank.com/2014/08/mysql-video-tutorial/
