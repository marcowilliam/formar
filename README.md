# formar<br/>

A collaborative work for a course at the University of Brasilia<br/><br/>

Changing root password for MySql on mac<br/>
$ mysql.server stop <br/>
$ mysqld_safe --skip-grant-tables <br/>
$ mysql -u root <br/>
$ update user set authentication_string=password('mysql') where user='root'; <br/>
$ FLUSH PRIVILEGES; <br/>
$ \q <br/><br/>

Command lines<br/>
http://www.newthinktank.com/2014/08/mysql-video-tutorial/
