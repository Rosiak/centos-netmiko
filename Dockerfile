#
# Centos Netmiko Dockerfile
#
# https://github.com/rosiak/centos-netmiko
#

# Pull basic Centos 7 image
FROM centos:7

# Creator
MAINTAINER "Søren Friis Rosiak" <sorenrosiak@gmail.com>

# Install prerequisites and Netmiko
RUN yum -y install epel-release;yum -y install gcc openssh-clients openssl-devel python-devel python-pip;yum -y update; yum clean all;pip install --upgrade pip;pip install netmiko;
