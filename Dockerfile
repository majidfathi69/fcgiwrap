FROM debian:jessie

RUN apt-get update && apt-get install -y fcgiwrap curl && apt-get clean
RUN mkdir /usr/src/myapp
RUN chmod -R 777 /usr/src/myapp

EXPOSE 9000

CMD spawn-fcgi -p 9000 -n /usr/src/myapp/main
