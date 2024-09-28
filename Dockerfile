FROM ubuntu:22.04

RUN apt-get clean
RUN apt-get update --fix-missing
RUN apt-get upgrade --fix-missing
RUN apt-get install --fix-missing

RUN apt-get install -y wget

RUN apt-get install -y python3

# Setup Git and clone Llama repo
RUN cd /home
RUN mkdir git

RUN apt-get install -y git
RUN git clone https://github.com/meta-llama/llama3.git

# create venv

RUN cd llama3
RUN apt-get install -y python3-setuptools
RUN apt-get install -y python3-pip
RUN pip install -e .
