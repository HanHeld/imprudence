# -*- cmake -*-
#
# Definitions of variables used throughout the Second Life build
# process.
#
# Platform variables:
#
#   DARWIN  - Mac OS X
#   LINUX   - Linux
#   WINDOWS - Windows
#
# What to build:
#
#   VIEWER - viewer and other viewer-side components
#   SERVER - simulator and other server-side bits


# Relative and absolute paths to subtrees.

set(LIBS_CLOSED_PREFIX)
set(LIBS_OPEN_PREFIX)
set(LIBS_SERVER_PREFIX)
set(SCRIPTS_PREFIX ../scripts)
set(SERVER_PREFIX)
set(VIEWER_PREFIX)

set(LIBS_CLOSED_DIR ${CMAKE_SOURCE_DIR}/${LIBS_CLOSED_PREFIX})
set(LIBS_OPEN_DIR ${CMAKE_SOURCE_DIR}/${LIBS_OPEN_PREFIX})
set(LIBS_SERVER_DIR ${CMAKE_SOURCE_DIR}/${LIBS_SERVER_PREFIX})
set(SCRIPTS_DIR ${CMAKE_SOURCE_DIR}/${SCRIPTS_PREFIX})
set(SERVER_DIR ${CMAKE_SOURCE_DIR}/${SERVER_PREFIX})
set(VIEWER_DIR ${CMAKE_SOURCE_DIR}/${VIEWER_PREFIX})

set(LIBS_PREBUILT_DIR ${CMAKE_SOURCE_DIR}/../libraries CACHE PATH
    "Location of prebuilt libraries.")

if (EXISTS ${CMAKE_SOURCE_DIR}/Server.cmake)
  # We use this as a marker that you can try to use the proprietary libraries.
  set(INSTALL_PROPRIETARY ON CACHE BOOL "Install proprietary binaries")
endif (EXISTS ${CMAKE_SOURCE_DIR}/Server.cmake)


if (${CMAKE_SYSTEM_NAME} MATCHES "Windows")
  set(WINDOWS ON BOOL FORCE)
  set(ARCH i686)
  set(LL_ARCH ${ARCH}_win32)
  set(LL_ARCH_DIR ${ARCH}-win32)
  set(WORD_SIZE 32)
endif (${CMAKE_SYSTEM_NAME} MATCHES "Windows")

if (${CMAKE_SYSTEM_NAME} MATCHES "Linux")
  set(LINUX ON BOOl FORCE)

  # If someone has specified a word size, use that to determine the
  # architecture.  Otherwise, let the architecture specify the word size.

  if ("$ENV{WORD_SIZE}" MATCHES "32")
      set(WORD_SIZE 32)
  elseif ("$ENV{WORD_SIZE}" MATCHES "64")
      set(WORD_SIZE 64)
  endif ()

  if (WORD_SIZE EQUAL 32)
    set(ARCH i686)
  elseif (WORD_SIZE EQUAL 64)
    set(ARCH x86_64)
  else (WORD_SIZE EQUAL 32)
    execute_process(COMMAND uname -m COMMAND sed s/i.86/i686/
                    OUTPUT_VARIABLE ARCH OUTPUT_STRIP_TRAILING_WHITESPACE)
    if (ARCH STREQUAL x86_64)
      set(WORD_SIZE 64)
    else (ARCH STREQUAL x86_64)
      set(WORD_SIZE 32)
    endif (ARCH STREQUAL x86_64)
  endif (WORD_SIZE EQUAL 32)

  set(LL_ARCH ${ARCH}_linux)
  set(LL_ARCH_DIR ${ARCH}-linux)
endif (${CMAKE_SYSTEM_NAME} MATCHES "Linux")

if (${CMAKE_SYSTEM_NAME} MATCHES "Darwin")
  set(DARWIN 1)

  # Incorporated settings from
  # http://imprudenceviewer.org/w/index.php?title=How_to_compile&oldid=1647#Mac
  # so that people don't have to set them every time they run develop.py
  # At least on Xcode 3.2.6 the default of LLVM gcc 4.2 seems to work fine now.
  #set(CMAKE_XCODE_ATTRIBUTE_GCC_VERSION  "4.0")
  set(CMAKE_XCODE_ATTRIBUTE_ARCHS '$(ARCHS_STANDARD_32_BIT)')
  set(CMAKE_XCODE_ATTRIBUTE_VALID_ARCHS "i386 ppc")
  # set(CMAKE_XCODE_ATTRIBUTE_ONLY_ACTIVE_ARCH "NO")

  # set this dynamically from the build system now -
  # NOTE: wont have a distributable build unless you add this on the configure line with:
  # -DCMAKE_OSX_ARCHITECTURES:STRING='i386'
  # I don't think PPC builds work, and I don't have one to test on.
  #set(CMAKE_OSX_ARCHITECTURES i386;ppc)
  set(CMAKE_OSX_ARCHITECTURES i386)
  # 10.5 SDK is not supported in Xcode 4 and later, but it's the most tested.  Leave this to be set on the command line, since apparently that's not overriding this.  sigh
  #set(CMAKE_OSX_SYSROOT /Developer/SDKs/MacOSX10.5.sdk)
  if (CMAKE_OSX_ARCHITECTURES MATCHES "i386")
    set(ARCH i386)
  endif (CMAKE_OSX_ARCHITECTURES MATCHES "i386")
  set(LL_ARCH ${ARCH}_darwin)
  set(LL_ARCH_DIR universal-darwin)
endif (${CMAKE_SYSTEM_NAME} MATCHES "Darwin")

# Default deploy grid
set(GRID agni CACHE STRING "Target Grid")

set(VIEWER ON CACHE BOOL "Build Second Life viewer.")
set(VIEWER_CHANNEL "Imprudence" CACHE STRING "Viewer Channel Name")
set(VIEWER_LOGIN_CHANNEL ${VIEWER_CHANNEL} CACHE STRING "Fake login channel for A/B Testing")

set(STANDALONE OFF CACHE BOOL "Do not use Imprudence-supplied prebuilt libraries.")

if (NOT STANDALONE AND EXISTS ${CMAKE_SOURCE_DIR}/llphysics)
    set(SERVER ON CACHE BOOL "Build Second Life server software.")
endif (NOT STANDALONE AND EXISTS ${CMAKE_SOURCE_DIR}/llphysics)

if (LINUX AND SERVER AND VIEWER)
  MESSAGE(FATAL_ERROR "
The indra source does not currently support building SERVER and VIEWER at the same time.
Please set one of these values to OFF in your CMake cache file.
(either by running ccmake or by editing CMakeCache.txt by hand)
For more information, please see JIRA DEV-14943 - Cmake Linux cannot build both VIEWER and SERVER in one build environment
  ")
endif (LINUX AND SERVER AND VIEWER)

source_group("CMake Rules" FILES CMakeLists.txt)
