FROM node:8-stretch
 # Install dependencies 
 RUN apt-get update \
    && apt-get -y install ffmpeg \
    && rm /var/lib/apt/lists/* -fR
# Add peertube user 
RUN groupadd -g 991 peertube \
    && useradd -u 991 -g peertube -m peertube
#FROM node:8-alpine

# Install dependencies
#RUN apk add --no-cache ffmpeg openssl bash \
#    && apk add --no-cache --repository https://dl-3.alpinelinux.org/alpine/edge/testing/ vips-dev fftw-dev

# Add peertube user
#RUN addgroup -g 991 peertube \
#    && adduser -D -u 991 -G peertube peertube

RUN mkdir /app \
    && chown peertube:peertube -R /app
# Install PeerTube
USER peertube
WORKDIR /app

# Configure PeerTube
ADD $ARTIFACTS_DIR/* ./
RUN mkdir config \
    && mv *.yaml config
ENV NODE_ENV production
ENV NODE_CONFIG_DIR /app/config

# Run the application
CMD ["npm", "start"]
VOLUME ["/data"]
EXPOSE 9000
