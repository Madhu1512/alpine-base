FROM alpine:latest

# Update image and install base packages
RUN apk update && \
    apk upgrade && \
    apk add bash curl nodejs openssl && \
    rm -rf /var/cache/apk/*
