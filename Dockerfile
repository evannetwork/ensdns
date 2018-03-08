FROM golang:1.7.4

RUN mkdir -p /go/src/app
WORKDIR /go/src/app
RUN go get github.com/evannetwork/ensdns/cmd/ensdns && go install github.com/evannetwork/ensdns/cmd/ensdns
CMD ["ensdns"]
