FROM alpine:3.16

RUN apk --no-cache --update add ca-certificates

COPY _output/main /boot

CMD ["/boot"]
