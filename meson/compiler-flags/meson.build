# -- Compiler flags -----

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


if get_option('warning_level') == 'everything'
  add_project_arguments(extra_warnings, language: 'cpp')
endif

if get_option('sanitizers') == true
  add_project_arguments(sanitizers_flags, language: 'cpp')
  add_project_link_arguments(sanitizers_flags, language: 'cpp')
endif 

if get_option('buildtype') == 'debug'
  add_project_arguments(debug_flags, language: 'cpp')
elif get_option('buildtype') == 'release'
  add_project_arguments(optimization_flags, language: 'cpp')
endif

