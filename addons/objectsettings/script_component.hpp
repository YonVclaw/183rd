#define COMPONENT objectsettings
#define COMPONENT_BEAUTIFIED ObjectSettings
#include "\z\oeta\addons\main\script_mod.hpp"

#define DEBUG_MODE_FULL
#define DISABLE_COMPILE_CACHE
#define ENABLE_PERFORMANCE_COUNTERS

#ifdef DEBUG_ENABLED_OBJECTSETTINGS
    #define DEBUG_MODE_FULL
#endif

#ifdef DEBUG_SETTINGS_CORE
    #define DEBUG_SETTINGS DEBUG_ENABLED_OBJECTSETTINGS
#endif

#include "\z\oeta\addons\main\script_macros.hpp"
