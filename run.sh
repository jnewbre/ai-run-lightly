#! /bin/zsh

docker build --no-cache -t pydock .

docker run -name pydock-container -dit pydock:latest