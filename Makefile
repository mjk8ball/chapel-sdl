#chpl Hello.chpl -L/usr/lib/x86_64-linux-gnu -I/usr/include/SDL/ -lSDL SDL.h
CC=chpl

SDL_LIBDIR=/usr/local/lib/
CC_LIBDIR=-L$(SDL_LIBDIR)

SDL_INCDIR=/usr/local/include/SDL2/
CC_INCDIR=-I$(SDL_INCDIR)

SDL_LIB=-lSDL2

SDL_HEADERS=SDL.h

##
# NOTE
#
# the --llvm flag causes the following error:
# internal error: SYM0636 chpl Version 1.10.0.3a08ce3
#
# the --fast flag causes a compiler segmentation fault

CC_FLAGS=$(CC_INCDIR) $(CC_LIBDIR) $(SDL_LIB) $(SDL_HEADERS)

RM=rm

all:
	$(CC) HelloWorld.chpl $(CC_FLAGS) -o HelloWorld 
	$(CC) Bliting.chpl $(CC_FLAGS) -o Bliting

clean:
	$(RM) HelloWorld 
	$(RM) Bliting 

