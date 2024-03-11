FROM alpine:3.19 as base
MAINTAINER Vsevolod Platunov <vsevolodplatunov@gmail.com>


FROM base as builder
RUN apk update && apk add git go make

RUN git clone --depth 1 https://github.com/Code-Hex/Neo-cowsay.git neo-cowsay
WORKDIR /neo-cowsay
RUN make


FROM base as runner

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN apk update && apk add fortune
RUN rm -vrf /var/cache/apk/*

COPY --from=builder --chown=root /neo-cowsay/bin/cowsay /bin/cowsay
COPY --chown=root entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
