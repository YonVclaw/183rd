/*
//Made redundant by "Rotate Objects" module. 

#include "\z\oeta\addons\zeus\script_component.hpp"

params["_logic", "_units", "_activated"];

if !(_activated && local _logic) exitWith {};

_curatorEntity = objnull;
_mouseOver = missionNamespace getVariable ["bis_fnc_curatorObjectPlaced_mouseOver",[""]];
if ((_mouseOver select 0) == "OBJECT") then {
	_curatorEntity = _mouseOver select 1;
};

//Exit there is no curator entity under cursor
if (isNull _curatorEntity) exitWith {
    deleteVehicle _logic;
};

[_curatorEntity, 0, -90] call BIS_fnc_setPitchBank;

deleteVehicle _logic;
*/