FROM centos:7

MAINTAINER Keichi Takahashi <keichi.t@me.com>

RUN yum -y update \
    && yum -y install make openmpi-devel \
    && yum clean all

ENV PATH $PATH:/usr/lib64/openmpi/bin
ENV LIBRARY_PATH $LIBRARY_PATH:/usr/lib64/openmpi/lib

