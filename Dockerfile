FROM mysql:5.7

MAINTAINER TANGO Controls Team <tango@esrf.fr>

ENV MYSQL_DATABASE=tango
ENV MYSQL_USER=tango
ENV MYSQL_PASSWORD=tango

ADD dbinit/create_db.sql \
    dbinit/include/create_db_tables.sql \
    dbinit/include/stored_proc.sql \
    /docker-entrypoint-initdb.d/