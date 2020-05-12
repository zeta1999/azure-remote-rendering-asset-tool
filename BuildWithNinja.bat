@echo off 
SETLOCAL
SET OUT_DIR= %1
IF %OUT_DIR%== [] SET OUT_DIR= NinjaBuild

%CMAKE_PATH%cmake -S %~dp0 -B %OUT_DIR% -DCMAKE_EXPORT_COMPILE_COMMANDS=ON -G "Ninja" -DCMAKE_MAKE_PROGRAM=%NINJA_LOCATION%Ninja.exe
%CMAKE_PATH%cmake --build %OUT_DIR%
ENDLOCAL