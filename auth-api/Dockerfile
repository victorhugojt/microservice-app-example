FROM golang:1.18.2-alpine3.16 AS BuildStage

WORKDIR /app

COPY * ./

ENV GO111MODULE=on
RUN go mod init github.com/bortizf/microservice-app-example/tree/master/auth-api
RUN go mod tidy
RUN go build -o /auth


FROM scratch

WORKDIR /

COPY --from=BuildStage /auth /auth

EXPOSE 8083

ENTRYPOINT [ "/auth" ]