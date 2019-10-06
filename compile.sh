#!/bin/bash

GOPATH=/Users/kbarret8/go
docker run --rm -v "$GOPATH":/go -v "$PWD":/out golang:1.9-alpine3.7 go build -v -i -o /out/auto-lb src/github.com/kingdonb/docker-loadbalancer/main.go
docker build . -t kingdonb/docker-loadbalancer:1.0-haproxy1.8-alpine3.7
