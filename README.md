# Dynamic Linking Extension for GNU Windows

## Using This Library

### Using CMake

Once the library has been installed, add to your project `CMakeLists.txt` :

```cmake
...
find_package(dlfcn-win32 REQUIRED)
...
target_link_libraries(<target> dlfcn-win32::dl)
...
```

If you want to use this library in a cross-platform project, a convenient way
to proceed is to define the CMake variable [`CMAKE_DL_LIBS`](https://cmake.org/cmake/help/latest/variable/CMAKE_DL_LIBS.html) (that is normally empty on Windows) and then use it for linking:

```cmake
...
if (WIN32)
  find_package(dlfcn-win32 REQUIRED)
  set(CMAKE_DL_LIBS dlfcn-win32::dl)
endif ()  
...
target_link_libraries(<target> ${CMAKE_DL_LIBS})
...
```

When cross-compiling you might want to set [`CMAKE_CROSSCOMPILING_EMULATOR`](https://cmake.org/cmake/help/latest/variable/CMAKE_CROSSCOMPILING_EMULATOR.html) to the path of wine to run tests.
