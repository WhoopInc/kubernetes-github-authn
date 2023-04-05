FROM golang:1.20-alpine

WORKDIR /app

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY *.go ./

RUN go build -o output/main main.go

EXPOSE 3000

CMD [ "./output/main" ]
