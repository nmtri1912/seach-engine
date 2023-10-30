FROM golang:1.20-bullseye

COPY go.mod go.sum /go/src/github.com/nmtri1912/search-engine/
WORKDIR /go/src/github.com/nmtri1912/search-engine
RUN go mod download
COPY . /go/src/github.com/nmtri1912/search-engine
RUN go build -o /usr/bin/search-engine github.com/nmtri1912/search-engine/cmd/api

EXPOSE 8080 8080
ENTRYPOINT ["/usr/bin/search-engine"]
