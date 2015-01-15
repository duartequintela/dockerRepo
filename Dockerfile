## trading standalone
FROM ubuntu:14.04

# install requirements
ENV DEBIAN_FRONTEND noninteractive

RUN \
    apt-get update && \
    apt-get install -y build-essential && \
    sudo docker run -i -t ubuntu /bin/bash