FROM homeassistant/home-assistant:${INPUT_HABRANCH}

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]