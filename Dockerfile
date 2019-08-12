FROM kalilinux/kali-linux-docker:latest

ENV USER root

RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get dist-upgrade -y && \
    apt-get clean -y && \
    apt-get install -y tightvncserver xfce4
# x11vncいる？

# apt-get install -y kali-linux-top10 git vim curl build-essential wget 
# ADD .vnc /root/.vnc
# RUN chmod 600 /root/.vnc/passwd

# ADD startup.sh /startup.sh
# CMD /usr/bin/vncserver :1 &
# RUN chmod 0755 /startup.sh
# RUN ./startup.sh
# CMD vncserver :1 && tail
EXPOSE 5901