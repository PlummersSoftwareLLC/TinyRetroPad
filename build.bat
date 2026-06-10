ml /nologo /c /coff /Cp /Id:\masm32\include trpad.asm

crinkler trpad.obj ^
  /OUT:trpad.exe ^
  /ENTRY:MainEntry ^
  /SUBSYSTEM:WINDOWS ^
  /NOINITIALIZERS ^
  /TINYIMPORT ^
  /ORDERTRIES:2000 ^
  /NODEFAULTLIB /UNALIGNCODE /TRANSFORM:CALLS ^
  /UNSAFEIMPORT ^
  /LIBPATH:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.20348.0\um\x86" ^
  kernel32.lib user32.lib shell32.lib comdlg32.lib gdi32.lib shlwapi.lib

del trpad.obj