#!/bin/sh

ghost-download.sh
ghost-config.sh

cd blog && npm start --production
