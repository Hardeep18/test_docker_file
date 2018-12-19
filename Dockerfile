FROM centos:latest
LABEL maintainer=hardeep.singh

RUN yum install -y httpd
RUN echo "Our Container Webssite" >> /var/www/html/index.html

EXPOSE 80

ENTRYPOINT apachectl -D FOREGROUND
