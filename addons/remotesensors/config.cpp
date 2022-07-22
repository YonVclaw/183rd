#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
            "oeta_core"
        };
        author = QAUTHOR;
        authors[] = {"veteran29"};
        VERSION_CONFIG;
    };
};

#include "CfgEventHandlers.hpp"
