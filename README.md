![MySQL](/mysql.png?raw=true "MySQL")

Builds on the [hpess/chef](https://github.com/Hewlett-Packard-ESS/docker-chef) image by installing MySQL (MariaDB) and adding it to the supervisord startup list

You can set the admin password using the environment variable MYSQL_PASS

## Use
```
docker run --name some-mysql -e MYSQL_PASS=yourpassword -d hpess/mysql
```
The container exposes port 3306, subsequently you can forward that port:
```
docker run --name some-mysql -e MYSQL_PASS=yourpassword -d -p 3306:3306 hpess/mysql
```
