ml /nologo /c /coff /Cp /Id:\masm32\include trpad.asm

link trpad.obj ^
  /OUT:trpad.exe ^
  /NODEFAULTLIB ^
  /RELEASE ^
  /FIXED ^
  /DYNAMICBASE:NO ^
  /MERGE:.rdata=.text ^
  /SUBSYSTEM:WINDOWS ^
  /ENTRY:MainEntry ^
  /SAFESEH:NO ^
  kernel32.lib user32.lib shell32.lib comdlg32.lib gdi32.lib shlwapi.lib

del trpad.obj