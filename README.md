# C++ Meson Template

Simple template for C++ projects with [Meson Build System](https://mesonbuild.com/). This template follows this structure:

```
├── .clang-format
├── .clang-tidy
├── .gitignore
├── include
├── meson.build
├── README.md
└── src
    ├── main.cpp
    └── meson.build
```

Here is an explanation of what is each component:

- `.clang-format`: C++ code formatter;
- `.clang-tidy`: C++ code linter;
- `.gitignore`: Set what git must ignore (compiler generated files, build directories, ...);
- `include/`: Directory to store the header files (`.hpp`);
- `src/`: Directory to store the source files (`.cpp`, `.cc`, ...);
- `src/meson.build`: Configure source files for Meson;
- `meson`: Configure Meson;
- `README.md`: Documentation file in markdown;
