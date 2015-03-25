FROM ubuntu
RUN apt-get update
RUN apt-get -y install rsyslog
ADD ./logentries.conf /etc/rsyslog.d/logentries.conf
