FROM ubuntu:16.04

RUN apt-get update && apt-get install -y openssh-server
RUN mkdir /var/run/sshd
RUN echo 'root:ikepcampbell' | chpasswd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
#FROM itzg/minecraft-server

#MAINTAINER Isaac Campbell "isaacpcampbell98@gmail.com"

# Environment Variables
#ENV EULA=TRUE
#ENV MOTD="Welcome To the Greatest Place on Earth"
#ENV DIFFICULTY=peaceful
#ENV OPS=KingQ64
#ENV JVM_OPTS="-Xmx3072M -Xms1024M"

#EXPOSE 25565
#RUN mkdir -p data
#WORKDIR /data
#RUN mkdir -p mods
#ADD twilightforest-1.12.2-3.10.1013-universal.jar/ mods/