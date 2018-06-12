FROM alpine:latest
MAINTAINER IPBurger <accounts@ipburger.com>

RUN apk add --no-cache mysql mysql-client

COPY bin/startup.sh /startup.sh
COPY conf/db.cnf /etc/mysql/db.cnf

WORKDIR /db
VOLUME /db
EXPOSE 3306
CMD ["/startup.sh"]
