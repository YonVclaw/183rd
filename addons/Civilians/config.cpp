#include "script_component.hpp"

class CfgPatches {
    class OETA_Civilians {
        author = AUTHOR;
        name = NAME;
        url = URL;
        units[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
            "A3_UI_F",
            "A3_UI_F_Curator",
            "A3_Functions_F_Curator",
            "A3_Modules_F",
            "A3_Modules_F_Curator",
            "A3_Modules_F_Bootcamp_Misc",
            "cba_main",
            "cba_xeh"
        };
        version = VERSION;
        authors[] = {"MitchJC", "Mokka"};
        weapons[] = {};
    };
};

class CfgFunctions {

    #include "CfgFunctions.hpp"
};

class Extended_PreInit_EventHandlers {
    class OETA_Civilians_Event {
        init = "call compile preprocessFileLineNumbers 'z\oeta\Addons\Civilians\XEH_preInit.sqf'";
    };
};