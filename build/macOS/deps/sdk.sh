#!/bin/bash -e

# This file sets the appropiate compiler and flags for compiling for macOS without XCode
sdk=macosx
osver=10.10

export OSX_COMPILER=$(xcrun --sdk $sdk --find clang)
export OSX_CC=$OSX_COMPILER
export OSX_CXX=$OSX_COMPILER
export OSX_FLAGS="-isysroot $(xcrun --sdk $sdk --show-sdk-path) -arch x86_64 -mmacosx-version-min=$osver -fvisibility=hidden -fdata-sections -ffunction-sections -fno-unwind-tables -fno-asynchronous-unwind-tables -Ofast"
export OSX_FLAGS_NOARCH="-isysroot $(xcrun --sdk $sdk --show-sdk-path) -mmacosx-version-min=$osver -fvisibility=hidden -fdata-sections -ffunction-sections -Ofast"
