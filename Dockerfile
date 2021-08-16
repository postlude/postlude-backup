FROM ubuntu:21.10

RUN apt-get update \
    && apt-get install -y mysql-client

COPY ./backup.sh /usr/src/backup.sh

RUN chmod 775 /usr/src/backup.sh

ENTRYPOINT ["/usr/src/backup.sh"]