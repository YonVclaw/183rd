#define COMPONENT shotcount
#define COMPONENT_BEAUTIFIED ShotCount
#include "\z\oeta\addons\main\script_mod.hpp"

#define DEBUG_MODE_FULL
#define DISABLE_COMPILE_CACHE
#define ENABLE_PERFORMANCE_COUNTERS

#ifdef DEBUG_ENABLED_SHOTCOUNT
    #define DEBUG_MODE_FULL
#endif

#ifdef DEBUG_SETTINGS_CORE
    #define DEBUG_SETTINGS DEBUG_ENABLED_SHOTCOUNT
#endif

#include "\z\oeta\addons\main\script_macros.hpp"
