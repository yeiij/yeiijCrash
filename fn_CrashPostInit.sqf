/**
 *
 * Addon: yeiijCrash
 * Author: Jason REDUX (@Yeiij)
 * Date: 17/08/2018
 * File: fn_CrashPostInit.sqf
 *
 */

diag_log " |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||| ";
diag_log " || yeiijCrash (Server): POST-INIT                               || ";
diag_log " |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||| ";

if (hasInterface) exitWith {};

[] call YEIIJ_fnc_CrashStartAddon;
