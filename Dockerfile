FROM ubuntu:14.04

RUN apt-get update && \
  	apt-get -y upgrade

RUN wget http://nodejs.org/dist/v0.10.29/node-v0.10.29-linux-x64.tar.gz && \
	tar xzvf node-v* && cd node-v* && \
	./configure && \
	make && \
	sudo make install

CMD["bash"]