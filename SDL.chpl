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

module SDL {

extern proc SDL_Init(status : uint) : int;
extern proc SDL_Quit();
extern proc SDL_GetError();

extern const SDL_INIT_EVERYTHING : uint;
extern const SDL_INIT_TIMER : uint;
extern const SDL_INIT_AUDIO : uint;
extern const SDL_INIT_VIDEO : uint;
extern const SDL_INIT_CDROM : uint;
extern const SDL_INIT_JOYSTICK : uint;
extern const SDL_INIT_NOPARACHUTE : uint;
extern const SDL_INIT_EVENTHREAD : uint;

extern const SDL_WINDOW_SHOWN : uint;
extern const SDL_RENDERER_ACCELERATED : uint;
extern const SDL_RENDERER_PRESENTVSYNC : uint;

extern const SDL_TEXTUREACCESS_STATIC : uint;
extern const SDL_TEXTUREACCESS_STREAMING : uint;
extern const SDL_TEXTUREACCESS_TARGET : uint;

extern const SDL_QUIT : uint;
extern const SDL_KEYDOWN : uint;
extern const SDL_KEYUP: uint;
extern const SDL_MOUSEBUTTONDOWN : uint;
extern const SDL_MOUSEBUTTONUP : uint;

extern const SDL_PEEKEVENT : uint;

extern const SDL_OPENGL : uint;
extern const SDL_FULLSCREEN : uint;

extern const SDL_GL_RED_SIZE : uint;
extern const SDL_GL_GREEN_SIZE : uint;
extern const SDL_GL_BLUE_SIZE : uint;
extern const SDL_GL_DEPTH_SIZE : uint;
extern const SDL_GL_DOUBLEBUFFER : uint;

extern const SDL_SWSURFACE : uint;

extern record SDL_Window {
}

extern record SDL_Rect {
   var x, y, w, h : int;
}

extern record SDL_Surface {
}

extern record SDL_Renderer {
}

extern record SDL_Texture {
}

extern record SDL_Event {
}

extern record SDL_eventaction {
}

extern record SDL_VideoInfo {
}

type SDLWindow = c_ptr(SDL_Window);
type SDLRect = c_ptr(SDL_Rect);
type SDLSurface = c_ptr(SDL_Surface);
type SDLRenderer = c_ptr(SDL_Renderer);
type SDLTexture = c_ptr(SDL_Texture);
type SDLEvent = c_ptr(SDL_Event);
type SDLVideoInfo = c_ptr(SDL_VideoInfo);

extern proc SDL_GetVideoInfo() : SDLVideoInfo;
extern proc SDL_SetVideoMode(w : int, h : int, bpp : int, flags : uint) : SDLSurface;

extern proc SDL_CreateWindow(const title:c_string, x:int, y:int, w:int, h:int, flags:uint) : SDLWindow;
extern proc SDL_DestroyWindow(window : SDLWindow);

extern proc SDL_LoadBMP(const fileName : c_string) : SDLSurface;
extern proc SDL_CreateTextureFromSurface(ren : SDLRenderer, surf : SDLSurface) : SDLTexture;
extern proc SDL_DestroyTexture(text : SDLTexture);

extern proc SDL_CreateRenderer(window : SDLWindow, idx : int, flags : uint) : SDLRenderer;
extern proc SDL_DestroyRenderer(ren : SDLRenderer);

extern proc SDL_RenderClear(ren : SDLRenderer);
extern proc SDL_RenderCopy(ren : SDLRenderer, tex : SDLTexture, const src_rect : SDLRect, const dst_rect : SDLRect);

extern proc SDL_FreeSurface(surf : SDLSurface);
extern proc SDL_RenderPresent(ren : SDLRenderer);

extern proc SDL_Delay(time : int);

extern proc SDL_QueryTexture(tex : SDLTexture, format : uint, access : c_ptr(int), w : c_ptr(int), h : c_ptr(int)) : int;

extern proc SDL_GetBasePath() : c_string;
extern proc SDL_PollEvent( e : SDLEvent);

extern proc SDL_PeepEvents( e : SDLEvent, numevents : int, action : SDL_eventaction, minType : uint, maxType : uint) : int;

}

