#include "\z\oeta\addons\adminmenu\script_component.hpp"

params [["_langsToAdd", []], ["_langsToRemove", []]];

private _spokenLangs = (call acre_sys_core_fnc_getSpokenLanguages) - _langsToRemove;
_spokenLangs append _langsToAdd;

if (count _spokenLangs == 0) exitWith {
    systemChat "[183rd Admin Menu] Failed to assign ACRE2 languages";
};

private _spokenLangsIds = _spokenLangs apply {[_x] call acre_sys_core_fnc_getLanguageId};
ACRE_SPOKEN_LANGUAGES = _spokenLangsIds;
[_spokenLangs select 0] call acre_sys_core_fnc_setSpeakingLanguage;

systemChat "[183rd Admin Menu] New ACRE2 babel language(s) assigned";