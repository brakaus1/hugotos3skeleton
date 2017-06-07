FROM ubuntu:14.04.3 

RUN apt-get update
RUN apt-get upgrade -y
RUN wget https://github.com/spf13/hugo/releases/download/v0.14/hugo_0.14_amd64.deb
RUN sudo dpkg -i hugo*.deb
RUN apt-get install -y python python-pip 
RUN pip install awscli
RUN mkdir /site
ADD . /src
WORKDIR /src
