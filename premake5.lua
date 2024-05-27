project "imgui"
	kind "StaticLib"
    language "C++"
    staticruntime "on"

	targetdir ("bin/" .. project().name .. "/%{cfg.buildcfg}")
	objdir ("bin-int/" .. project().name .. "/%{cfg.buildcfg}")

	files
	{
		"*.h",
		"*.cpp",
		"*.c"
	}

	filter "configurations:Debug"
        symbols "On"
		optimize "Off"
		buildoptions "/MDd"

    filter "configurations:Release"
        optimize "On"
		buildoptions "/MD"
