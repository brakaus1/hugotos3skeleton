FROM ubuntu:14.04.3 

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y python python-pip 
RUN pip install awscli
RUN mkdir /site
ADD . /src
WORKDIR /src
