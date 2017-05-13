@echo off
if exist mydll.obj del mydll.obj
if exist mydll.exp del mydll.exp
if exist mydll.lib del mydll.lib
if exist mydll.dll del mydll.dll
if exist xrGame.dll del xrGame.dll
if exist corrections_list_tmp.txt del corrections_list_tmp.txt

..\..\tools\ml.exe /c /coff /DOGSE_BUILD /Fo mydll.obj ..\mydll.asm
..\..\tools\link.exe  /SUBSYSTEM:WINDOWS /DLL /OUT:mydll.dll /DEF:..\mydll.def mydll.obj

if exist mydll.obj del mydll.obj
if exist mydll.exp del mydll.exp
if exist mydll.lib del mydll.lib
if exist xrGame.dll del xrGame.dll
if exist corrections_list_tmp.txt del corrections_list_tmp.txt

..\..\tools\gpp.exe -o corrections_list_tmp.txt -DOGSE +z --nostdinc corrections_list.txt
..\..\tools\bspatch.exe xrGame_orig.dll xrGame.dll xrGame.diff
..\..\tools\patcher.exe xrGame.dll mydll.dll corrections_list_tmp.txt

if exist mydll.dll del mydll.dll
if exist corrections_list_tmp.txt del corrections_list_tmp.txt

pause