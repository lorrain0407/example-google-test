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