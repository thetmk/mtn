FROM mtn:ffmpeg

ARG MAKEFLAGS="-j4"

WORKDIR /tmp/mtn

ADD src .

RUN apk --no-cache add gd-dev libpng-dev jpeg-dev # ca-certificates wget \
    && wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub \
    && wget -q -O /tmp/glibc-2.28-r0.apk https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.28-r0/glibc-2.28-r0.apk \
    && apk add /tmp/glibc-2.28-r0.apk

ENTRYPOINT  ["ash"]

# freetype x264 fontconfig gcc_s
