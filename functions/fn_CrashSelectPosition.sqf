/**
 *
 * Addon: yeiijCrash
 * Author: Jason REDUX (@Yeiij)
 * Date: 17/08/2018
 * File: fn_CrashSelectPosition.sqf
 *
 */

diag_log " ::::::::::::::::::::::::::::::::::::::::::::::::: ";
diag_log " :: yeiijCrash (Server): Select Possition       :: ";
diag_log " ::::::::::::::::::::::::::::::::::::::::::::::::: ";

// check if there are possitions to spawn the crash
if (count(YEIIJ_crashPossitions) < 1) exitWith {
    YEIIJ_crashRun = false;
};
// select a random position from positions array in config file
private _YEIIJ_crashRndmPos = selectRandom YEIIJ_crashPossitions;
// find a safe position to avoid bugs at spawn (keep dreaming)
private _crashSafePos = [_YEIIJ_crashRndmPos, 5, 10, 5, 0, 0.1, 0, [], [_YEIIJ_crashRndmPos,_YEIIJ_crashRndmPos]] call BIS_fnc_findSafePos;
YEIIJ_crashSpwnPos = _crashSafePos;
// delete the used position this will avoid repeating possitions
YEIIJ_crashPossitions deleteAt (YEIIJ_crashPossitions find _YEIIJ_crashRndmPos);
// create marker in case of debug active
if (YEIIJ_crashDbgMkrs) then {
    YEIIJ_crashMkr = "YEIIJ_crashPosMkr";
    createMarker [YEIIJ_crashMkr, [0,0]];
    YEIIJ_crashMkr setMarkerPos YEIIJ_crashSpwnPos;
    YEIIJ_crashMkr setMarkerBrush "DIAGGRID";
    YEIIJ_crashMkr setMarkerColor "colorOPFOR";
    YEIIJ_crashMkr setMarkerDir 0;
    YEIIJ_crashMkr setMarkerShape "ELLIPSE";
    YEIIJ_crashMkr setMarkerSize [1000, 1000];
    YEIIJ_crashMkr setMarkerAlpha 0.99;

    YEIIJ_crashWreckMkr2 = "YEIIJ_crashWreckMkr2";
    createMarker [YEIIJ_crashWreckMkr2, [0,0]];
    YEIIJ_crashWreckMkr2 setMarkerPos YEIIJ_crashSpwnPos;
    YEIIJ_crashWreckMkr2 setMarkerShape "ICON";
    YEIIJ_crashWreckMkr2 setMarkerType "mil_objective";
    YEIIJ_crashWreckMkr2 setMarkerColor "colorOPFOR";
    YEIIJ_crashWreckMkr2 setMarkerDir 0;
    YEIIJ_crashWreckMkr2 setMarkerSize [1,1];
    YEIIJ_crashWreckMkr2 setMarkerAlpha 1;
};
