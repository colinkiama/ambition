lib_name_template = '@0@-@1@'
lib_name = lib_name_template.format(
    meson.project_name (),
    meson.project_version
)

lib_sources = files (
    'Action.vala'
    'Actions.vala'
    'ActionBuilder.vala'
    'ActionMethod.vala'
    'App.vala'
    'Application.vala'
    'Build.vala'
    'Component.vala'
    'Config.vala'
    'Cookie.vala'
    'Dispatcher.vala'
    'DispatcherUtils.vala'
    'HttpMethod.vala'
    'IActionFilter.vala'
    'Logger.vala'
    'Request.vala'
    'RequestFile.vala'
    'Response.vala'
    'Result.vala'
    'Stash.vala'
    'State.vala'
    'TemplateCompiler.vala'
    'Engine/Base.vala'
    'Engine/Raw.vala'
    'Engine/Test.vala'
    'Authorization/Builder.vala'
    'Authorization/Authorize.vala'
    'Authorization/IAuthorizer.vala'
    'Authorization/IUser.vala'
    'Authorization/IPasswordType.vala'
    'Authorization/Authorizer/Htpasswd.vala'
    'Authorization/Authorizer/Flat.vala'
    'Authorization/User/Htpasswd.vala'
    'Authorization/User/Flat.vala'
    'Authorization/PasswordType/Hashed.vala'
    'Authorization/PasswordType/SHA1.vala'
    'Authorization/PasswordType/SHA256.vala'
    'Authorization/PasswordType/MD5.vala'
    'Controller/Static.vala'
    'CoreView/File.vala'
    'CoreView/JSON.vala'
    'CoreView/None.vala'
    'CoreView/Redirect.vala'
    'CoreView/RawString.vala'
    'CoreView/Template.vala'
    'Form/Button.vala'
    'Form/CheckboxGroupInput.vala'
    'Form/GroupInput.vala'
    'Form/FieldRenderer.vala'
    'Form/FormDefinition.vala'
    'Form/HiddenInput.vala'
    'Form/Tag.vala'
    'Form/TextInput.vala'
    'Form/PasswordInput.vala'
    'Form/RadioGroupInput.vala'
    'Form/ResetButton.vala'
    'Form/SelectGroupInput.vala'
    'Form/SubmitButton.vala'
    'Form/Textarea.vala'
    'Form/Validator.vala'
    'Plugin/HttpPluginService.vala'
    'Plugin/IPluginService.vala'
    'Plugin/LocalPluginService.vala'
    'Plugin/PluginManifest.vala'
    'Plugin/PluginResult.vala'
    'PluginSupport/IPlugin.vala'
    'PluginSupport/PluginLoader.vala'
    'Session/Interface.vala'
    'Session/IStorable.vala'
    'Session/SessionPlugin.vala'
    'Session/StorableFile.vala'
    'Session/StorableMemory.vala'
    'Testing/AbstractTestCase.vala'
    'Testing/Helper.vala'
    'Testing/TestResponse.vala'
    'Utility/Clean.vala'
    'Utility/Creator.vala'
    'Utility/IUtility.vala'
    'Utility/Monitor.vala'
    'Utility/Run.vala'
    'Utility/Plugin.vala'
    'Utility/Scaffold.vala'
    'Utility/ScaffoldManifest.vala'
    'Utility/Utility.vala'
    'Utility/UtilityLoader.vala'
)

lib_deps = [
    dependency('posix')
]

libambition = shared_library (
    lib_name,
    lib_sources,
    version: project_version,
    vala_header: lib_name + '.h',
    vala_vapi: lib_name + '.vapi',
    vala_args: [
        '--abi-stability'
    ],
    install: true,
    install_dir: [
        true,
        get_option('includedir') / lib_name + '-' + meson.project_name(),
        vapi_dir
    ]

)
