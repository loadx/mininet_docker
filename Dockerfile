FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y net-tools iputils-ping && \
    apt-get install -y mininet python-tk

COPY entry-point.sh /entry-point.sh
RUN chmod 755 /entry-point.sh

ENTRYPOINT ["/entry-point.sh"]
