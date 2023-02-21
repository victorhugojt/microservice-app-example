FROM golang:1.18.2-alpine3.16 AS BuildStage

WORKDIR /app

RUN go mod download

COPY *.go ./

RUN go build -o /auth main.go


FROM scratch

WORKDIR /

COPY --from=BuildStage /auth /auth

EXPOSE 8083

ENTRYPOINT [ "/auth" ]