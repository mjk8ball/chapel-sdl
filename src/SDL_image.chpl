/*

Chapel SDL_image bindings

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

module SDL_image {

const IMG_MAJOR_VERSION : uint;
const IMG_MINOR_VERSION : uint;
const IMG_PATCHLEVEL : uint;

const IMG_INIT_JPG : uint;
const IMG_INIT_PNG : uint;
const IMG_INIT_TIF : uint;

const BMP : c_string = "BMP";
const CUR : c_string = "CUR";
const GIF : c_string = "GIF";
const ICO : c_string = "ICO";
const JPG : c_string = "JPG";
const LBM : c_string = "LBM";
const PCX : c_string = "PCX";
const PNG : c_string = "PNG";
const PNM : c_string = "PNM";
const TGA : c_string = "TGA";
const TIF : c_string = "TIF";
const XCF : c_string = "XCF";
const XPM : c_string = "XPM";
const XV : c_string = "XV";


extern proc IMG_Init(flags : int) : int;
extern proc IMG_Quit() : void;

extern proc IMG_LoadTexture(ren : SDLRenderer, fname : c_string) : SDLTexture;

extern proc IMG_Linked_Version() : SDLVersion;
extern proc SDL_IMAGE_VERSION( v : SDLVersion ) : void;

extern proc IMG_Load_RW(src : SDLRWops, freesrc : int) : SDLSurface; 
extern proc IMG_LoadTyped_RW(src : SDLRWops, freesrc : int, type : c_string) : SDLSurface;

extern proc IMG_LoadCUR_RW(src : SDLRWops) : SDLSurface; 
extern proc IMG_LoadICO_RW(src : SDLRWops) : SDLSurface; 
extern proc IMG_LoadBMP_RW(src : SDLRWops) : SDLSurface;
extern proc IMG_LoadPNM_RW(src : SDLRWops) : SDLSurface;
extern proc IMG_LoadXPM_RW(src : SDLRWops) : SDLSurface;
extern proc IMG_LoadXCF_RW(src : SDLRWops) : SDLSurface;
extern proc IMG_LoadPCX_RW(src : SDLRWops) : SDLSurface;
extern proc IMG_LoadGIF_RW(src : SDLRWops) : SDLSurface;
extern proc IMG_LoadJPG_RW(src : SDLRWops) : SDLSurface;
extern proc IMG_LoadTIF_RW(src : SDLRWops) : SDLSurface;
extern proc IMG_LoadPNG_RW(src : SDLRWops) : SDLSurface;
extern proc IMG_LoadTGA_RW(src : SDLRWops) : SDLSurface;
extern proc IMG_LoadLBM_RW(src : SDLRWops) : SDLSurface;
extern proc IMG_LoadXV_RW(src : SDLRWops) : SDLSurface;
extern proc IMG_ReadXPMFromArray(xpm : c_string) : SDLSurface;

extern proc IMG_isCUR(src : SDLRWops) : int;
extern proc IMG_isICO(src : SDLRWops) : int;
extern proc IMG_isBMP(src : SDLRWops) : int;
extern proc IMG_isPNM(src : SDLRWops) : int;
extern proc IMG_isXCF(src : SDLRWops) : int;
extern proc IMG_isXPM(src : SDLRWops) : int;
extern proc IMG_isPCX(src : SDLRWops) : int;
extern proc IMG_isGIF(src : SDLRWops) : int;
extern proc IMG_isJPG(src : SDLRWops) : int;
extern proc IMG_isTIF(src : SDLRWops) : int;
extern proc IMG_isPNG(src : SDLRWops) : int;
extern proc IMG_isLBM(src : SDLRWops) : int;
extern proc IMG_isXV(src : SDLRWops) : int;

extern proc IMG_SetError(const fmt : c_string, args ...?k) : void;
extern proc IMG_GetError() : c_string;

}

