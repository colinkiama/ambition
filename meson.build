project(
    'Ambition', 'vala', 'c',
    version: '0.1',
)

posix_dep = meson.get_compiler('vala').find_library('posix')

core_deps = [
    dependency('glib-2.0', version: '>=2.32'),
    dependency('gee-0.8'),
    dependency('gio-2.0'),
    dependency('json-glib-1.0'),
    dependency('gmodule-2.0'),
    dependency('libsoup-2.4'),
    dependency('log4vala-0.2'),
]

PKG_CONFIG_DEPS = [
    'glib-2.0',
    'gee-0.8',
    'gio-2.0',
    'json-glib-1.0',
    'gmodule-2.0',
    'libsoup-2.4',
    'log4vala-0.2'
]

pkgconfig = import('pkgconfig')

vapi_dir = join_paths (get_option('datadir'), 'vala', 'vapi')

add_project_arguments(['--enable-experimental'], language: 'vala')

g_ir_compiler = find_program('g-ir-compiler', required: false)

subdir('lib')
subdir('src')
subdir('test')
subdir('share')
