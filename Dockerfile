FROM alpine:latest
LABEL maintainer="Samudra Harapan Bekti <samudra.bekti@gmail.com>"

RUN set -xe \
    && apk add --no-cache strongswan

COPY entrypoint.sh /entrypoint.sh

EXPOSE 500/udp 4500/udp

ENTRYPOINT ["./entrypoint.sh"]
