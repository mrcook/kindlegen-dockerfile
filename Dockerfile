FROM alpine:latest

COPY kindlegen /

RUN mkdir -p /source
VOLUME ["/source"]
WORKDIR /source

ENTRYPOINT ["/kindlegen"]
