FROM golang:1.7.3 as build

WORKDIR /src

COPY main.go .

RUN go build -o /main .


FROM scratch as bin

COPY --from=build main /

CMD ["/main"]