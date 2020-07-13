FROM alpine:latest
LABEL maintainer="Samudra Harapan Bekti <samudra.bekti@gmail.com>"

ENV STRONGSWAN_VERSION=5.8.4-r2
RUN set -xe \
    && apk add --no-cache strongswan=$STRONGSWAN_VERSION

COPY entrypoint.sh /entrypoint.sh

EXPOSE 500/udp 4500/udp

ENTRYPOINT ["./entrypoint.sh"]
