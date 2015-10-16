FROM scratch

MAINTAINER sahsu.mobi@gmail.com

ADD ./skicka /skicka

#RUN CGO_ENABLED=0 go get -a -ldflags '-s' github.com/google/skicka

CMD ["/skicka"]
