FROM ubuntu:14.04
MAINTAINER duarte.quintela@tradingeconomics.com

# install requirements
ENV DEBIAN_FRONTEND noninteractive
RUN \
  apt-get update && \
  apt-get install -y g++ curl git htop man unzip make wget libssl-dev pkg-config npm ntp software-properties-common

RUN apt-get -y install build-essential python-setuptools && \
  rm -rf /var/lib/apt/lists/* && \
  easy_install supervisor

# Install Java.
RUN \
  echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  add-apt-repository -y ppa:webupd8team/java && \
  apt-get update && \
  apt-get install -y oracle-java7-installer && \
  rm -rf /var/lib/apt/lists/* && \
  rm -rf /var/cache/oracle-jdk7-installer

# Install Maven.
 RUN \
  apt-get update && \
  apt-get install -y maven

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-7-oracle

CMD ["/bin/bash"]