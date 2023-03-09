FROM golang:1.18.2-alpine3.16 AS BuildStage

WORKDIR /src/app

COPY *.go ./

ENV GO111MODULE=on
RUN go mod init github.com/bortizf/microservice-app-example/tree/master/auth-api
RUN go mod tidy
RUN go mod download
RUN go build -o server


FROM alpine

WORKDIR /root/

COPY --from=BuildStage /src/app ./app

EXPOSE 8000

CMD [ "./app/server" ]

# CMD [ "sleep", "20000" ]