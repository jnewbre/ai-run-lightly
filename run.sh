#! /bin/zsh

docker build --no-cache -t pydock .

docker run -name pydock-container -dit pydock:latest

RUN apt-get update &&  apt-get install -y python3-pip

RUN apt-get install -y python3-pip

RUN apt-get install -y git

RUN cd /home
RUN mkdir git
RUN git clone https://github.com/meta-llama/llama3.git

# create venv

RUN cd llama 3
RUN pip install -e .

RUN apt-get install -y wget