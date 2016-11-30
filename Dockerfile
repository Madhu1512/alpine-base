FROM alpine:latest

# Update image and install base packages
RUN apk update && \
    apk upgrade && \
    apk add bash curl openjdk8 openssl \
            unzip ca-certificates nodejs \
            cmake go git mercurial tar python3 && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --upgrade pip setuptools && \
    rm -r /root/.cache && \
    rm -rf /var/cache/apk/*
