FROM ubuntu:18.04
LABEL maintainer="qiang@cpan.org"

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y -q --no-install-recommends \
        iproute2 \
        dnsutils \
        vim \
        curl \
        wget \
        ca-certificates \
        && rm -rf /var/lib/apt/lists/*
