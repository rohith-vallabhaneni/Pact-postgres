FROM postgres

ENV POSTGRES_PASSWORD=Welcome1234

RUN apt-get update && apt-get install nginx curl -y

ADD entrypoint.sh /

ADD start.sh /

ADD container/default /etc/nginx/sites-enabled/default
 
RUN chmod 777 /entrypoint.sh

RUN chmod 777 /start.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["postgres"]
