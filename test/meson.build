test_sources = [
    'test-runner.vala',
    'actionbuilder.vala',
    'app.vala',
    'build.vala',
    'config.vala',
    'cookie.vala',
    'dispatcher.vala',
    'engine.vala',
    'pluginmanifest.vala',
    'session.vala',
    'stash.vala',
    'templatecompiler.vala',
    'authorizer.vala',
    'password_type.vala',
    'request.vala',
    'form.vala',
    'formfield.vala',
    'formvalidator.vala',
    'httpmethod.vala',
    'controller_static.vala',
    'coreview_file.vala',
    'coreview_none.vala',
    'coreview_rawstring.vala',
    'coreview_redirect.vala',
    'coreview_json.vala',
    'pluginloader.vala',
    'assets/formsubclass.vala'
]

test(
    'tests',
    executable(
        'tests',
        test_sources,
        dependencies: [
            core_deps,
            libambition_dep,
            posix_dep
        ]
    ),
    workdir: meson.current_source_dir()
)
