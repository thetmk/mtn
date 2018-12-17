FROM mtn:ffmpeg
ARG MAKEFLAGS="-j4"
WORKDIR /tmp/mtn

ADD src .
RUN apk --no-cache add gd-dev libpng-dev jpeg-dev

ENTRYPOINT  ["ash"]
