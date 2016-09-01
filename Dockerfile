FROM debian
MAINTAINER <Zachary Satoshi Feldcamp>

RUN apt-get update && apt-get install -y \
	npm \
	&& rm -rf /var/lib/apt/lists/*

COPY . ./

RUN npm install
RUN bower install

CMD node app.js

