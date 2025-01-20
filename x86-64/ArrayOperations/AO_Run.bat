setlocal enabledelayedexpansion

for %%f in ("AMS\*.asm") do (
    nasm -f win64 "%%f" -o "OBJ\%%~nf.obj"
)

set AO_OBJF=
for %%f in ("OBJ\*.obj") do (
    set AO_OBJF=!AO_OBJF! "%%f"
)

endlocal