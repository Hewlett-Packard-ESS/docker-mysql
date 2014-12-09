FROM hpess/base:latest
MAINTAINER Karl Stoney <karl.stoney@hp.com>

RUN yum -y install mariadb mariadb-server pwgen && \
    yum -y clean all

# Add the runner script
ADD run.sh /usr/bin/run.sh
RUN chmod +x /usr/bin/run.sh

# Add the supervisor service definition
ADD mysql.service.conf /etc/supervisord.d/mysql.service.conf

# Add MySql configuration
ADD my.cnf /etc/my.cnf
RUN mkdir -p /storage/mysql && \  
    chown mysql:mysql /storage/mysql
ENV TERM dumb

CMD ["/usr/bin/run.sh"]
EXPOSE 3306
