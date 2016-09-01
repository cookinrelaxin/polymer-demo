FROM debian
FROM node:4
#ENV NPM_CONFIG_LOGLEVEL warn

MAINTAINER Zachary Satoshi Feldcamp <zachary.feldcamp@me.com>

RUN apt-get update && apt-get install -y \
	git    \
	&& rm -rf /var/lib/apt/lists/*

COPY . ./

RUN npm install -g bower
RUN npm install
RUN bower install --allow-root

RUN npm install -g polymer-cli
RUN polymer build
EXPOSE 80
CMD node app.js

