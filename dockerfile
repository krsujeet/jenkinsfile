FROM centos:latest
MAINTAINER krsujeet7631@gmail.com
RUN yum install -y httpd \
   zip 
  nunzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page281/cs.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip cs.zip
RUN cp -rvf cs/*
RUN rm -rf cs cs.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
