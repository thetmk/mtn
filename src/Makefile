CFLAGS=-W -Wall -O3 -s -D_FILE_OFFSET_BITS=64 -I/opt/ffmpeg/include/ -L/opt/ffmpeg/lib/ #-mtune=i686 -march=i386
LDFLAGS= -lavcodec -lavformat -lavcodec -lswscale -lavutil -lavresample -lgd -lfreetype -ljpeg -lpng -lx264 -lx265 -lxvidcore -lvpx -lvorbis -logg -lmp3lame -lfdk-aac -lopus -lswresample -ltheora -lvorbisenc -lfontconfig
LIBS+= -lz -lm -lpthread -ldl -fPIC -lstdc++

all: mtn mtns

mtn: mtn.c Makefile
	$(CC) -o mtn mtn.c $(CFLAGS) $(LDFLAGS) $(LIBS)

mtns: mtn.c Makefile
	#$(CC) -o mtns mtn.c $(CFLAGS) -Wl,-Bstatic $(LDFLAGS) -Wl,-Bdynamic $(DYNLIBS) $(LIBS)
	$(CC) -o mtns mtn.c -static $(CFLAGS) $(LDFLAGS) $(LIBS)

clean:
	rm -f mtn mtns

# docker build --target build -t mtn:ffmpeg . -f Dockerfile.ffmpeg
# docker build -t mtn:build -l mtnbuild . -f Dockerfile
# docker run --rm -v $(pwd)/src:/tmp/mtn mtn:build -c make
