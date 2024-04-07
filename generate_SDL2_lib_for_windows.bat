@echo off
REM Generates a .lib-file from SDL2.dll to be used when
REM compiling the GDExtension for 64-bit Windows
REM (change the first parameter to 32 for 32-bit).
REM dll2lib.bat requires 'dumpbin' and 'lib' in PATH so it's
REM easiest to run this from VS Developer Command Prompt.

lib\SDL2\dll2lib.bat 64 lib\SDL2\SDL2.dll lib\SDL2\SDL2_dll.lib
