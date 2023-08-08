FROM alpine:3.18.3

RUN apk --no-cache --update add ca-certificates

COPY _output/main /boot

CMD ["/boot"]
