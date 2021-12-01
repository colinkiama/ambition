sources = files (
    'Binary.vala',
    'Shell.vala',
)

bin_deps = [
    dependency('readline'),
    posix_dep,
    libambition_dep
]

ambition_bin = executable (
    meson.project_name(),
    sources,
    dependencies: [
        core_deps,
        bin_deps,
    ],
    install: true
)
