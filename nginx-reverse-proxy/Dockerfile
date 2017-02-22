FROM nginx:1.10.3-alpine
MAINTAINER MikaXII <mikael.joubert@outlook.com>

ENV DOMAIN_NAMES "yourdomain.fr www.yourdomain.fr"
ENV BLOG_URL "www.yourdomain.fr"
ENV CERT_DIR "yourdomain-cert"
ENV BLOG_PORT 3456

COPY ./default.conf /etc/nginx/conf.d/default.template

CMD /bin/sh -c "envsubst '\$DOMAIN_NAMES \$BLOG_URL \$CERT_DIR \$BLOG_PORT' < /etc/nginx/conf.d/default.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"
