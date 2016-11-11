FROM ruby:2.3.1-alpine
MAINTAINER MikaXII

ENV JEKYLL_ENV=production
ENV REPO_GIT

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

ADD ./start.sh /bin/start.sh

EXPOSE 4000

CMD ["start.sh"]
