@echo off
setlocal enabledelayedexpansion

set mainLoc="001C"

set BA_ASM=x86-64\BasicArithmetic\ASM
set BA_OBJ=x86-64\BasicArithmetic\OBJ
set AO_ASM=x86-64\ArrayOperations\ASM
set AO_OBJ=x86-64\ArrayOperations\OBJ
set MO_ASM=x86-64\MatrixOperation\ASM
set MO_OBJ=x86-64\MatrixOperation\OBJ

for %%f in ("%BA_ASM%\*.asm") do (
    nasm -f win64 "%%f" -o "%BA_OBJ%\%%~nf.obj"
)

for %%f in ("%AO_ASM%\*.asm") do (
    nasm -f win64 "%%f" -o "%AO_OBJ%\%%~nf.obj"
)

for %%f in ("%MO_ASM%\*.asm") do (
    nasm -f win64 "%%f" -o "%MO_OBJ%\%%~nf.obj"
)

set BA_OBJF=
for %%f in ("%BA_OBJ%\*.obj") do ( 
    set BA_OBJF=!BA_OBJF! "%%f" 
) 

set AO_OBJF=
for %%f in ("%AO_OBJ%\*.obj") do ( 
    set AO_OBJF=!AO_OBJF! "%%f" 
)

set MO_OBJF=
for %%f in ("%MO_OBJ%\*.obj") do ( 
    set MO_OBJF=!MO_OBJF! "%%f" 
)

gcc -c %mainLoc%\main.c -o %mainLoc%\main.obj -std=c11 -m64
gcc %mainLoc%\main.obj %MO_OBJF% %BA_OBJF% %AO_OBJF% -o %mainLoc%\main.exe -m64
%mainLoc%\main.exe < z_test_input.txt > z_output.txt

endlocal