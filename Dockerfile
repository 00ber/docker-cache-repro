FROM golang:1.16-alpine

WORKDIR /app

COPY go.mod ./

COPY go.sum ./

RUN sleep 60; go mod download

COPY ./*.go ./

RUN go build -o /docker-gs-ping

CMD [ "/docker-gs-ping" ]

