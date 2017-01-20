FROM alpine:latest

ENV MAVEN_HOME="/usr/share/maven" \
    JAVA_HOME="/usr/lib/jvm/default-jvm"

ENV PATH=${JAVA_HOME}/bin:${PATH}

# Update image and install base packages
RUN apk update && \
    apk upgrade && \
    apk add --no-cache bash curl openjdk8 openssl \
            zip ca-certificates nodejs \
            cmake go git mercurial tar python3 maven && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --upgrade pip setuptools && \
    rm -r /root/.cache && \
    rm -rf /var/cache/apk/*
