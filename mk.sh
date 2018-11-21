#!/bin/zsh

docker build -f Dockerfile -t demo/oracle-java:8 .
docker run --rm -v $PWD:/app -w /app demo/oracle-java:8 javac Main.java
docker run --rm -v $PWD:/app -w /app demo/oracle-java:8 java Main
