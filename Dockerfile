FROM alpine:3.14
LABEL maintainer="Samudra Harapan Bekti <samudra.bekti@gmail.com>"

ENV STRONGSWAN_VERSION=5.9.1-r1
RUN set -xe \
    && apk add --no-cache strongswan=$STRONGSWAN_VERSION

COPY entrypoint.sh /entrypoint.sh

EXPOSE 500/udp 4500/udp

ENTRYPOINT ["./entrypoint.sh"]
