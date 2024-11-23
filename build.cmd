@echo off
cd /d "%~dp0"

md .bin
md .cmake

cd .cmake
cmake -G "Unix Makefiles" -DALSOFT_NO_CONFIG_UTIL=ON  -DBUILD_SHARED_LIBS=1 -DCMAKE_INSTALL_PREFIX="../.bin" -DCMAKE_BUILD_TYPE:STRING=Release -DCMAKE_EXPORT_COMPILE_COMMANDS:BOOL=TRUE ..
make -j4
make DESTDIR="../.bin" install