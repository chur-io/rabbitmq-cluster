FROM rabbitmq:3-management

COPY rabbitmq-cluster /usr/local/bin/
COPY pre-entrypoint.sh /

RUN chmod 755 /pre-entrypoint.sh
RUN chmod 755 /usr/local/bin/rabbitmq-cluster
RUN perl -pi -e 's/\r\n/\n/g' /pre-entrypoint.sh
RUN perl -pi -e 's/\r\n/\n/g' /usr/local/bin/rabbitmq-cluster

EXPOSE 5672 15672 25672 4369 9100 9101 9102 9103 9104 9105
ENTRYPOINT ["/pre-entrypoint.sh"]
CMD ["rabbitmq-cluster"]
