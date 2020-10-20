FROM ubuntu:18.04

ARG BAZELSK_VERSION=1.7.3

RUN apt-get update && apt-get install -y ca-certificates && rm -rf /var/lib/apt/lists/*
ADD https://github.com/bazelbuild/bazelisk/releases/download/v1.7.3/bazelisk-linux-amd64 /usr/local/bin/bazel
RUN chmod +x /usr/local/bin/bazel

# Set up workspace
RUN mkdir -p /usr/src/app
ENV WORKSPACE /usr/src/app
WORKDIR /usr/src/app
