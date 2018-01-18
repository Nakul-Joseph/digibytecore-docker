FROM ubuntu:16.04
MAINTAINER Nakul <nakul@hatio.in>

WORKDIR /root
RUN apt update
RUN apt-get install -y wget
RUN wget https://github.com/digibyte/digibyte/releases/download/v6.14.2/digibyte-6.14.2-x86_64-linux-gnu.tar.gz
RUN tar -zvxf digibyte-6.14.2-x86_64-linux-gnu.tar.gz
RUN ls
RUN mv digibyte-6.14.2 digibytecore
RUN cp digibytecore/bin/* /usr/local/bin

VOLUME ["/opt/digibytecore"]

EXPOSE 14022
EXPOSE 15022
EXPOSE 12024

CMD ["digibyted", "--conf=/opt/digibytecore/digibyte.conf", "--printtoconsole"]