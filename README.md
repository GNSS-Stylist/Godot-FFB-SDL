# godot_ffb_sdl

SDL2 haptic system wrapper for godot. see https://www.libsdl.org/

This is a GDExtension project, see https://docs.godotengine.org/en/4.2/tutorials/scripting/gdextension/gdextension_cpp_example.html

Only supports constant force for now.



On linux, download SDL2 from your package manager before using the plugin.

On Windows, you need to generate SDL2.lib from SDL2.dll before compiling.
This can be done by running the script generate_SDL2_lib_for_windows.bat
(Requires 'dumpbin' and 'lib' in PATH - easiest to run from VS developer prompt.)

This project is licensed under the MIT license, see LICENSE.md for more information. SDL2 uses the Zlib license, see https://www.libsdl.org/license.php
