set_xmakever("2.7.1")
set_project("nanovg_bgfx")

add_requires("bgfx")
add_requires("stb")

target("nanovg_bgfx")
    set_kind("static")
    add_packages("bgfx", {public = true})
    add_packages("stb", {public = true})

    add_files("nanovg_bgfx.cpp")
    add_files("nanovg.cpp")
    add_headerfiles("nanovg_bgfx.h")
    add_headerfiles("nanovg.h")
    add_headerfiles("fontstash.h")
    add_headerfiles("fs_nanovg_fill.bin.h")
    add_headerfiles("vs_nanovg_fill.bin.h")
    add_includedirs(".", {public = true})
