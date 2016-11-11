#!/bin/bash

if [ ! -f stamp_installed ];then
  git clone REPO_GIT /usr/src/app
  bundle install
fi

jekyll s --watch --host 0.0.0.0