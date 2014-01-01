#Installation of g++4.8.1 which supports most features of C++11
FROM ubuntu
MAINTAINER Dhara Doshi dhara04@gmail.com

#Make sure we have add-apt-repository command
RUN apt-get install -y python-software-properties 

#Download the ppa tool-chain
RUN add-apt-repository ppa:ubuntu-toolchain-r/test:

RUN apt-get update

#install g++ & gcc (4.8.1)
RUN apt-get install -y gcc-4.8 g++-4.8 

#update the new gcc & g++ to be the defaults
RUN update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 50
RUN update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.8 50
