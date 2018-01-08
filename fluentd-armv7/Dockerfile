FROM arm32v7/ruby:2.4-stretch

RUN gem install fluentd -v '~> 0.12.0' --no-ri --no-doc

RUN mkdir -p /fluentd/log /fluentd/etc /fluentd/plugins

COPY fluent.conf /fluentd/etc/

CMD fluentd -c /fluentd/etc/fluent.conf -p /fluentd/plugins
