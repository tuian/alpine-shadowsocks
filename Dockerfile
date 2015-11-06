FROM alpine
MAINTAINER James Merson <james.merson@surecomms.com>

RUN apk add --update py-pip && \
    rm -rf /var/cache/apk/*

RUN pip install shadowsocks

RUN ln -sf /dev/stdout /var/log/shadowsocks.log

ENTRYPOINT ["/usr/bin/ssserver"]