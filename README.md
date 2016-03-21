# formar

mysql.server stop
sudo mysqld_safe --skip-grant-tables
mysql -u root
update user set authentication_string=password('1111') where user='root';
FLUSH PRIVILEGES;
\q
