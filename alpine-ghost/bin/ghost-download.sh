#!/bin/sh

if ! [[ -f .stampDownload ]]
then
  curl -LO https://github.com/TryGhost/Ghost/releases/download/$GHOST_VERSION/Ghost-$GHOST_VERSION.zip
  mkdir blog
  unzip Ghost-$GHOST_VERSION.zip -d blog
  cd blog && npm i --production #&& knex-migrator init
  touch ../.stampDownload
fi
