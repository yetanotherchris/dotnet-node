FROM ubuntu:latest
MAINTAINER Chris Small

RUN apt-get update
RUN apt-get install -y software-properties-common
RUN apt-get install -y wget
RUN wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
RUN dpkg -i packages-microsoft-prod.deb
RUN add-apt-repository universe
RUN apt-get update
RUN apt-get install -y apt-transport-https
RUN apt-get install -y dotnet-sdk-3.1
RUN apt-get install -y nodejs npm
RUN npm install -g yarn

CMD yarn --version && dotnet --version