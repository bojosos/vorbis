project "libvorbis"
	kind "StaticLib"
	language "C"
    staticruntime "off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"lib/bitrate.c",
        "lib/block.c",
        "lib/codebook.c",
        "lib/envelope.c",
        "lib/floor0.c",
        "lib/floor1.c",
        "lib/info.c",
        "lib/lookup.c",
        "lib/lookup.h",
        "lib/lpc.c",
        "lib/lpc.h",
        "lib/lsp.c",
        "lib/lsp.h",
        "lib/mapping0.c",
        "lib/mdct.c",
        "lib/mdct.h",
        "lib/psy.c",
        "lib/psy.h",
        "lib/registry.c",
        "lib/registry.h",
        "lib/res0.c",
        "lib/res0.h",
        "lib/sharedbook.c",
        "lib/smallft.c",
        "lib/smallft.h",
        "lib/synthesis.c",
        "lib/vorbisenc.c",
        "lib/vorbisfile.c",
        "lib/window.c",
        "lib/window.h",
        
        "include/**.h",
	}

	includedirs
	{
		"include",
		"../libogg/include",
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"

	filter "system:linux"
		pic "On"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
