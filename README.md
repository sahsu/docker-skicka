# docker-skicka

# Intro
 1. dockerfile for skicka ( https://github.com/google/skicka )

# Usage
 1. setup skicka usage first

 ```
 sudo docker run -it --rm -v $HOME:/root -e HOME=$HOME sahsu/docker-skicka /skicka init
 sudo docker run -it --rm -v $HOME:/root -e HOME=$HOME sahsu/docker-skicka /skicka -no-browser-auth ls
 ```
 1. copy that copy to your browser and choice what you google account want to connect your instance
 1. paste your verification code back to skicka
 1. do again ls will starting updating metadata cache

 ```
 sudo docker run -it --rm -v $HOME:/root -e HOME=$HOME sahsu/docker-skicka /skicka ls
 ```

 1. after metadata refreshed you can start usage skicka by

 ```
 sudo docker run --rm -v $HOME:/root -e HOME=$HOME sahsu/docker-skicka {upload, download .... }
 ```

# skicka binary come from
 ```
 docker pull golang:1.3.3
 docker run -it --rm golang:1.3.3 bash
 CGO_ENABLED=0 go get -a -ldflags '-s' github.com/google/skicka
 docker cp /go/bin/skicka .
 ```
 ( and so on )
