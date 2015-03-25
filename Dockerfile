FROM ubuntu
RUN apt-get update
RUN apt-get -y install rsyslog
ADD ./logentries.conf /etc/rsyslog.d/logentries.conf
EXPOSE 514/tcp 514/udp
ENTRYPOINT ["/usr/sbin/rsyslogd"]
CMD ["-n"]
