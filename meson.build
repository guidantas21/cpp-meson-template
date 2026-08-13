project(
  'project', 
  'cpp',
  default_options : [
    'buildtype=release',
    'cpp_std=c++23',
    'b_ndebug=if-release',
    'default_library=static',
  ],
)

subdir('meson')
subdir('src')
incdir = include_directories('include')

executable(
  meson.project_name(), 
  sources,
  include_directories: [incdir, incdir_deps],
  dependencies: [dependencies, external_dependencies],
  install: true
)