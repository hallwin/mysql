FROM  centos:centos6

RUN yum install -y mysql-server mysql

RUN /etc/init.d/mysqld start &&\
    mysql -e "grant all privileges on *.* to 'root'@'%' identified by 'redhat';"&&\
    mysql -e "grant all privileges on *.* to 'root'@'localhost' identified by 'redhat';"&&\
    mysql -u root -predhat -e "show databases;"

EXPOSE 3306

CMD ["/usr/bin/mysqld_safe"]
