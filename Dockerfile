FROM mtn:ffmpeg
ARG MAKEFLAGS="-j4"
VOLUME /tmp/mtn
WORKDIR /tmp/mtn

RUN apk --no-cache add gd-dev libpng-dev jpeg-dev

ENTRYPOINT  ["ash"]
