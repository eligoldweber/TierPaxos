# Install script for directory: /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/sample

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE PROGRAM FILES
    "/Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/cmake-build-debug/sample/acceptor"
    "/Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/cmake-build-debug/sample/proposer"
    "/Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/cmake-build-debug/sample/replica"
    "/Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/cmake-build-debug/sample/client"
    )
endif()

