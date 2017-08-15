# A basic apache server. To use either add or bind mount content under /var/www
FROM ubuntu:12.04

MAINTAINER "stnavin@gmail.com": 0.1

RUN apt-get update && apt-get --no-install-recommends install -y apache2=2.2.22-1ubuntu1 && apt-get install apache2-utils && apt-get clean && rm -rf /var/lib/apt/lists/*

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

EXPOSE 80

CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]
