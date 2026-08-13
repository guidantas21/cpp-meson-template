#!/bin/bash
if [ "$1" = "--check" ]; then
  clang-format --dry-run --Werror src/*.cpp include/*.hpp --verbose
else
  clang-format -i src/*.cpp include/*.hpp --verbose
fi
