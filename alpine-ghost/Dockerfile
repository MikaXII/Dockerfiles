FROM node:6.9-alpine

ENV GHOST_VERSION 0.11.4
ENV GHOST_URL "http://localhost" 
ENV GHOST_PORT 2368
ENV GHOST_IP "0.0.0.0"
ENV GHOST_SOURCE /usr/src/app
ENV GHOST_CONTENT $GHOST_SOURCE/content
ENV GHOST_DATA $GHOST_SOURCE/content/data

RUN apk add --update --no-cache zip curl gettext
RUN npm i -g knex-migrator
RUN adduser ghost -D -h /home/ghost -s /bin/sh
RUN mkdir -p $GHOST_SOURCE
RUN curl -LO https://github.com/TryGhost/Ghost/releases/download/$GHOST_VERSION/Ghost-$GHOST_VERSION.zip
RUN unzip Ghost-$GHOST_VERSION.zip -d $GHOST_SOURCE
RUN cd $GHOST_SOURCE && npm i --production
RUN mkdir -p $GHOST_CONTENT
RUN chown -R ghost:ghost $GHOST_CONTENT
#RUN ln -s $GHOST_SOURCE/content $GHOST_CONTENT/ 
VOLUME $GHOST_CONTENT
#VOLUME $GHOST_DATA
WORKDIR $GHOST_SOURCE
RUN tar czvf content.tar.gz content/*
ADD config.js.tpl ./
ADD entrypoint.sh /bin/
#RUN envsubst < config.js.tpl > config.js
EXPOSE 2368
ENTRYPOINT ["entrypoint.sh"]
CMD ["npm", "start", "--production"]
