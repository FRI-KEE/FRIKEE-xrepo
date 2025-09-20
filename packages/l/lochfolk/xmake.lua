package("lochfolk")
    set_homepage("https://github.com/HenryAWE/Lochfolk")
    set_description("Yet another C++ virtual filesystem library")
    set_license("MIT")

    add_urls(
        "https://github.com/HenryAWE/Lochfolk/archive/$(version).tar.gz",
        "https://github.com/HenryAWE/Lochfolk/Lochfolk.git"
    )
    add_versions("v0.1.0", "ccf3b6eb6d3f3beb4116bdf6e5be30d8309514189de310c74c5d6427df2ca541")

    add_deps("minizip-ng")

    on_install(function (package)
        local configs = {}
        table.insert(configs, "--unit_test=n")
        import("package.tools.xmake").install(package, configs)
    end)
