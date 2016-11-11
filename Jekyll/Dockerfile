FROM ruby:2.3.1
MAINTAINER MikaXII

ENV JEKYLL_ENV=production
ENV REPO_GIT=https://gitrepo

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app
RUN echo "unset GIT_DIR && cd /usr/src/app && git pull" > .git/hooks/post-update

ADD ./start.sh /usr/bin/start.sh

EXPOSE 4000

CMD ["start.sh"]
