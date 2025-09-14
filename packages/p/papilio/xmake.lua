package("papilio")
    set_homepage("https://github.com/HenryAWE/PapilioCharontis")
    set_description("A flexible C++ formatting library designed for i18n")
    set_license("MIT")

    add_urls(
        "https://github.com/HenryAWE/PapilioCharontis/archive/$(version).tar.gz",
        "https://github.com/HenryAWE/PapilioCharontis.git",
        "https://gitee.com/HenryAWE/PapilioCharontis.git"
    )
    add_versions("v1.0.0", "326060bf77f28be863620b761832f6022498416dc8e2cf40c9ea77b0c015ddbc")
    add_versions("v1.1.0", "23a08eedddc4369db6053955684bc7b1eac122486cacfe6a21990081950fe0c6")

    add_deps("cmake")

    on_install(function (package)
        local configs = {}
        table.insert(configs, "-DCMAKE_BUILD_TYPE=" .. (package:debug() and "Debug" or "Release"))
        import("package.tools.cmake").install(package, configs)
    end)

    on_test(function (package)
        assert(package:check_cxxsnippets({test = [[
            #include <papilio/papilio.hpp>
            std::string test()
            {
                return papilio::format("{}", 42);
            }
        ]]}, {configs = {languages = "cxx20"}}))
    end)
