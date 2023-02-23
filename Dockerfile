FROM docker.elastic.co/logstash/logstash:8.6.2

RUN rm -f /usr/share/logstash/pipeline/default.conf
RUN rm -f /usr/share/logstash/config/logstash.yml

COPY pipeline/ /usr/share/logstash/pipeline/
COPY config/ /usr/share/logstash/config/
USER root
RUN chmod -R 664 /usr/share/logstash/config/
RUN chown -R logstash:root /usr/share/logstash/config/
RUN ls -l /usr/share/logstash/config
USER logstash