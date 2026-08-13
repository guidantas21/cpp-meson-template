# Each subdir below defines variables that stay in scope for the rest of the
# build (including src/meson.build and the root meson.build), since Meson
# shares scope across subdir() calls rather than sandboxing them:
#   wrapdb-packages/  -> dependencies, incdir_deps
#   external-libs/    -> external_dependencies
subdir('compiler-flags')
subdir('wrapdb-packages')
subdir('external-libs')
