FROM registry.mgmt.iad3.catalyze.io:5000/catalyzeio/base
MAINTAINER Nicholas Mistry "nick@catalyze.io"

RUN mkdir /build
ADD ./stack/ /build
RUN LC_ALL=C DEBIAN_FRONTEND=noninteractive /build/prepare
RUN rm -rf /var/lib/apt/lists/*
RUN apt-get clean
