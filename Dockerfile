FROM alpine:3.9.2

MAINTAINER v7lin <v7lin@qq.com>

RUN apk update && \
  apk add --no-cache openssl && \
  rm -rf /var/cache/apk/*
