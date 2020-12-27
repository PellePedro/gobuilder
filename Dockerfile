FROM golang:1.15

RUN CGO_ENABLED=0 go get -tags netgo \
    -ldflags '-w -extldflags "-static"' \
    github.com/go-delve/delve/cmd/dlv

# /go/bin/dlv
