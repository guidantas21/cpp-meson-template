project(
  'project', 
  'cpp',
  version : '0.1',
  default_options : [
    'buildtype=debug',
    'cpp_std=c++23',
    'b_ndebug=if-release',
    'b_lto=true',
    'default_library=static',
  ],
)

# source files -----

subdir('src')

# include directory -----

incdir = include_directories('include')

# compiler flags -----
debug_flags = [
  '-fexceptions',
  '-DDEBUG',
  '-g3',
  '-fmax-errors=1',
  '-D_GLIBCXX_DEBUG',
  '-pedantic',
  '-pedantic-errors',
  '-fstack-protector-all',
]

extra_warnings = [
  '-Wshadow',
  '-Wconversion',
  '-Wsign-conversion',
]

sanitizers_flags = [
  '-fsanitize=address',
  '-fsanitize=undefined',
]

optimization_flags = [
  '-O3',
  '-DNDEBUG'
]

if get_option('buildtype') == 'debug'
    add_project_arguments(debug_flags, language: 'cpp')
    add_project_arguments(sanitizers_flags, language: 'cpp')
elif get_option('buildtype') == 'release'
    add_project_arguments(optimization_flags, language: 'cpp')
endif

executable(
  meson.project_name(), 
  sources,
  include_directories : [incdir],
)

