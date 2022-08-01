FROM centos:latest
MAINTAINER krsujeet7631@gmail.com
RUN yum install -y httpd \
	zip \
	unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page281/limelight.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip limelight/*
RUN rm -rf limelight limelight.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
