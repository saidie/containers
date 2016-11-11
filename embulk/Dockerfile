FROM java:8-jre-alpine

RUN apk --no-cache add curl && \
    curl --create-dirs -o /embulk/bin/embulk -L "http://dl.embulk.org/embulk-latest.jar" && \
    chmod +x /embulk/bin/embulk && \
    apk del curl

COPY embulk /usr/local/bin

WORKDIR /embulk

CMD ["embulk"]
