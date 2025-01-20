setlocal enabledelayedexpansion

for %%f in ("AMS\*.asm") do (
    nasm -f win64 "%%f" -o "OBJ\%%~nf.obj"
)

set BA_OBJF=
for %%f in ("OBJ\*.obj") do (
    set BA_OBJF=!BA_OBJF! "%%f"
)

endlocal