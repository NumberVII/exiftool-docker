FROM alpine:latest

WORKDIR /

RUN apk update && apk add --no-cache \
    exiftool \
    curl \
  && rm -rf /var/cache/apk/*

ENTRYPOINT ["/bin/sh"]
CMD ["-c", "exiftool $@ -"]
