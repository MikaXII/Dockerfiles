FROM node:6.9-alpine

ENV GHOST_VERSION 0.11.4
ENV GHOST_URL http://localhost 
ENV GHOST_PORT 2368
ENV GHOST_IP 0.0.0.0

RUN apk add --update --no-cache zip curl gettext
RUN npm i -g knex-migrator
RUN adduser ghost -D -h /home/ghost -s /bin/sh
ADD bin/* /bin/
USER ghost
WORKDIR /home/ghost
ADD config.js.tpl /home/ghost

EXPOSE 2368

CMD ghost-start.sh
