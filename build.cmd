@echo off
cd /d "%~dp0"

md .bin
cd .bin

cmake -G "Unix Makefiles" -DCMAKE_INSTALL_PREFIX=./ ..

cmake --build .
cmake --install .
