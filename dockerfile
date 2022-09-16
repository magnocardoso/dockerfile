FROM ubuntu

RUN apt-get update && apt-get install -y git nano npm

WORKDIR /usr/share/myapp

RUN npm build

COPY ./requirements.txt requirements.txt

ADD ./files.tar.gz ./ 