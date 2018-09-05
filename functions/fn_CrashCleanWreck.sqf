/**
 *
 * Addon: yeiijCrash
 * Author: Jason REDUX (@Yeiij)
 * Date: 17/08/2018
 * File: fn_CrashCleanWreck.sqf
 *
 */

diag_log " ::::::::::::::::::::::::::::::::::::::::::::::::: ";
diag_log " :: yeiijCrash (Server): Clean Wreck            :: ";
diag_log " ::::::::::::::::::::::::::::::::::::::::::::::::: ";

detach YEIIJ_crashSmoke;
deleteVehicle YEIIJ_crashSmoke;
deleteVehicle YEIIJ_crashAmoBox;
deleteVehicle YEIIJ_crashWepBox;
deleteVehicle YEIIJ_crashWreck;
// clean marker in case of debug active
if (YEIIJ_crashDbgMkrs) then {
    deleteMarker YEIIJ_crashMkr;
};
