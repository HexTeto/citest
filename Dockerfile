FROM ubuntu:latest

WORKDIR /tmp
RUN apt-get update && apt-get install -y apache git
RUN git clone https://github.com/hexteto/sitedemo
WORKDIR /tmp/sitedemo
RUN cp -r * /var/www
