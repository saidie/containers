FROM java:8-alpine

ENV ZEPPELIN_VERSION 0.7.1
ENV ZEPPELIN_URL http://www.apache.org/dist/zeppelin/zeppelin-$ZEPPELIN_VERSION/zeppelin-$ZEPPELIN_VERSION-bin-netinst.tgz
ENV ZEPPELIN_PATH /usr/share/zeppelin

RUN set -x && \
    apk upgrade --update && \
    apk add bash curl tar && \
    curl -L $ZEPPELIN_URL -o /tmp/zeppelin.tgz && \
    mkdir $ZEPPELIN_PATH && \
    cd $ZEPPELIN_PATH && \
    tar xf /tmp/zeppelin.tgz --strip-components=1 && \
    $ZEPPELIN_PATH/bin/install-interpreter.sh -a

EXPOSE 8080 8081

CMD $ZEPPELIN_PATH/bin/zeppelin.sh
