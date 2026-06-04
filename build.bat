ml /nologo /c /coff /Cp /IC:\masm32\include dte.asm

crinkler dte.obj ^
  /OUT:dte.exe ^
  /ENTRY:MainEntry ^
  /SUBSYSTEM:WINDOWS ^
  /NOINITIALIZERS ^
  /TINYIMPORT ^
  /ORDERTRIES:2000 ^
  /LIBPATH:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.20348.0\um\x86" ^
  kernel32.lib user32.lib shell32.lib comdlg32.lib gdi32.lib

del dte.obj