#include "script_component.hpp"
// Vehicle Crew List
[
    "OETA_Main_VehicleCrewList",
    "CHECKBOX",
    ["Vehicle Crew List", "Shows a list of players in a vehicle."],
    COMPONENT_NAME,
    false,
    true, {
        if (_this && { hasinterface }) then  { call YAINA_F_fnc_crewNames};
    }
] call CBA_Settings_fnc_init;

// Dynamic Groups
[
    "OETA_Main_DynamicGroups",
    "CHECKBOX",
    ["BIS Dynamic Groups", "Enable Vanilla Dynamic Groups system (U Menu)"],
    COMPONENT_NAME,
    false,
    true, {
        if (_this) then { call OETA_fnc_DynamicGroups};
    }
] call CBA_Settings_fnc_init;

// YAINA Earplugs
[
    "OETA_Main_Earplugs",
    "CHECKBOX",
    ["YAINA Earplugs", "Enable YAINA Earplugs addactions. Cannot be used with @ACE."],
    COMPONENT_NAME,
    false,
    true, {
         if (_this && { hasinterface }) then  { call OETA_fnc_Earplugs};
    }
] call CBA_Settings_fnc_init;

// PilotCheck
[
    "OETA_Main_PilotCheck",
    "CHECKBOX",
    ["Pilot Restrictions", "Restrict aircraft so only those with 'Pilot' Trait can fly."],
    COMPONENT_NAME,
    false,
    true, {
         if (_this && { hasinterface }) then  { call OETA_fnc_PilotCheck};
    }
] call CBA_Settings_fnc_init;

// PilotCheck
[
    "OETA_Main_MaydayAccess",
    "LIST",
    ["Aircraft Emergency Access", "Restrict access to the emergency pilot takeover for helicopters (requires Pilot Check Enabled)"],
    COMPONENT_NAME,
    [[0,1,2],["No One", "909 Only", "Everyone"], 2],
    true, {

    }
] call CBA_Settings_fnc_init;

// Voyager Compass
[
    "OETA_Main_VoyagerCompass",
    "CHECKBOX",
    ["Voyager Compass HUD", "Enable Voyager Compass HUD. Players can still disable locally."],
    COMPONENT_NAME,
    false,
    true, {
         if (_this && { hasinterface }) then  { call OETA_fnc_VoyagerCompass};
    }
] call CBA_Settings_fnc_init;

// QS Mag Repack
[
    "OETA_Main_QSMagRepack",
    "CHECKBOX",
    ["QS Repack Magazines", "Allows players to repack magazines through an add action. Not used with ACE."],
    COMPONENT_NAME,
    false,
    true, {
         if (_this && { hasinterface }) then  { call OETA_fnc_QSRepackMags};
    }
] call CBA_Settings_fnc_init;

// CH View Distance
[
    "OETA_Main_CHViewDistance",
    "CHECKBOX",
    ["CH View Distance", "Enable CHVD within OETA Fundamentals"],
    COMPONENT_NAME,
    false,
    true, {
        if (_this && { hasinterface }) then  { call CHVD_fnc_init};
    }
] call CBA_Settings_fnc_init;

// CHVD - Max View Distance
[
    "OETA_Main_ViewDistanceMaxDistance",
    "SLIDER",
    ["CHVD - Max View Distance", "Max distance a player can set CHVD View Distance to."],
    COMPONENT_NAME,
    [5000, 15000, 10000, 0],
    true, {

    }
] call CBA_Settings_fnc_init;

// CHVD - Max Object View Distance
[
    "OETA_Main_ViewDistanceMaxObjectDistance",
    "SLIDER",
    ["CHVD - Max Object View Distance", "Max distance a player can set CHVD Object View Distance to."],
    COMPONENT_NAME,
    [5000, 15000, 10000, 0],
    true, {

    }
] call CBA_Settings_fnc_init;

// CHVD - Allow No Grass
[
    "OETA_Main_ViewDistanceNoGrass",
    "CHECKBOX",
    ["CHVD - Allow No Grass", "Should players be allowed to turn grass off?"],
    COMPONENT_NAME,
    false,
    true, {

    }
] call CBA_Settings_fnc_init;

// Arsenal - Save/Load
[
    "OETA_Main_ArsenalSaveLoad",
    "CHECKBOX",
    ["Arsenal - Save/Load", "Should a player be allowed to Save/Load Loadouts in the Arsenal?"],
    COMPONENT_NAME,
    true,
    true, {
        if (!_this && { hasinterface }) then  { call OETA_fnc_ArsenalLoadSave};
    }
] call CBA_Settings_fnc_init;

// Flip Vehicle
[
    "OETA_Main_FlipVehicle",
    "CHECKBOX",
    ["Flip Vehicle", "Add an action to players to allow them to flip land vehicles."],
    COMPONENT_NAME,
    false,
    true, {
        if (_this && { hasinterface }) then  { call OETA_fnc_FlipVehicle};
    }
] call CBA_Settings_fnc_init;

// TFAR - Range Multiplyer
[
    "OETA_Main_TFARTransmitRange",
    "SLIDER",
    ["TFAR - Range Multiplyer", "Increase or decrease max Transmit Range. 0.1 = poor range, 3.5 = All of Altis"],
    COMPONENT_NAME,
    [0, 10, 2.5, 1],
    true, {

    }
] call CBA_Settings_fnc_init;

// TFAR - Terrain Interference
[
    "OETA_Main_TFARTerrainInterference",
    "SLIDER",
    ["TFAR - Terrain Interference", "How much Terrain interferes with range. 0.1 = little impact, 2.0 = large impact."],
    COMPONENT_NAME,
    [0, 5, 1, 1],
    true, {

    }
] call CBA_Settings_fnc_init;

// Cue Cards
[
    "OETA_Main_CueCards",
    "CHECKBOX",
    ["Cue Cards", "Show/Hide Cue Cards in ACE Self Interaction Menu."],
    COMPONENT_NAME,
    true,
    true, {
        if (_this && { hasinterface }) then  { call OETA_fnc_AddCueCards};
    }
] call CBA_Settings_fnc_init;

// Diary Defaults
[
    "OETA_Main_Diary",
    "CHECKBOX",
    ["Diary Defaults", "Show/Hide Default OETA Diary Entries."],
    COMPONENT_NAME,
    true,
    true, {
        if (_this && { hasinterface }) then  { call OETA_fnc_Diary};
    }
] call CBA_Settings_fnc_init;

// MapIcons
[
    "OETA_Main_MapIcons",
    "CHECKBOX",
    ["Enable Save/Load Markers", "Enable the MapIcons system to save/load markers"],
    COMPONENT_NAME,
    true,
    true, {
        ["183rd-saveMarkers",{
            [] call OETA_MI_fnc_openDialog;
        },"all"] call CBA_fnc_registerChatCommand;

        [] call OETA_MI_fnc_loadNotification;
    }
] call CBA_Settings_fnc_init;

// Fatigue (Vanilla ONLY)
[
    "OETA_Main_FatigueVanilla",
    "CHECKBOX",
    ["Fatigue (Vanilla ONLY)", "Enable/Disable Vanilla Fatigue System. Does not apply with @ACE."],
    COMPONENT_NAME,
    true,
    true, {
        if (_this && { hasinterface }) then  { call OETA_fnc_VanillaFatigue};
    }
] call CBA_Settings_fnc_init;

// FPS Counter
[
    "OETA_Main_FPSCounter",
    "CHECKBOX",
    ["FPS Counter", "Show FPS counter of Player, Server & Headless Client on the map."],
    COMPONENT_NAME,
    false,
    true, {
        if (_this) then { call YAINA_F_fnc_showFPS};
    }
] call CBA_Settings_fnc_init;

// 183RD Logging
[
    "OETA_Main_Logging",
    "CHECKBOX",
    ["183RD Logging", "Log connected players, their roles and if they go unconcious with ACE. Requires @A3Log"],
    COMPONENT_NAME,
    false,
    true, {
        if (_this) then { call OETA_common_fnc_logs};
    }
] call CBA_Settings_fnc_init;

// OETA_Main_DynamicSim
[
    "OETA_Main_DynamicSim",
    "CHECKBOX",
    ["183RD Dynamic Sim", "Simple check for Dynamic Sim enabled. If not enabled it will enable it to default OETA Values. "],
    COMPONENT_NAME,
    false,
    true, {
        if (_this && { isserver }) then  { call OETA_fnc_DynamicSim};
    }
] call CBA_Settings_fnc_init;

// OETA_Main_DynamicSim
[
    "OETA_Main_LockCamVehicle",
    "CHECKBOX",
    ["183RD Lock Camera in Vehicle", "Locks the camera to first-person inside vehicles. If not enabled it will enable it to default OETA Values. "],
    COMPONENT_NAME,
    false,
    true, {
        if (_this && {hasInterface}) then  { call OETA_fnc_LockCamVehicle};
    }
] call CBA_Settings_fnc_init;