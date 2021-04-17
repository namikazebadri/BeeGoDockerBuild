FROM golang:1.15.11-alpine3.13

ENV BEEGO_HOME=/app

RUN mkdir -p $BEEGO_HOME

WORKDIR $BEEGO_HOME

ADD . $BEEGO_HOME

RUN go build main.go

EXPOSE 8080

ENTRYPOINT ["./docker-entrypoint.sh"]