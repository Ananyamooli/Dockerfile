FROM ubuntu:18.04
LABEL maintainer="anuazure15@gmail.com"
RUN apt-get update && apt-get -y install apache2
EXPOSE 80
ENTRYPOINT ["/usr/sbin/apachectl"]
CMD ["-D","FOREGROUND"]


COPY index.html /var/www/html/index.html
VOLUME /var/www/html
