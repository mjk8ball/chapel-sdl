/*

ChapelSDL bindings

        Copyright (C) 2014 Chris Taylor <mjk8ball@users.noreply.github.com> (message mjk8ball through github)

Simple Direct Media Player

        Copyright (C) 1997-2014 Sam Lantinga <slouken@libsdl.org>

This software is provided 'as-is', without any express or implied
warranty.  In no event will the authors be held liable for any damages
arising from the use of this software.

Permission is granted to anyone to use this software for any purpose,
including commercial applications, and to alter it and redistribute it
freely, subject to the following restrictions:

1. The origin of this software must not be misrepresented; you must not
   claim that you wrote the original software. If you use this software
   in a product, an acknowledgment in the product documentation would be
   appreciated but is not required.
2. Altered source versions must be plainly marked as such, and must not be
   misrepresented as being the original software.
3. This notice may not be removed or altered from any source distribution.

*/

use SDL;

writeln(SDL_INIT_EVERYTHING);
SDL_Init(SDL_INIT_EVERYTHING);

var win : SDLWindow = SDL_CreateWindow("Hello world!", 100, 100, 640, 480, SDL_WINDOW_SHOWN);
assert( win != nil, "window allocation failed"); 

var ren : SDLRenderer = SDL_CreateRenderer(win, -1, SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);
assert( ren != nil, "renderer allocation failed"); 

var bmp : SDLSurface = SDL_LoadBMP("hello.bmp");
assert( bmp != nil, "surface allocation failed"); 

var tex : SDLTexture = SDL_CreateTextureFromSurface(ren, bmp);
assert( tex != nil, "texture allocation failed"); 

SDL_FreeSurface(bmp);

SDL_RenderClear(ren);
SDL_RenderCopy(ren, tex, nil, nil);
SDL_RenderPresent(ren);

SDL_Delay(2000);

SDL_DestroyTexture(tex);
SDL_DestroyRenderer(ren);

SDL_DestroyWindow(win);

SDL_Quit();

writeln("done");

