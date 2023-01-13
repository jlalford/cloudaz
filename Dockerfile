FROM ubuntu:latest
ENV GOPATH=/root/go
ENV PATH=${PATH}:/root/go/bin
RUN apt update && \
    apt install -y golang \
                   ca-certificates \
                   git && \
    mkdir -p /root/go/bin && \
    go install -tags extended github.com/gohugoio/hugo@latest && \
    cp /root/go/bin/hugo /usr/local/bin
