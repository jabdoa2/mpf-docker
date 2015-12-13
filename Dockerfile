FROM ubuntu

RUN apt-get -y update
RUN apt-get -y install python python-yaml python-mock
#RUN apt-get -y install python python-all-dev python-pip libyaml-dev
#RUN pip install pyyaml
