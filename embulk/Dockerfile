FROM java:8-jre-alpine

RUN apk --no-cache add curl && \
    curl --create-dirs -o /embulk/bin/embulk -L "http://dl.embulk.org/embulk-latest.jar" && \
    chmod +x /embulk/bin/embulk && \
    apk del curl

COPY docker-entrypoint.sh /usr/local/bin

ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["/bin/sh", "/embulk/bin/embulk"]
