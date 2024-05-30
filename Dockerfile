
FROM ubuntu:22.04

RUN \
    apt-get update && \
    apt-get install -y wget build-essential git autoconf libtool

RUN mkdir -p /project/tools
COPY src /project/src
COPY inc /project/inc
COPY tests /project/tests
COPY Makefile /project/Makefile 
    
RUN cd /project/ && \
    wget https://github.com/cpputest/cpputest/releases/download/v4.0/cpputest-4.0.tar.gz && \
    tar xf cpputest-4.0.tar.gz && \
    mv cpputest-4.0/ tools/cpputest
RUN cd /project/tools/cpputest/ && autoreconf -i && ./configure && make   


    
ENTRYPOINT ["make", "-C", "/project/tests/calculator"]
