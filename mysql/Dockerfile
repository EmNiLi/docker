FROM emnili/base

MAINTAINER Günther Morhart

#
# Build variables
#
ARG DEBIAN_FRONTEND=noninteractive
ARG MY_ROOT=root

#
# Environment variables
#
ENV MY_ROOT=$MY_ROOT

#
# Setup
#
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        mysql-server && \
    apt-get autoremove --purge && \
    apt-get clean && \
    rm -rf \
        /var/lib/apt/lists/* \
        /var/lib/mysql && \
    mkdir -p \
        /var/lib/mysql \
        /run/mysqld && \
    chown mysql:mysql /run/mysqld

COPY my.cnf /etc/mysql/mysql.conf.d/zzzz-my.cnf

#
# Volumes
#
VOLUME ["/var/lib/mysql"]

#
# Ports
#
EXPOSE 3306

#
# Command
#
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
