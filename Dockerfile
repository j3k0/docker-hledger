FROM debian:jessie

MAINTAINER Jean-Christophe Hoelt <hoelt@fovea.cc>

RUN apt-get update && apt-get install -y \
      hledger \
      hledger-web \
      && rm -rf /var/lib/apt/lists/*

COPY data /data
VOLUME /data

EXPOSE 5000

COPY start.sh /start.sh

CMD ["/start.sh"]
