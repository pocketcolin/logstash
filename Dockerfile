FROM docker.elastic.co/logstash/logstash:8.6.2

RUN rm -f /usr/share/logstash/pipeline/default.conf

COPY pipeline/ /usr/share/logstash/pipeline/