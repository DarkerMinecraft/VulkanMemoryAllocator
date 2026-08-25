project "VulkanMemoryAllocator"
    kind "None"
    language "C++"

    -- VMA is a single-header library. Its own CMakeLists.txt only declares an
    -- INTERFACE target (add_library(VulkanMemoryAllocator INTERFACE)) exposing
    -- include/ - there's no source of its own to compile here. Mirror that:
    -- this project just surfaces the header for the IDE and hands out its
    -- include dir via IncludeDir.VulkanMemoryAllocator (see Dependencies.lua).
    --
    -- A consuming project must #define VMA_IMPLEMENTATION in exactly one .cpp
    -- before #include <vk_mem_alloc.h> to generate the implementation.
    files
    {
        "include/vk_mem_alloc.h"
    }

    includedirs
    {
        "include"
    }
