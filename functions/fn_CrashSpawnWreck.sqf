/**
 *
 * Addon: yeiijCrash
 * Author: Jason REDUX (@Yeiij)
 * Date: 17/08/2018
 * File: fn_CrashSpawnWreck.sqf
 *
 */

diag_log " ::::::::::::::::::::::::::::::::::::::::::::::::: ";
diag_log " :: yeiijCrash (Server): Spawn Wreck            :: ";
diag_log " ::::::::::::::::::::::::::::::::::::::::::::::::: ";

YEIIJ_crashWreck = YEIIJ_crashWreckCls createVehicle YEIIJ_crashDefPos;
YEIIJ_crashWreck setPos YEIIJ_crashSpwnPos;

YEIIJ_crashAmoBox = YEIIJ_crashAmoBoxCls createVehicle YEIIJ_crashDefPos;
YEIIJ_crashAmoBox setVehiclePosition [YEIIJ_crashWreck, [], 15, "CAN_COLLIDE"];
clearItemCargoGlobal YEIIJ_crashAmoBox;
clearMagazineCargoGlobal YEIIJ_crashAmoBox;
clearWeaponCargoGlobal YEIIJ_crashAmoBox;
clearBackpackCargoGlobal YEIIJ_crashAmoBox;

YEIIJ_crashWepBox = YEIIJ_crashWepBoxCls createVehicle YEIIJ_crashDefPos;
YEIIJ_crashWepBox setVehiclePosition [YEIIJ_crashWreck, [], 15, "CAN_COLLIDE"];
clearItemCargoGlobal YEIIJ_crashWepBox;
clearMagazineCargoGlobal YEIIJ_crashWepBox;
clearWeaponCargoGlobal YEIIJ_crashWepBox;
clearBackpackCargoGlobal YEIIJ_crashWepBox;

YEIIJ_crashSmoke = YEIIJ_crashSmokeCls createVehicle [0,0,0];
YEIIJ_crashSmoke attachTo [YEIIJ_crashWreck, [0,0,1]];
