#include "script_component.hpp"
class CfgVehicles {
    // Box
    class NATO_Box_Base {
        class EventHandlers;
    };

    // Rebreather
    class Vest_V_RebreatherB;
    class GVAR(Item_vest_rebreather): Vest_V_RebreatherB {
        scope = 2;
        scopeCurator = 2;
        author = QAUTHOR;
        displayName = "[183rd] Rebreather";
        class TransportItems {
            class GVAR(rebreather) {
                name = QGVAR(rebreather);
                count = 1;
            };
        };
    };

    class Item_U_B_Wetsuit;
    class GVAR(Item_Wetsuit): Item_U_B_Wetsuit {
        author = QAUTHOR;
        displayName = "[183rd] Wetsuit";
        class TransportItems {
            class GVAR(Wetsuit) {
                name = QGVAR(Wetsuit);
                count = 1;
            };
        };
    };

    class GVAR(resupply): NATO_Box_Base {
        scope = 2;
        scopeCurator = 2;
        author = QAUTHOR;
        mapSize=1.53;
        class SimpleObject {
            eden=1;
            animate[]={};
            hide[]={};
            verticalOffset=0.79000002;
            verticalOffsetWorld=0;
            init="[this,10,true,true] call OETA_fnc_AmmoCrate;";
        };
        displayName = "[183rd] Resupply";
        model="A3\Weapons_F\Ammoboxes\AmmoVeh_F";
        icon="iconCrateVeh";
        slingLoadCargoMemoryPoints[]= {
            "SlingLoadCargo1",
            "SlingLoadCargo2",
            "SlingLoadCargo3",
            "SlingLoadCargo4"
        };
        class EventHandlers: EventHandlers {
        init = "[this,10,true,true] call OETA_fnc_AmmoCrate;";
        };
        editorPreview="\A3\EditorPreviews_F\Data\CfgVehicles\Box_NATO_AmmoVeh_F.jpg";
        _generalMacro="Box_NATO_AmmoVeh_F";
        hiddenSelectionsTextures[]= {
            "z\oeta\addons\Equipment\data\ammobox_signs_ca_183.paa",
            "z\oeta\addons\Equipment\data\ammo183_co.paa",
        };
        class TransportMagazines {
        };
        class TransportWeapons {
        };
        class TransportItems {
        };
        transportAmmo=30000;
        supplyRadius=10;
    };
    class GVAR(arsenal): NATO_Box_Base {
        scope = 2;
        scopeCurator = 2;
        author = QAUTHOR;
        mapSize=1.53;
        class SimpleObject {
            eden=1;
            animate[]={};
            hide[]={};
            verticalOffset=0.79000002;
            verticalOffsetWorld=0;
        };
        displayName = "[183rd] Arsenal";
        model="A3\Weapons_F\Ammoboxes\AmmoVeh_F";
        icon="iconCrateVeh";
        ace_dragging_canDrag = 0;
        ace_dragging_canCarry = 0;
        slingLoadCargoMemoryPoints[]= {
            "SlingLoadCargo1",
            "SlingLoadCargo2",
            "SlingLoadCargo3",
            "SlingLoadCargo4"
        };
        class EventHandlers: EventHandlers {
        };
        editorPreview="\A3\EditorPreviews_F\Data\CfgVehicles\Box_NATO_AmmoVeh_F.jpg";
        _generalMacro="Box_NATO_AmmoVeh_F";
        hiddenSelectionsTextures[]= {
            "z\oeta\addons\Equipment\data\ammobox_signs_caA_183.paa",
            "z\oeta\addons\Equipment\data\ammo183A_co.paa"
        };
        class TransportMagazines {
        };
        class TransportWeapons {
        };
        class TransportItems {
        };
        transportAmmo=30000;
        supplyRadius=10;
    };
/*
    class GVAR(arsenalw): NATO_Box_Base {
        scope = 2;
        scopeCurator = 2;
        author = QAUTHOR;
        mapSize=1.53;
        class SimpleObject {
            eden=1;
            animate[]={};
            hide[]={};
            verticalOffset=0.79000002;
            verticalOffsetWorld=0;
        };
        displayName = "[183rd] Winter Arsenal";
        model="A3\Weapons_F\Ammoboxes\AmmoVeh_F";
        icon="iconCrateVeh";
        ace_dragging_canDrag = 0;
        ace_dragging_canCarry = 0;
        slingLoadCargoMemoryPoints[]= {
            "SlingLoadCargo1",
            "SlingLoadCargo2",
            "SlingLoadCargo3",
            "SlingLoadCargo4"
        };
        class EventHandlers: EventHandlers {
        };
        editorPreview="\A3\EditorPreviews_F\Data\CfgVehicles\Box_NATO_AmmoVeh_F.jpg";
        _generalMacro="Box_NATO_AmmoVeh_F";
        hiddenSelectionsTextures[]= {
            "z\oeta\addons\Equipment\data\ammobox_signs_ca_oeta_A.paa",
            "z\oeta\addons\Equipment\data\ammo_oeta_A_co_winter.paa"
        };
        class TransportMagazines {
        };
        class TransportWeapons {
        };
        class TransportItems {
        };
        transportAmmo=30000;
        supplyRadius=10;
    };
 */
   /*  class GVAR(arsenali): NATO_Box_Base {
        scope = 2;
        scopeCurator = 2;
        author = QAUTHOR;
        mapSize=1.53;
        class SimpleObject {
            eden=1;
            animate[]={};
            hide[]={};
            verticalOffset=0.79000002;
            verticalOffsetWorld=0;
        };
        displayName = "[183rd] Casual Arsenal";
        model="A3\Weapons_F\Ammoboxes\AmmoVeh_F";
        icon="iconCrateVeh";
        ace_dragging_canDrag = 0;
        ace_dragging_canCarry = 0;
        slingLoadCargoMemoryPoints[]= {
            "SlingLoadCargo1",
            "SlingLoadCargo2",
            "SlingLoadCargo3",
            "SlingLoadCargo4"
        };
        class EventHandlers: EventHandlers {
        };
        editorPreview="\A3\EditorPreviews_F\Data\CfgVehicles\Box_NATO_AmmoVeh_F.jpg";
        _generalMacro="Box_NATO_AmmoVeh_F";
        hiddenSelectionsTextures[]= {
            "z\oeta\addons\Equipment\data\oetabox_signs_ca.paa",
            "z\oeta\addons\Equipment\data\ammooetaCA_co.paa"
        };
        class TransportMagazines {
        };
        class TransportWeapons {
        };
        class TransportItems {
        };
        transportAmmo=30000;
        supplyRadius=10;
    }; */


    class ACE_Item_Vector;
    class GVAR(Item_Vector_Designator): ACE_Item_Vector {
        author = "NemessisRE";
        displayName = "[183rd] ACE Vector Designator (NVG/TI)";
        class TransportItems {
            class GVAR(Vector_Designator) {
                name=QGVAR(Vector_Designator);
                count=1;
            };
        };
    };

    class GVAR(Item_Vector_Designator_NVG): GVAR(Item_Vector_Designator) {
        displayName = "[183rd] ACE Vector Designator (NVG)";
        class TransportItems {
            class GVAR(Vector_Designator) {
                name=QGVAR(Vector_Designator);
                count=1;
            };
        };
    };

    class Item_optic_Nightstalker;
    class GVAR(Item_optic_Nightstalker): Item_optic_Nightstalker {
        displayName="[183rd] Nightstalker";
        author="NemesisRE";
        vehicleClass="WeaponAccessories";
        class TransportItems {
            class GVAR(optic_Nightstalker) {
                name=QGVAR(optic_Nightstalker);
                count=1;
            };
        };
    };

    class Item_optic_AMS;
    class GVAR(Item_optic_AMS): Item_optic_AMS {
        displayName="[183rd] AMS (Black)";
        author="NemesisRE";
        class TransportItems {
            class GVAR(optic_AMS) {
                name=QGVAR(optic_AMS);
                count=1;
            };
        };
    };
    class GVAR(Item_optic_AMS_khk): GVAR(Item_optic_AMS) {
        displayName="[183rd] AMS (Khaki)";
        class TransportItems {
            class GVAR(optic_AMS_khk) {
                name=QGVAR(optic_AMS_khk);
                count=1;
            };
        };
    };
    class GVAR(Item_optic_AMS_snd): GVAR(Item_optic_AMS) {
        displayName="[183rd] AMS (Sand)";
        class TransportItems {
            class GVAR(optic_AMS_snd) {
                name=QGVAR(optic_AMS_snd);
                count=1;
            };
        };
    };
    class GVAR(Item_optic_AMSTI): Item_optic_AMS {
        displayName="[183rd] AMS-TI (Black)";
        author="NemesisRE";
        class TransportItems {
            class GVAR(optic_AMS) {
                name=QGVAR(optic_AMS);
                count=1;
            };
        };
    };
    class GVAR(Item_optic_AMSTI_khk): GVAR(Item_optic_AMSTI) {
        displayName="[183rd] AMS-TI (Khaki)";
        class TransportItems {
            class GVAR(optic_AMS_khk) {
                name=QGVAR(optic_AMS_khk) ;
                count=1;
            };
        };
    };
    class GVAR(Item_optic_AMSTI_snd): GVAR(Item_optic_AMSTI) {
        displayName="[183rd] AMS-TI (Sand)";
        class TransportItems {
            class GVAR(optic_AMS_snd) {
                name=QGVAR(optic_AMS_snd);
                count=1;
            };
        };
    };

    class Box_NATO_Support_F;
    class ACE_Box_Misc: Box_NATO_Support_F {
        class TransportItems {
            class GVAR(Vector_Designator) {
                name=QGVAR(Vector_Designator);
                count=3;
            };
        };
    };
};

