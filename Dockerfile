FROM ubuntu:18.04

RUN apt-get update && apt-get install -y ca-certificates python python-pip git python3 python3-pip && rm -rf /var/lib/apt/lists/*

ARG BAZELSK_VERSION=1.7.4
ADD https://github.com/bazelbuild/bazelisk/releases/download/v${BAZELSK_VERSION}/bazelisk-linux-amd64 /usr/local/bin/bazel
RUN chmod +x /usr/local/bin/bazel

# Set up workspace
RUN mkdir -p /usr/src/app
ENV WORKSPACE /usr/src/app
WORKDIR /usr/src/app
