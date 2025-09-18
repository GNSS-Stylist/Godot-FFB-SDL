#!/usr/bin/env python
import os
import sys

env = SConscript("godot-cpp/SConstruct")

# For reference:
# - CCFLAGS are compilation flags shared between C and C++
# - CFLAGS are for C-specific compilation flags
# - CXXFLAGS are for C++-specific compilation flags
# - CPPFLAGS are for pre-processor flags
# - CPPDEFINES are for pre-processor defines
# - LINKFLAGS are for linking flags

# tweak this if you want to use different folders, or more folders, to store your source code in.

if env["platform"] == "windows":
    env.Append(CPPPATH=['include/'])
    env.Append(LIBPATH=['lib/SDL2/'])
    env.Append(LIBS=['SDL2.dll.dll'])

elif env["platform"] == "linux":
#    env.Append(CPPPATH=['include/'])
# Moved below: env.Append(LINKFLAGS='-lSDL2')
    
    env.Append(LIBS=['SDL2'])

# my additions:
    env.Append(CCFLAGS=['-I/usr/local/include/SDL2'])
    env.Append(CCFLAGS=['-D_REENTRANT'])

# Static libs:
    env.Append(LINKFLAGS='-L/usr/local/lib /usr/local/lib/libSDL2.a -lm -lpthread')

# Dynamic libs:
#    env.Append(LINKFLAGS='-L/usr/local/lib')
#    env.Append(LINKFLAGS='-Wl,-rpath,/usr/local/lib')
#    env.Append(LINKFLAGS='-Wl,--enable-new-dtags')
#    env.Append(LINKFLAGS='-lSDL2')
#    env.Append(LINKFLAGS='lpthread')


env.Append(CPPPATH=["src/"])
sources = Glob("src/*.cpp")

library = env.SharedLibrary(
    "bin/libffbplugin{}{}".format(env["suffix"], env["SHLIBSUFFIX"]),
    source=sources,
)

Default(library)
