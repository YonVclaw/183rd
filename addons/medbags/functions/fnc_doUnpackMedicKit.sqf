#include "..\script_component.hpp"
/*

 * \oeta_medical\supplies\functions\fn_doUnpackMedicKit.sqf
 * by Ojemineh
 *
 * unpack medical supplies
 *
 * Arguments:
 * 0: unit - <OBJECT>
 *
 * Return:
 * nothing
 *
 * Example:
 * [player] call OETA_medical_supplies_fnc_doUnpackMedicKit;
 *
 */

// -------------------------------------------------------------------------------------------------

private ["_unit"];

_unit = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

// -------------------------------------------------------------------------------------------------

if (isNull _unit) exitWith {};

// -------------------------------------------------------------------------------------------------

[_unit] spawn {

    params ["_unit"];

    _unit playAction "Gear";

    if (vehicle _unit != _unit) then {
        playSound QGVAR(Medical_MedicKit_Open_1);
    } else {
        private _pitch = random [0.6, 1, 1.4];
        [_unit, QGVAR(Medical_MedicKit_Open_1), [], 30, 1000, -1, _pitch] call EFUNC(common,play3dSound);
    };

    OETA_MEDICAL_SUPPLIES_UNPACK_SUCCESS = false;
    OETA_MEDICAL_SUPPLIES_UNPACK_FAILURE = false;

    [
        2,
        [], { OETA_MEDICAL_SUPPLIES_UNPACK_SUCCESS = true; }, { OETA_MEDICAL_SUPPLIES_UNPACK_FAILURE = true; },
        localize "Unpack Mead Kit....",
 {true},
        ["isNotInside", "isNotSitting", "isNotSwimming"]
    ] call ACE_common_fnc_progressBar;

    waitUntil {if ((OETA_MEDICAL_SUPPLIES_UNPACK_SUCCESS) || (OETA_MEDICAL_SUPPLIES_UNPACK_FAILURE)) exitWith {true}; false};

    if (OETA_MEDICAL_SUPPLIES_UNPACK_SUCCESS) exitWith {

        _unit removeItem "OETA_medbags_MedicKit";

        private _order = [3,2,1];
        private _overflow = true;

        [_unit, "ACE_fieldDressing", 18, _order, _overflow] call EFUNC(common,addItem);
        [_unit, "ACE_elasticBandage", 14, _order, _overflow] call EFUNC(common,addItem);
        [_unit, "ACE_packingBandage", 14, _order, _overflow] call EFUNC(common,addItem);
        [_unit, "ACE_quikClot", 14, _order, _overflow] call EFUNC(common,addItem);
        [_unit, "ACE_salineIV_500", 08, _order, _overflow] call EFUNC(common,addItem);
        [_unit, "ACE_tourniquet", 08, _order, _overflow] call EFUNC(common,addItem);
        [_unit, "kat_Painkiller", 06, _order, _overflow] call EFUNC(common,addItem);
        [_unit, "kat_chestSeal", 04, _order, _overflow] call EFUNC(common,addItem);
        [_unit, "kat_larynx", 06, _order, _overflow] call EFUNC(common,addItem);
        [_unit, "kat_guedel", 06, _order, _overflow] call EFUNC(common,addItem);
        [_unit, "ACE_splint", 08, _order, _overflow] call EFUNC(common,addItem);
        [_unit, "kat_aatKit", 04, _order, _overflow] call EFUNC(common,addItem);
        [_unit, "KAT_Empty_bloodIV_500", 04, _order, _overflow] call EFUNC(common,addItem);
        [_unit, "ACE_fieldDressing", 06, _order, _overflow] call EFUNC(common,addItem);
        [_unit, "kat_Painkiller", 01, _order, _overflow] call EFUNC(common,addItem);
        [_unit, "ACE_tourniquet", 04, _order, _overflow] call EFUNC(common,addItem);
        [_unit, "ACE_EarPlugs", 02, _order, _overflow] call EFUNC(common,addItem);
        [_unit, "kat_IO_FAST", 06, _order, _overflow] call EFUNC(common,addItem);
        [_unit, "kat_IV_16", 06, _order, _overflow] call EFUNC(common,addItem);
    };

    if (OETA_MEDICAL_SUPPLIES_UNPACK_FAILURE) exitWith {

        [_unit, QGVAR(Medical_MedicKit_Open_1)] call EFUNC(common,stop3dSound);

    };

};
