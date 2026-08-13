# C++ Meson Template

Simple template for C++ projects with [Meson Build System](https://mesonbuild.com/). This template follows this structure:

```
├── .clang-format
├── .clang-tidy
├── .github
│   └── workflows
│       └── main.yml
├── .gitignore
├── include
├── meson
│   ├── compiler-flags
│   │   └── meson.build
│   ├── external-libs
│   │   └── meson.build
│   ├── meson.build
│   └── wrapdb-packages
│       └── meson.build
├── meson.build
├── meson.options
├── README.md
├── scripts
│   ├── format.sh
│   └── lint.sh
└── src
    ├── main.cpp
    └── meson.build
```

Here is an explanation of what is each component:

- `.clang-format`: C++ code formatter;
- `.clang-tidy`: C++ code linter;
- `.github/workflows/main.yml`: CI pipeline — builds debug, release and sanitized configurations, then runs the lint/format checks;
- `.gitignore`: Set what git must ignore (compiler generated files, build directories, ...);
- `include/`: Directory to store the header files (`.hpp`);
- `meson/`: Meson configuration, split by concern:
  - `compiler-flags/`: warning, debug and sanitizer flags, applied per build type;
  - `wrapdb-packages/`: templates for adding [WrapDB](https://mesonbuild.com/Wrapdb-projects.html) dependencies (argparse, fmt, spdlog, gtest, catch2, ...);
  - `external-libs/`: templates for linking libraries that aren't on WrapDB (OR-Tools, CPLEX, ...);
- `meson.build`: Root Meson build definition — project metadata and the executable target;
- `meson.options`: Project build options (e.g. `sanitizers`);
- `scripts/`: Helper scripts to format (`format.sh`) and lint (`lint.sh`) the code, also used by CI;
- `src/`: Directory to store the source files (`.cpp`, `.cc`, ...);
- `src/meson.build`: Lists the source files for Meson;
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

To also enable extra warnings (`-Wshadow`, `-Wconversion`, `-Wsign-conversion`), add `-Dwarning_level=everything` to either command.

For a debug build with AddressSanitizer/UndefinedBehaviorSanitizer, setup a `build_sanitizers/` directory with `-Dsanitizers=true`. Clang has better sanitizer support than GCC, so it's recommended for this build:

```
CC=clang CXX=clang++ meson setup build_sanitizers --buildtype=debug -Dsanitizers=true
```

#### 4. Compile and run:

Compile the build:

```
meson compile -C <build_directory>
```

Run the executable:

```
./<build_directory>/<project_name>
```

#### 5. Format and lint:

```
./scripts/format.sh
./scripts/lint.sh
```

`lint.sh` expects a configured build directory named `build` (used to locate `compile_commands.json`).

#### 6. Add dependencies:

See `meson/wrapdb-packages/meson.build` for WrapDB packages (argparse, fmt, spdlog, gtest, catch2, ...) and `meson/external-libs/meson.build` for libraries that need to be linked manually (OR-Tools, CPLEX, ...). Both files have commented-out templates ready to uncomment.

#### 7. Write a `README.md` for your project.
