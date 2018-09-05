/**
 *
 * Addon: yeiijCrash
 * Author: Jason REDUX (@Yeiij)
 * Date: 17/08/2018
 * File: fn_CrashStartAddon.sqf
 *
 */

diag_log " :::::::::::::::::::::::::::::::::::::::::::::::::: ";
diag_log " :: yeiijCrash (Server): Starting Addon          :: ";
diag_log " :::::::::::::::::::::::::::::::::::::::::::::::::: ";

[] spawn {
    while {YEIIJ_crashRun} do {

        sleep YEIIJ_crashWait;

        [] call YEIIJ_fnc_CrashSelectPossition;

        if (!YEIIJ_crashRun) exitWith {
            diag_log " :::::::::::::::::::::::::::::::::::::::::::::::::: ";
            diag_log " :: yeiijCrash (Server): FINISHED                :: ";
            diag_log " :::::::::::::::::::::::::::::::::::::::::::::::::: ";
        };

        [] call YEIIJ_fnc_CrashSpawnWreck;

        sleep 2.5;

        [] call YEIIJ_fnc_CrashFillBoxes;

        diag_log " :::::::::::::::::::::::::::::::::::::::::::::::::: ";
        diag_log format[" :: yeiijCrash (Server): GRID: %1                 :: ",  mapGridPosition YEIIJ_crashWreck];
        diag_log " :::::::::::::::::::::::::::::::::::::::::::::::::: ";

        //sleep 55;
        sleep YEIIJ_crashSpawnDelay;

        [] call YEIIJ_fnc_CrashCleanWreck;

        sleep 5;
    };
};
