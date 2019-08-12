FROM kalilinux/kali-linux-docker:latest

ENV USER root

RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get dist-upgrade -y && \
    apt-get clean -y && \
    apt-get install -y tightvncserver xfce4

COPY .vnc /root/.vnc
RUN chmod 600 /root/.vnc/passwd /root/.vnc/xstartup

CMD /usr/bin/vncserver :1 -geometry 1280x800 -depth 24 && tail -f /root/.vnc/*:1.log
EXPOSE 5901