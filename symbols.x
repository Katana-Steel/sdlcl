/*
 * SDLCL - SDL Compatibility Library
 * Copyright (C) 2017 Alan Williams <mralert@gmail.com>
 * 
 * Portions taken from SDL 1.2.15
 * Copyright (C) 1997-2012 Sam Latinga <slouken@libsdl.org>
 * 
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 * 
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
 */

SDL2_SYMBOL(SDL_Init, int, (Uint32 flags))
SDL2_SYMBOL(SDL_InitSubSystem, int, (Uint32 flags))
SDL2_SYMBOL(SDL_GetError, const char *, (void))
SDL2_SYMBOL(SDL_QuitSubSystem, void, (Uint32 flags))
SDL2_SYMBOL(SDL_Quit, void, (void))
SDL2_SYMBOL(SDL_WasInit, Uint32, (Uint32 flags))

/* Timer subsystem */
SDL2_SYMBOL(SDL_GetTicks, Uint32, (void))
SDL2_SYMBOL(SDL_Delay, void, (Uint32 ms))

/* Video subsystem */
SDL2_SYMBOL(SDL_GetNumVideoDisplays, int, (void))
SDL2_SYMBOL(SDL_GetNumDisplayModes, int, (int displayIndex))
SDL2_SYMBOL(SDL_GetDisplayMode, int, (int displayIndex, int modeIndex, SDL_DisplayMode *mode))
SDL2_SYMBOL(SDL_GetDesktopDisplayMode, int, (int displayIndex, SDL_DisplayMode *mode))
SDL2_SYMBOL(SDL_GetPixelFormatName, const char *, (Uint32 format))
SDL2_SYMBOL(SDL_CreateWindow, SDL_Window *, (const char *title, int x, int y, int w, int h, Uint32 flags))
SDL2_SYMBOL(SDL_DestroyWindow, void, (SDL_Window *window))

SDL2_SYMBOL(SDL_CreateRGBSurface, SDL_Surface *, (Uint32 flags, int width, int height, int depth, Uint32 Rmask, Uint32 Gmask, Uint32 Bmask, Uint32 Amask))
SDL2_SYMBOL(SDL_CreateRGBSurfaceFrom, SDL_Surface *, (void *pixels, int width, int height, int depth, int pitch, Uint32 Rmask, Uint32 Gmask, Uint32 Bmask, Uint32 Amask))
SDL2_SYMBOL(SDL_PixelFormatEnumToMasks, SDL_bool, (Uint32 format, int *bpp, Uint32 *Rmask, Uint32 *Gmask, Uint32 *Bmask, Uint32 *Amask))
SDL2_SYMBOL(SDL_SetSurfaceBlendMode, int, (SDL_Surface *surface, SDL_BlendMode blendMode))
SDL2_SYMBOL(SDL_FreeSurface, void, (SDL_Surface *surface))
SDL2_SYMBOL(SDL_LockSurface, int, (SDL_Surface *surface))
SDL2_SYMBOL(SDL_UnlockSurface, void, (SDL_Surface *surface))
SDL2_SYMBOL(SDL_FillRect, int, (SDL_Surface *dst, const SDL_Rect *rect, Uint32 color))
SDL2_SYMBOL(SDL_UpperBlit, int, (SDL_Surface *src, const SDL_Rect *srcrect, SDL_Surface *dst, SDL_Rect *dstrect))
SDL2_SYMBOL(SDL_LoadBMP_RW, SDL_Surface *, (SDL_RWops *src, int freesrc))

SDL2_SYMBOL(SDL_MapRGBA, Uint32, (const SDL_PixelFormat *format, Uint8 r, Uint8 g, Uint8 b, Uint8 a))
SDL2_SYMBOL(SDL_MapRGB, Uint32, (const SDL_PixelFormat *format, Uint8 r, Uint8 g, Uint8 b))
SDL2_SYMBOL(SDL_GetRGBA, void, (Uint32 pixel, const SDL_PixelFormat *format, Uint8 *r, Uint8 *g, Uint8 *b, Uint8 *a))
SDL2_SYMBOL(SDL_GetRGB, void, (Uint32 pixel, const SDL_PixelFormat *format, Uint8 *r, Uint8 *g, Uint8 *b))

SDL2_SYMBOL(SDL_ShowCursor, int, (int toggle))
SDL2_SYMBOL(SDL_WarpMouseInWindow, void, (SDL_Window *window, int x, int y))

SDL2_SYMBOL(SDL_CalculateGammaRamp, void, (float gamma, Uint16 *ramp))
SDL2_SYMBOL(SDL_GetWindowGammaRamp, int, (SDL_Window *window, Uint16 *red, Uint16 *green, Uint16 *blue))
SDL2_SYMBOL(SDL_SetWindowGammaRamp, int, (SDL_Window *window, const Uint16 *red, const Uint16 *green, const Uint16 *blue))

SDL2_SYMBOL(SDL_GetWindowGrab, SDL_bool, (SDL_Window *window))
SDL2_SYMBOL(SDL_SetWindowGrab, void, (SDL_Window *window, SDL_bool grabbed))
SDL2_SYMBOL(SDL_MinimizeWindow, void, (SDL_Window *window))
SDL2_SYMBOL(SDL_SetRelativeMouseMode, int, (SDL_bool enabled))

SDL2_SYMBOL(SDL_CreateRenderer, SDL_Renderer *, (SDL_Window *window, int index, Uint32 flags))
SDL2_SYMBOL(SDL_SetRenderDrawColor, int, (SDL_Renderer *renderer, Uint8 r, Uint8 g, Uint8 b, Uint8 a))
SDL2_SYMBOL(SDL_RenderClear, int, (SDL_Renderer *))
SDL2_SYMBOL(SDL_RenderCopy, int, (SDL_Renderer *renderer, SDL_Texture *texture, const SDL_Rect *srcrect, const SDL_Rect *dstrect))
SDL2_SYMBOL(SDL_RenderPresent, void, (SDL_Renderer *renderer))
SDL2_SYMBOL(SDL_DestroyRenderer, void, (SDL_Renderer *renderer))
SDL2_SYMBOL(SDL_CreateTexture, SDL_Texture *, (SDL_Renderer *renderer, Uint32 format, int access, int w, int h))
SDL2_SYMBOL(SDL_SetTextureBlendMode, int, (SDL_Texture *texture, SDL_BlendMode blendMode))
SDL2_SYMBOL(SDL_LockTexture, int, (SDL_Texture *texture, const SDL_Rect *rect, void **pixels, int *pitch))
SDL2_SYMBOL(SDL_UnlockTexture, void, (SDL_Texture *texture))
SDL2_SYMBOL(SDL_DestroyTexture, void, (SDL_Texture *texture))

SDL2_SYMBOL(SDL_GL_LoadLibrary, int, (const char *path))
SDL2_SYMBOL(SDL_GL_GetProcAddress, void *, (const char *proc))
SDL2_SYMBOL(SDL_GL_SwapWindow, void, (SDL_Window *window))
SDL2_SYMBOL(SDL_GL_SetAttribute, int, (SDL_GLattr attr, int value))
SDL2_SYMBOL(SDL_GL_CreateContext, SDL_GLContext, (SDL_Window *window))
SDL2_SYMBOL(SDL_GL_DeleteContext, void, (SDL_GLContext context))

/* Audio subsystem */
SDL2_SYMBOL(SDL_OpenAudio, int, (SDL_AudioSpec *desired, SDL_AudioSpec *obtained))
SDL2_SYMBOL(SDL_PauseAudio, void, (int pause_on))
SDL2_SYMBOL(SDL_LockAudio, void, (void))
SDL2_SYMBOL(SDL_UnlockAudio, void, (void))
SDL2_SYMBOL(SDL_CloseAudio, void, (void))
SDL2_SYMBOL(SDL_GetCurrentAudioDriver, const char *, (void))

SDL2_SYMBOL(SDL_BuildAudioCVT, int, (SDL_AudioCVT *cvt, SDL_AudioFormat src_format, Uint8 src_channels, int src_rate, SDL_AudioFormat dst_format, Uint8 dst_channels, int dst_rate))
SDL2_SYMBOL(SDL_ConvertAudio, int, (SDL_AudioCVT *cvt))
SDL2_SYMBOL(SDL_LoadWAV_RW, SDL_AudioSpec *, (SDL_RWops* src, int freesrc, SDL_AudioSpec *spec, Uint8 **audio_buf, Uint32 *audio_len))
SDL2_SYMBOL(SDL_FreeWAV, void, (Uint8 *audio_buf))

/* Events subsystem */
SDL2_SYMBOL(SDL_JoystickEventState, int, (int state))
SDL2_SYMBOL(SDL_GetModState, SDL_Keymod, (void))
SDL2_SYMBOL(SDL_GetMouseState, Uint8, (int *x, int *y))
SDL2_SYMBOL(SDL_PollEvent, int, (SDL_Event *event))
SDL2_SYMBOL(SDL_PeepEvents, int, (SDL_Event *events, int numevents, SDL_eventaction action, Uint32 minType, Uint32 maxType))
SDL2_SYMBOL(SDL_PumpEvents, void, (void))

/* Joystick subsystem */
SDL2_SYMBOL(SDL_NumJoysticks, int, (void))
SDL2_SYMBOL(SDL_JoystickOpen, SDL_Joystick *, (int device_index))
SDL2_SYMBOL(SDL_JoystickName, const char *, (SDL_Joystick *joystick))
SDL2_SYMBOL(SDL_JoystickNameForIndex, const char *, (int index))
SDL2_SYMBOL(SDL_JoystickNumAxes, int, (SDL_Joystick *joystick))
SDL2_SYMBOL(SDL_JoystickNumBalls, int, (SDL_Joystick *joystick))
SDL2_SYMBOL(SDL_JoystickNumButtons, int, (SDL_Joystick *joystick))
SDL2_SYMBOL(SDL_JoystickNumHats, int, (SDL_Joystick *joystick))
SDL2_SYMBOL(SDL_JoystickGetAxis, Sint16, (SDL_Joystick *joystick, int axis))
SDL2_SYMBOL(SDL_JoystickGetBall, int, (SDL_Joystick *joystick, int ball, int *dx, int *dy))
SDL2_SYMBOL(SDL_JoystickGetButton, Uint8, (SDL_Joystick *joystick, int button))
SDL2_SYMBOL(SDL_JoystickGetHat, Uint8, (SDL_Joystick *joystick, int hat))
SDL2_SYMBOL(SDL_JoystickUpdate, void, (void))
SDL2_SYMBOL(SDL_JoystickClose, void, (SDL_Joystick *joystick))

/* RWops */
SDL2_SYMBOL(SDL_AllocRW, SDL_RWops *, (void))
SDL2_SYMBOL(SDL_FreeRW, void, (SDL_RWops *area))
SDL2_SYMBOL(SDL_RWFromFP, SDL_RWops *, (void *fp, SDL_bool autoclose))
SDL2_SYMBOL(SDL_RWFromFile, SDL_RWops *, (const char *file, const char *mode))
SDL2_SYMBOL(SDL_RWFromMem, SDL_RWops *, (void *mem, int size))
SDL2_SYMBOL(SDL_RWFromConstMem, SDL_RWops *, (const void *mem, int size))

SDL2_SYMBOL(SDL_ReadLE16, Uint16, (SDL_RWops *src))
SDL2_SYMBOL(SDL_ReadBE16, Uint16, (SDL_RWops *src))
SDL2_SYMBOL(SDL_ReadLE32, Uint32, (SDL_RWops *src))
SDL2_SYMBOL(SDL_ReadBE32, Uint32, (SDL_RWops *src))
SDL2_SYMBOL(SDL_ReadLE64, Uint64, (SDL_RWops *src))
SDL2_SYMBOL(SDL_ReadBE64, Uint64, (SDL_RWops *src))

SDL2_SYMBOL(SDL_WriteLE16, size_t, (SDL_RWops *src, Uint16 value))
SDL2_SYMBOL(SDL_WriteBE16, size_t, (SDL_RWops *src, Uint16 value))
SDL2_SYMBOL(SDL_WriteLE32, size_t, (SDL_RWops *src, Uint32 value))
SDL2_SYMBOL(SDL_WriteBE32, size_t, (SDL_RWops *src, Uint32 value))
SDL2_SYMBOL(SDL_WriteLE64, size_t, (SDL_RWops *src, Uint64 value))
SDL2_SYMBOL(SDL_WriteBE64, size_t, (SDL_RWops *src, Uint64 value))

/* Threading */
SDL2_SYMBOL(SDL_CreateThread, SDL_Thread *, (SDL_ThreadFunction fn, const char *name, void *data))
SDL2_SYMBOL(SDL_WaitThread, void, (SDL_Thread *thread, int *status))

SDL2_SYMBOL(SDL_CreateMutex, SDL_mutex *, (void))
SDL2_SYMBOL(SDL_LockMutex, int, (SDL_mutex *mutex))
SDL2_SYMBOL(SDL_UnlockMutex, int, (SDL_mutex *mutex))
SDL2_SYMBOL(SDL_DestroyMutex, void, (SDL_mutex *mutex))

SDL2_SYMBOL(SDL_CreateSemaphore, SDL_sem *, (Uint32 initial_value))
SDL2_SYMBOL(SDL_SemWait, int, (SDL_sem *sem))
SDL2_SYMBOL(SDL_SemTryWait, int, (SDL_sem *sem))
SDL2_SYMBOL(SDL_SemWaitTimeout, int, (SDL_sem *sem, Uint32 ms))
SDL2_SYMBOL(SDL_SemPost, int, (SDL_sem *sem))
SDL2_SYMBOL(SDL_SemValue, Uint32, (SDL_sem *sem))
SDL2_SYMBOL(SDL_DestroySemaphore, void, (SDL_sem *sem))

SDL2_SYMBOL(SDL_CreateCond, SDL_cond *, (void))
SDL2_SYMBOL(SDL_CondSignal, int, (SDL_cond *cond))
SDL2_SYMBOL(SDL_CondBroadcast, int, (SDL_cond *cond))
SDL2_SYMBOL(SDL_CondWait, int, (SDL_cond *cond, SDL_mutex *mutex))
SDL2_SYMBOL(SDL_CondWaitTimeout, int, (SDL_cond *cond, SDL_mutex *mutex, Uint32 ms))
SDL2_SYMBOL(SDL_DestroyCond, int, (SDL_cond *cond))
