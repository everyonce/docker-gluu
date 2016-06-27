FROM ubuntu:14.04.2
RUN apt-get update
RUN apt-get install curl apt-transport-https -y
RUN echo "deb https://repo.gluu.org/ubuntu/ trusty main" > /etc/apt/sources.list.d/gluu-repo.list
RUN curl https://repo.gluu.org/ubuntu/gluu-apt.key | apt-key add -
RUN apt-get update && apt-get install gluu-server-2.4.3 -y
