# boinc
FROM debian:testing

RUN apt update
RUN apt upgrade -y
RUN apt install boinc boinc-manager
RUN apt clean

USER boinc
ENV USER=boinc

COPY entry.sh /home/boinc/entry.sh

CMD ["/home/boinc/entry.sh"]
