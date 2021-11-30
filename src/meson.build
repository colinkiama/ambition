sources = files (
    'Binary.vala',
    'Shell.vala',
)

bin_deps = [
    dependency('readline'),
    dependency('posix')
]

vala_lint = executable (
    meson.project_name(),
    sources,
    dependencies: [
        core_deps,
        bin_deps,
    ],
    vala_args: '--thread'
)
