FROM debian
RUN apt-get update && apt-get install -y wget bzip2
RUN wget http://dl.4players.de/ts/releases/3.0.13.8/teamspeak3-server_linux_amd64-3.0.13.8.tar.bz2
RUN tar -xvjf teamspeak3-server_linux_amd64-3.0.13.8.tar.bz2
WORKDIR /teamspeak3-server_linux_amd64
ENTRYPOINT ["/bin/sh", "ts3server_minimal_runscript.sh"]

# docker run -p 9987:9987/udp image
