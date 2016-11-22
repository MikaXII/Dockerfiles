#!/bin/sh

if [ ! -f .stamp_installed ];then
  git clone $REPO_GIT /usr/src/app
#  echo "unset GIT_DIR && cd /usr/src/app && git pull" > .git/hooks/post-update
  bundle install
  touch .stamp_installed
fi
travis encrypt GITHUB_TOKEN=$GITHUB_TOKEN --add
jekyll s --watch --host 0.0.0.0
