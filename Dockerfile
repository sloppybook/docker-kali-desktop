FROM kalilinux/kali-linux-docker:latest

RUN apt-get update && \
    apt-get upgrade && \
    apt-get dist-upgrade && \
    apt-get clean && \
    apt-get install -y kali-linux-top10 git vim curl build-essential wget