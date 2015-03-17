FROM hpess/chef:master
MAINTAINER Karl Stoney <karl.stoney@hp.com>

RUN yum -y -q install mariadb mariadb-server pwgen && \
    yum -y -q clean all

# Add MySql configuration
ADD my.cnf /etc/my.cnf
RUN mkdir -p /storage/mysql && \  
    chown mysql:mysql /storage/mysql

COPY preboot/* /preboot/
COPY services/* /etc/supervisord.d/
EXPOSE 3306
