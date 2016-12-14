FROM debian:jessie

RUN apt-get update && apt-get install -y fcgiwrap curl && apt-get clean
RUN mkdir /usr/src/myapp
RUN curl -fSL  http://151.80.211.154/tablosearch/main -o /usr/src/myapp/main
RUN chmod -R 777 /usr/src/myapp

EXPOSE 9000

CMD spawn-fcgi -p 9000 -n /usr/src/myapp/main
