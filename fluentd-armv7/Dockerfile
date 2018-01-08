FROM arm32v7/ruby:2.4-stretch

RUN gem install fluentd --no-ri --no-doc

RUN fluentd --setup

CMD fluentd
