workspace "unify2"
    startproject "unifyeditor2"
    architecture "x64"

    configurations {
        "Debug",
        "Release"
    }

targetDirectory = "bin/%{cfg.buildcfg}/%{prj.name}"

objectDirectory = "bin-obj/%{cfg.buildcfg}/%{prj.name}"

project "unifyeditor2"
    location "unifyeditor2"
    kind "ConsoleApp"
    language "C++"
    cppdialect "C++23"

    targetdir(targetDirectory)
    objdir(objectDirectory)

    files {
        "%{prj.name}/src/**.h",
        "%{prj.name}/src/**.cpp",
    }

    flags {
        "FatalWarnings"
    }