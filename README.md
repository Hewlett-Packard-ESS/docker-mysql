# hpess/mysql
Builds on the hpess/base image by installing mysql (MariaDB) and adding it to the supervisord startup list

You can set the admin password using the environment variable MYSQL_PASS

## Use
```
docker run --name some-mysql -e MYSQL_PASS=yourpassword -d hpess/mysql
```
