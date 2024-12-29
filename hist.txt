@echo off
setlocal enabledelayedexpansion

set BA_ASM=BasicArithmetic\ASM
set BA_OBJ=BasicArithmetic\OBJ

set AO_ASM=ArrayOperations\ASM
set AO_OBJ=ArrayOperations\OBJ

for %%f in ("%BA_ASM%\*.asm") do (
    nasm -f win64 "%%f" -o "%BA_OBJ%\%%~nf.obj"
)

for %%f in ("%AO_ASM%\*.asm") do (
    nasm -f win64 "%%f" -o "%AO_OBJ%\%%~nf.obj"
)

set BA_OBJF=
for %%f in ("%BA_OBJ%\*.obj") do ( 
    set BA_OBJF=!BA_OBJF! "%%f" 
) 

set A0_OBJF=
for %%f in ("%AO_OBJ%\*.obj") do ( 
    set AO_OBJF=!AO_OBJF! "%%f" 
)

gcc -c main.c -o main.obj -std=c11 -m64
gcc main.obj %BA_OBJF% %AO_OBJF% -o main.exe -m64
main.exe < test_input.txt

endlocal