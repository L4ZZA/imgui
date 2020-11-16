project "ImGui"
    kind "StaticLib"
    language "C++"

    targetdir ("%{wks.location}/bin/" .. outputdir .. "/external/%{prj.name}")
    objdir ("%{wks.location}/inter/" .. outputdir .. "/external/%{prj.name}")

	files
	{
        "imconfig.h",
        "imgui.h",
        "imgui.cpp",
        "imgui_draw.cpp",
        "imgui_internal.h",
        "imgui_widgets.cpp",
        "imstb_rectpack.h",
        "imstb_textedit.h",
        "imstb_truetype.h",
        "imgui_demo.cpp"
    }

    filter "system:windows"
        systemversion "latest"
        cppdialect "C++17"
        staticruntime "On"

    filter "configurations:Debug"
        defines "PYRO_DEBUG"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        defines "PYRO_RELEASE"
        runtime "Release"
        optimize "on"

    filter "configurations:Dist"
        defines "PYRO_DIST"
        runtime "Release"
        optimize "on"
