# docker-skicka

# Intro
 1. dockerfile for skicka ( https://github.com/google/skicka )

# Usage
 1. -v ~:/root

 ```
 sudo docker run -it --rm -v ~:/root sahsu/docker-skicka init
 ```

 1. your skicka config will stored on your home directory and run 

 ```
 sudo docker run -it --rm -v ~:/root sahsu/docker-skicka {upload, download .... }
 ```

# skicka binary come from
 ```
 docker pull golang:1.3.3
 docker run -it --rm golang:1.3.3 bash
 CGO_ENABLED=0 go get -a -ldflags '-s' github.com/google/skicka
 docker cp /go/bin/skicka .
 ```
 ( and so on

