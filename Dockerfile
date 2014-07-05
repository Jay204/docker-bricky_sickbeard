FROM ubuntu:14.04

RUN apt-get -q update
RUN apt-get install -y python
RUN apt-get install -y git-core
RUN apt-get install -y python-cheetah
RUN apt-get install -y python-libtorrent

RUN git clone https://github.com/bricky/Sick-Beard.git /opt/sickbeard

WORKDIR /opt/sickbeard
EXPOSE 8081
ENTRYPOINT ["python", "SickBeard.py"]
