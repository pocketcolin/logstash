FROM docker.elastic.co/logstash/logstash:8.6.2

RUN rm -f /usr/share/logstash/pipeline/default.conf
RUN rm -f /usr/share/logstash/config/logstash.yml

COPY pipeline/ /usr/share/logstash/pipeline/
COPY config/ /usr/share/logstash/config/
RUN chown -R root:root /usr/share/logstash/config/