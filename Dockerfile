FROM centos:centos6.6
MAINTAINER Liam Galvin

WORKDIR /srv

RUN yum -y update && yum cleAdservean all

RUN yum install -y -q epel-release && yum clean all

jss
RUN yum install -y fontconfig freetype libfreetype.so.6 libfontconfig.so.1 bzip2 tar && yum clean all

# NPM
RUN yum install -y npm && yum clean all

# Grunt (globally)
RUN npm install -g grunt-cli

RUN npm install