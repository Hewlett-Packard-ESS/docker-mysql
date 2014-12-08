FROM hpess/base:latest
MAINTAINER Karl Stoney <karl.stoney@hp.com>

RUN yum -y install mysql mysql-server pwgen
RUN yum -y clean all

# Add Configuration
ADD my.cnf /etc/my.cnf

# Add the runner script
ADD run.sh /usr/bin/run.sh
RUN chmod +x /usr/bin/run.sh

# Add the service
ADD mysql.service.conf /etc/supervisord.d/mysql.service.conf

CMD ["/usr/bin/run.sh"]
EXPOSE 3306
