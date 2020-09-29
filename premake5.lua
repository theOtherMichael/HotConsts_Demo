--[[
    Hot Constants Demo Premake Script

    This script is invoked by running the appropriate platform script in the 
    "scripts" folder.  It generates the library project and includes it in a 
    solution with the test project.

    This is a simple project which demonstrates HotConsts in action.
]]

local configurationName = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

workspace "HotConsts_Demo"
    startproject "HotConsts_Demo"
    configurations { "Debug", "Release" }
    platforms { "Static64", "Static32" }

-- Library project.
include "vendor/HotConsts/pm_library.lua"

-- Test project.
project "HotConsts_Demo"
    kind "ConsoleApp"
    links "HotConsts"
    language "C++"
    cppdialect "C++17"

    -- Platform-specific build settings
    filter "system:windows"
        systemversion "latest"
        staticruntime "On"
    filter "system:macosx"
        systemversion "10.15"
        links "CoreServices.framework"
    filter {}

    -- Build locations
    targetdir ("bin/" .. configurationName .. "/%{prj.name}")
    objdir ("bin-int/" .. configurationName .. "/%{prj.name}")

    -- Configurations
    filter "configurations:Debug"
        symbols "On"
        defines "HOTCONSTS_DEBUG"
    filter "configurations:Release"
        optimize "On"
    filter {}

    -- Platforms
    filter "platforms:Static64"
        architecture "x86_64"
    filter "platforms:Static32"
        architecture "x86"
    filter {}
    
    -- Files/Includes/Defines
    files { "src/**.h", "src/**.cpp" }
    sysincludedirs "vendor/HotConsts/include"
