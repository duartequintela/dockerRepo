## trading standalone

FROM ubuntu:14.04
RUN apt-get update
RUN apt-get install -y wget git npm

# Install Node.js
RUN \
cd /tmp && \
wget http://nodejs.org/dist/v0.10.29/node-v0.10.29-linux-x64.tar.gz && \
tar xvzf node-v0.10.29-linux-x64.tar.gz && \
rm -f node-v0.10.29-linux-x64.tar.gz && \
cd node-v0.10.29-linux-x64 && \
echo -e '\n# Node.js\nexport PATH="/tmp/node-v0.10.29-linux-x64/bin:$PATH"' >> /root/.bashrc


RUN \
cd /home


CMD [ "bash" ]