project "libvorbis"
	kind "StaticLib"
	language "C"
    staticruntime "off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
        "lib/mdct.c",
		"lib/smallft.c",
		"lib/block.c",
		"lib/envelope.c",
		"lib/window.c",
		"lib/lsp.c",
		"lib/lpc.c",
		"lib/analysis.c",
		"lib/synthesis.c",
		"lib/psy.c",
		"lib/info.c",
		"lib/floor1.c",
		"lib/floor0.c",
		"lib/res0.c",
		"lib/mapping0.c",
		"lib/registry.c",
		"lib/codebook.c",
		"lib/sharedbook.c",
		"lib/lookup.c",
		"lib/bitrate.c",
		"lib/vorbisfile.c",
		"lib/vorbisenc.c",

        
        "lib/envelope.h",
		"lib/lpc.h",
		"lib/lsp.h",
		"lib/codebook.h",
		"lib/misc.h",
		"lib/psy.h",
		"lib/masking.h",
		"lib/os.h",
		"lib/mdct.h",
		"lib/smallft.h",
		"lib/highlevel.h",
		"lib/registry.h",
		"lib/scales.h",
		"lib/window.h",
		"lib/lookup.h",
		"lib/lookup_data.h",
		"lib/codec_internal.h",
		"lib/backends.h",
		"lib/bitrate.h"
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
