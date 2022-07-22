#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"OETA_main","OETA_core"};
        authors[] = {"Olsen","PiZZADOX","Sacher"};
        author = AUTHOR;
        url = URL;
        VERSION_CONFIG;
    };
};

#include "\z\oeta\addons\main\RscTitles.hpp"
#include "RscTitles.hpp"
#include "CfgEventHandlers.hpp"
#include "CfgVehicles.hpp"
#include "CfgNotifications.hpp"
