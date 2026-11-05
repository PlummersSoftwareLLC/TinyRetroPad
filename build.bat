@echo off
setlocal
set PATH=C:\masm32\bin;%PATH%

rem use the newest installed Windows 10/11 SDK x86 import libs
set SDKLIB=
for /d %%d in ("%ProgramFiles(x86)%\Windows Kits\10\Lib\10.*") do if exist "%%d\um\x86\kernel32.lib" set SDKLIB=%%d\um\x86
if not defined SDKLIB echo Windows SDK x86 libs not found & exit /b 1

rem ignore LIB from a x64 developer prompt (wrong-arch kernel32.lib)
set LIB=

ml /nologo /c /coff /Cp /IC:\masm32\include trpad.asm || exit /b 1

crinkler trpad.obj ^
  /OUT:trpad.exe ^
  /ENTRY:MainEntry ^
  /SUBSYSTEM:WINDOWS ^
  /NOINITIALIZERS ^
  /TINYIMPORT ^
  /ORDERTRIES:2000 ^
  /LIBPATH:"%SDKLIB%" ^
  kernel32.lib user32.lib shell32.lib comdlg32.lib gdi32.lib
set ERR=%ERRORLEVEL%

del trpad.obj
exit /b %ERR%
