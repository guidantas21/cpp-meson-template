# -- Dependencies -----

external_dependencies = []

# -- External libs ----

# Importing external libraries is a bit more complex, but here are some templates:

# --- Optimization libs ----

# ---- OR-Tools -----

# ortools_dep = dependency('ortools', required: false)
#
# if not ortools_dep.found()
#   ortools_root = get_option('ortools_root')
#
#   if not ortools_root.startswith('/')
#     error('ortools_root must be an absolute path.')
#   endif
#
#   compiler = meson.get_compiler('cpp')
#
#   ortools_lib_dir = join_paths(ortools_root, 'lib')
#   ortools_inc_dir = join_paths(ortools_root, 'include')
#
#   # Find the libraries
#   ortools_lib = compiler.find_library('ortools', dirs: ortools_lib_dir)
#   protobuf_lib = compiler.find_library('protobuf', dirs: ortools_lib_dir)
#   absl_sync_lib = compiler.find_library('absl_synchronization', dirs: ortools_lib_dir)
#   absl_strings_lib = compiler.find_library('absl_strings', dirs: ortools_lib_dir)
#   absl_base_lib = compiler.find_library('absl_base', dirs: ortools_lib_dir)
#
#   # Threads and math
#   threads_dep = dependency('threads')
#   math_lib = compiler.find_library('m')
#
#   # Include directory
#   ortools_inc = include_directories(ortools_inc_dir)
#
#   # Declare final OR-Tools dependency
#   ortools_dep = declare_dependency(
#     dependencies: [
#       ortools_lib,
#       protobuf_lib,
#       absl_sync_lib,
#       absl_strings_lib,
#       absl_base_lib,
#       threads_dep,
#       math_lib
#     ],
#     include_directories: ortools_inc,
#     link_args: ['-Wl,-rpath,' + ortools_lib_dir]
#   )
# endif
#
# external_dependencies += ortools_dep

