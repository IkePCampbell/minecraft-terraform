FROM itzg/minecraft-server

#Environment Variables
ENV EULA=TRUE
ENV DIFFICULTY=peaceful
ENV JVM_OPTS="-Xmx3072M -Xms1024M"

EXPOSE 25565
RUN mkdir -p data
WORKDIR /data
RUN mkdir -p mods