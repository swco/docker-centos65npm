FROM centos:centos6.6
MAINTAINER Liam Galvin

WORKDIR /srv

RUN yum -y update && yum clean all

RUN yum install -y -q epel-release && yum clean all

# OS dependencies of phantomjs
RUN yum install -y fontconfig freetype libfreetype.so.6 libfontconfig.so.1 bzip2 tar && yum clean all

# NPM
RUN yum install -y npm && yum clean all

# Grunt (globally)
RUN npm install -g grunt-cli