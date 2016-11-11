FROM ruby:2.3.1
MAINTAINER MikaXII

ENV JEKYLL_ENV=production
ENV REPO_GIT=https://gitrepo

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

ADD ./start.sh /usr/bin/start.sh

EXPOSE 4000

CMD ["start.sh"]
