FROM registry.access.redhat.com/ubi8/ubi-init:latest

RUN rpm -ivh https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm

RUN yum install -y python3-paho-mqtt log4cpp llvm-googletest zeromq \
  	&& yum clean all \
  	&& rm -rf /var/cache/yum