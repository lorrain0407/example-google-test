# example-google-test

Example-google-test is a simaple project aimd to help to quick build a google unit test project. It is managed by Cmake and can be easy used in windows platform. Thanks for [Crascit](https://github.com/Crascit/DownloadProject) repo, we can download and configure google-test easily.

## Add your project

Fix `../cmake/FindExt.cmake` to add your project include dir and libraries

```

# - Try to find the EXT_LIB libraries
# Once done this will define
#
#  EXT_LIB - system has EXT_LIB
#  EXT_LIB - **the** EXT_LIB include directory
#  EXT_LIB - EXT_LIB include directories
#  EXT_LIB - the EXT source files
if(NOT QR_LIB_FOUND)

FIND_PATH(EXT_SOURCE_DIR 
   ${PROJECT_SOURCE_DIR}/../../ XXX # Your project path
   ${PROJECT_SOURCE_DIR}/../XXX # Your project path
   ${PROJECT_SOURCE_DIR}/XXX # Your project path
   # you can add project path yourself on here
   /usr/include
   /usr/local/include
)


if(EXT_SOURCE_DIR)
   set(EXT_LIB_FOUND TRUE)
   set(EXT_INCLUDE_DIRS ${EXT_SOURCE_DIR}/# your include directories )
   set(EXT_LIBRARIES ${EXT_SOURCE_DIR}/# your libiraries)
endif()


endif()

```

## Compile
Compile this project using the standard cmake routine:

```

mkdir build
cd build
cmake ..
make

```

This should find and build the dependencies and create a exampleTest binary.

## Dependencies

If you create your project at `/path/to/your project/` ,then a good place to clone this library is /path/to/example-google-test/.