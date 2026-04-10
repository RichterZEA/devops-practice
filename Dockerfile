FROM ubuntu:22.04

COPY monitoring.sh /scripts/monitoring.sh

RUN chmod +x /scripts/monitoring.sh

CMD ["/scripts/monitoring.sh"]
