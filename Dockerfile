FROM homeassistant/home-assistant:latest

RUN apk add --no-cache \
  git \
  && rm -rf /var/cache/apk/*

RUN npm install -g awesome-lint

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
