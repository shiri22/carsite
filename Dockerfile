FROM centos:centos7
RUN yum update -y
RUN yum install httpd -y
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
COPY . /var/www/html
