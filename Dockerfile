FROM alpine:3.7

LABEL maintainer="Procraft Team"

ENV PDNS_VERSION 4.1.0-r0

RUN echo "http://nl.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories && \
    apk --update add pdns-backend-pgsql=${PDNS_VERSION} && \
    rm -rf /var/cache/apk/* && \
    rm -rf /tmp/* && \
    rm -rf /var/log/* && \
    mkdir -p /etc/pdns/conf.d

ADD pdns.conf /etc/pdns/
ADD entrypoint.sh /

EXPOSE 53/tcp 53/udp 80/tcp

ENTRYPOINT [ "/entrypoint.sh" ]
