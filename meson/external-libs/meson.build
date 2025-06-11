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

# ---- CPLEX ----- 

# cplex_dep = dependency('cplex', required: false)
#
# if not cplex_dep.found()
#   cplex_root = get_option('cplex_root')
#
#   if not cplex_root.startswith('/')
#     error('cplex_root must be an absolute path.')
#   endif
#
#   compiler = meson.get_compiler('cpp')
#
#   cplex_libdir = join_paths(cplex_root, 'cplex', 'lib', 'x86-64_linux', 'static_pic')
#   concert_libdir = join_paths(cplex_root, 'concert', 'lib', 'x86-64_linux', 'static_pic')
#   cplex_incdir = join_paths(cplex_root, 'cplex', 'include')
#   concert_incdir = join_paths(cplex_root, 'concert', 'include')
#
#   cplex_lib = compiler.find_library('cplex', dirs: cplex_libdir)
#   ilocplex_lib = compiler.find_library('ilocplex', dirs: cplex_libdir)
#   concert_lib = compiler.find_library('concert', dirs: concert_libdir)
#
#   dl_dep = compiler.find_library('dl', required: true)
#   threads_dep = dependency('threads')
#
#   cplex_inc = include_directories(cplex_incdir, concert_incdir)
#
#   cplex_dep = declare_dependency(
#     dependencies: [cplex_lib, ilocplex_lib, concert_lib, threads_dep, dl_dep],
#     include_directories: cplex_inc,
#     link_args: ['-Wl,-rpath,' + cplex_libdir, '-Wl,-rpath,' + concert_libdir]
#   )
# endif
#
# external_dependencies += cplex_dep
