FROM debian:jessie

RUN apt-get update && apt-get install -y fcgiwrap curl && apt-get clean

WORKDIR /usr/src/myapp

CMD spawn-fcgi -p 9000 -n main
