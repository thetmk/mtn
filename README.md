movie thumbnailer (mtn)
=======================

movie thumbnailer (mtn) -- saves thumbnails (screenshots) of movie or video files to jpeg files. It uses FFmpeg's libavcodec as its engine, so it supports all popular codecs, e.g. divx h264 h265 mpeg1 mpeg2 mp4 vc1 wmv xvid, and formats, e.g. .3gp .avi .dat .mkv .wmv. mtn is open source software.

The latest release of the original developer is from 2008 and was built using a now very outdated ffmpeg version which lacks support for high resolutions like 4K and popular codecs like HEVC/h265.
This fork has a few community patches and has been made to support FFmpeg up to [FFmpeg/FFmpeg](https://github.com/FFmpeg/FFmpeg/)[@c457bdebe7af643b380aa0f6add3cb4335d218dc](https://github.com/FFmpeg/FFmpeg/commit/c457bdebe7af643b380aa0f6add3cb4335d218dc). That is the latest version that still has the deprecated get_buffer API.

Original project: http://moviethumbnail.sourceforge.net/

Build instructions
------------------
This repository comes with a modified version of [jrottenberg/ffmpeg](https://github.com/jrottenberg/ffmpeg)'s ffmpeg build container which has been adapted for building FFmpeg 2.7 and allows for fully-static mtn builds.

#### Build the ffmpeg build container
```
docker build --target build -t mtn:ffmpeg . -f Dockerfile.ffmpeg
```
#### Build a build container for mtn
```
docker build -t mtn:build . -f Dockerfile
```

#### Start building..
```
docker run --rm -it -v $(pwd)/src:/tmp/mtn mtn:build -c 'make clean'
docker run --rm -it -v $(pwd)/src:/tmp/mtn mtn:build -c 'make all'
```
(mtn = dynamically linked binary, mtns = statically linked binary)
