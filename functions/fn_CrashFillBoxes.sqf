/**
 *
 * Addon: yeiijCrash
 * Author: Jason REDUX (@Yeiij)
 * Date: 17/08/2018
 * File: fn_CrashFillBoxes.sqf
 *
 */

diag_log " ::::::::::::::::::::::::::::::::::::::::::::::::: ";
diag_log " :: yeiijCrash (Server): Fill Boxes              :: ";
diag_log " ::::::::::::::::::::::::::::::::::::::::::::::::: ";

// define temporal vars
private _YEIIJ_crashWepAmnt = 0;
private _YEIIJ_crashAmoAmnt = 0;
private _YEIIJ_crashWeapons = [];

// select weapons to fill the box and group them in array
for "_i" from 1 to YEIIJ_crashMaxWepTyps do {
    _YEIIJ_crashWeapons pushBack (selectRandom YEIIJ_crashWeapons);
};

// fill the box with the previous selected weeapons
{
    // randomize ammount of each weapons based on config file
    _YEIIJ_crashWepAmnt = round(random YEIIJ_crashMaxWepAmnt);
    YEIIJ_crashWepBox addWeaponCargoGlobal [_x,_YEIIJ_crashWepAmnt];
} forEach _YEIIJ_crashWeapons;

// fill the box with magazines
{
    // randomize ammount of each magazine based on config file
    _YEIIJ_crashAmoAmnt = round(random YEIIJ_crashMaxAmoAmnt);
    YEIIJ_crashAmoBox addMagazineCargoGlobal [_x,_YEIIJ_crashAmoAmnt];
} forEach YEIIJ_crashAmmo;
