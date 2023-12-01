FROM alpine:3.18.5

RUN apk --no-cache --update add ca-certificates

COPY _output/main /boot

CMD ["/boot"]
