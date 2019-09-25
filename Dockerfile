FROM homeassistant/home-assistant:latest

RUN apk add --no-cache \
  git \
  && rm -rf /var/cache/apk/*

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
