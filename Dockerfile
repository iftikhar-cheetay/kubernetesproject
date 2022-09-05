FROM centos: latest
MAINTAINER iftikar.ali@cheetay.pk
RUN yum install -y httpd \
	zip \
	unzip
ADD https://www.free-css.com/free-css-templates/page282/royal-cars.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip royal-cars.zip
RUN cp -rvf royal-cars/* .
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
