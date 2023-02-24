FROM docker.elastic.co/logstash/logstash:8.6.2

USER logstash

RUN rm -f /usr/share/logstash/pipeline/logstash.conf
RUN rm -f /usr/share/logstash/config/logstash.yml
RUN rm -f /usr/share/logstash/config/logstash-sample.yml

COPY pipeline/ /usr/share/logstash/pipeline/
COPY config/ /usr/share/logstash/config/

USER root