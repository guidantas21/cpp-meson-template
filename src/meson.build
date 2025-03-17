sources = files(
  'main.cpp',
)

incdir = include_directories('../include')

executable(
  meson.project_name(), 
  sources,
  include_directories: incdir,
  dependencies: dependencies,
  install: true
)

