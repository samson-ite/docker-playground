FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y nodejs
RUN apt-get install -y npm
RUN npm install -g http-server

ADD index.html /usr/apps/hello-docker/index.html

WORKDIR /usr/apps/hello-docker/

CMD ["http-server", "-s"]

EXPOSE 8080
