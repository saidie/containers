FROM centos:7

ENV REDIS_GITHUB_URL https://github.com/antirez/redis

RUN yum -y update
RUN yum install -y git
RUN git clone "$REDIS_GITHUB_URL" /usr/src/redis
RUN cd /usr/src/redis && git checkout unstable
RUN yum install -y make
RUN yum install -y gcc
RUN make -C /usr/src/redis
RUN make -C /usr/src/redis install
