#!/bin/bash
clang-tidy -p build {src/*.cpp,include/*.hpp} --use-color 
