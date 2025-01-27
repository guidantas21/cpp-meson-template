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

## Usage
#### 1. [Create a repository from this template](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template);

#### 2. Setup meson project name:

In the `meson.build`, you can change your project name to whatever you want:

```
project(
    "<project_name>",
    ...
)
```

#### 3. Setup the meson build:

Assuming that the `build/` is the release build directory:

```
meson setup build --buildtype=release
```

For debugging, setup a `build_debug/` directory:

```
meson setup build_debug --buildtype=debug
```

#### 4. Compile and run:

Compile the build:

```
meson compile -C <build_directory>
```

Run the the executable:

```
./<build_directory>/<project_name>
```

#### 5. Write a `README.md` for your project.
