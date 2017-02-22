#!/bin/sh
# Copy content of content.tar.gz to volumes directory
tar xvzkf $GHOST_SOURCE/content.tar.gz -C $GHOST_SOURCE/
envsubst < config.js.tpl > config.js
chown -R ghost:ghost $GHOST_SOURCE
su ghost -c "npm start --production"
