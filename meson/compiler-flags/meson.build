# -- Compiler flags -----

compiler = meson.get_compiler('cpp')

debug_flags = [
  '-fexceptions',
  '-DDEBUG',
  '-g3',
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
  '-fno-omit-frame-pointer',
]

# -O3/-DNDEBUG are already applied by buildtype=release + b_ndebug=if-release;
# LTO is opted in here rather than via the global b_lto option so it doesn't
# also slow down debug builds.
release_flags = [
  '-flto',
]


if get_option('warning_level') == 'everything'
  add_project_arguments(extra_warnings, language: 'cpp')
endif

if get_option('sanitizers')
  add_project_arguments(sanitizers_flags, language: 'cpp')
  add_project_link_arguments(sanitizers_flags, language: 'cpp')
endif

# debugoptimized/minsize buildtypes intentionally receive none of the flags
# below and fall back to Meson's plain per-buildtype defaults.
if get_option('buildtype') == 'debug'
  add_project_arguments(debug_flags, language: 'cpp')

  uses_libstdcxx = compiler.compiles(
    '''
    #include <cstddef>
    #ifndef __GLIBCXX__
    #error "not libstdc++"
    #endif
    int main() { return 0; }
    ''',
    name: 'using libstdc++',
  )

  if uses_libstdcxx
    # ABI-compatible bounds checking (operator[], front()/back(), ...); safe
    # to combine with anything, including sanitizers.
    add_project_arguments('-D_GLIBCXX_ASSERTIONS', language: 'cpp')

    if get_option('sanitizers')
      # AddressSanitizer's own container-overflow instrumentation for
      # std::vector, used in place of -D_GLIBCXX_DEBUG below (libstdc++
      # documents that mode as unsupported alongside sanitizers).
      add_project_arguments('-D_GLIBCXX_SANITIZE_VECTOR', language: 'cpp')
    else
      # Bounds + iterator-invalidation checks, but changes the ABI of
      # libstdc++ containers, so it must stay off when linking prebuilt
      # static libs built without it (see external-libs/).
      add_project_arguments('-D_GLIBCXX_DEBUG', language: 'cpp')
    endif
  endif
elif get_option('buildtype') == 'release'
  add_project_arguments(release_flags, language: 'cpp')
  add_project_link_arguments(release_flags, language: 'cpp')
endif

