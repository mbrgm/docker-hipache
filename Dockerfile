FROM ubuntu:14.04
MAINTAINER Marius Bergmann <marius@yeai.de>

# Install latest nodejs version and supervisord
RUN apt-get install -y software-properties-common \
    && apt-add-repository ppa:chris-lea/node.js \
    && apt-get update \
    && apt-get install -y nodejs

# Install hipache
RUN npm install -g hipache

# Add config templates
ADD assets/config/ /app/config/

# Add init script to container
ADD assets/init /app/init
RUN chmod 755 /app/init

# Expose ports
EXPOSE 80
EXPOSE 443

ENTRYPOINT ["/app/init"]
