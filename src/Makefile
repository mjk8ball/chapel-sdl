#chpl Hello.chpl -L/usr/lib/x86_64-linux-gnu -I/usr/include/SDL/ -lSDL SDL.h
CC=chpl

SDL_LIBDIR=/usr/local/lib/
CC_LIBDIR=-L$(SDL_LIBDIR)

INCDIR=/usr/local/include
SDL_INCDIR=$(INCDIR)/SDL2/

CC_INCDIR=-I$(SDL_INCDIR)

SDL_LIB=-lSDL2
SDLIMG_LIB=-lSDL2_image

SDL_HEADERS=SDL.h
SDLIMG_HEADERS=SDL_image.h

SDL_MODULE_DIR=$(shell pwd)

##
# NOTE
#
# the --llvm flag causes the following error:
# internal error: SYM0636 chpl Version 1.10.0.3a08ce3
#
# the --fast flag causes a compiler segmentation fault

CC_FLAGS=$(CC_INCDIR) $(CC_LIBDIR) $(SDL_LIB) $(SDL_HEADERS) -M $(SDL_MODULE_DIR)

RM=rm

all:
	$(CC) Hello/HelloWorld.chpl $(CC_FLAGS) -o HelloWorld 

clean:
	$(RM) HelloWorld 

