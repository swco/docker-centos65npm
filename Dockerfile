FROM centos:centos6.6
MAINTAINER Liam Galvin

WORKDIR /srv

RUN yum install -y -q epel-release

# OS dependencies of phantomjs
RUN yum install -y fontconfig freetype libfreetype.so.6 libfontconfig.so.1 bzip2 tar

# NPM
RUN yum install -y npm

# Grunt (globally)
RUN npm install -g grunt-cli
