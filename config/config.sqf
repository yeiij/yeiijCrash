/**
 *
 * Addon: yeiijCrash
 * Author: Jason REDUX (@Yeiij)
 * Date: 17/08/2018
 * File: config.sqf
 *
 */

diag_log " ::::::::::::::::::::::::::::::::::::::::::::::::: ";
diag_log " :: yeiijCrash (Server): Config Loaded          :: ";
diag_log " ::::::::::::::::::::::::::::::::::::::::::::::::: ";
// define when the mission runs or not
YEIIJ_crashRun = true; // def true
// define the usage of debugging markers
YEIIJ_crashDbgMkrs = true; // def false
// define the time before start the first crash
YEIIJ_crashWait = 600; // def 600, 5 minutes
// delay between spawns
YEIIJ_crashSpawnDelay = 7200; // def 7200 secs, every 2 hours
// wreck class name
YEIIJ_YEIIJ_crashWreckCls = "Land_Wreck_Heli_Attack_01_F"; // def blackfoot wreck
// wreck smoke class name
YEIIJ_YEIIJ_crashSmokeCls = "test_EmptyObjectForSmoke"; // def smoke particles
// wreck box ammo class name
YEIIJ_YEIIJ_crashAmoBoxCls = "Box_NATO_Support_F"; // def NATO support box
// wreck box weapons class name
YEIIJ_YEIIJ_crashWepBoxCls = "Box_NATO_WpsLaunch_F"; // def NATO weapon launchers
// default pos
YEIIJ_crashDefPos = [0,0,0]; // def [0,0,0]
// first wreck Pos
YEIIJ_crashSpwnPos = [0,0,0]; // def [0,0,0]
// Positions Array
YEIIJ_crashPossitions = [
    [4266.97,19282.6],
    [12915.1,22679.9],
    [23367.4,22409.8],
    [20445.6,12764.2],
    [18223.3,9788.11],
    [9457.22,7552.07],
    [6921.08,12067.3],
    [10765.4,17881.2],
    [23702.4,16214]
];
// maximum weapon types per box
YEIIJ_crashMaxWepTyps = 3; // def 3
// maximum weapon ammount per box (each weapon)
YEIIJ_crashMaxWepAmnt = 3; // def 3
// weapons array
YEIIJ_crashWeapons = [
    "hgun_ACPC2_F", // ACP-C2 .45 ACP
    "hgun_P07_F", // P07 9 mm
    "hgun_Pistol_heavy_01_F", // 4-five .45 ACP
    "hgun_Pistol_heavy_02_F", // Zubr .45 ACP
    "hgun_Rook40_F" // Rook-40 9 mm
];
// maximum ammo ammount per box
YEIIJ_crashMaxAmoAmnt = 10; // def 10
// ammo array
YEIIJ_crashAmmo = [
    "9Rnd_45ACP_Mag", // .45 ACP 9Rnd Mag
    "16Rnd_9x21_Mag", // 9 mm 16Rnd Mag
    "11Rnd_45ACP_Mag", // .45 ACP 11Rnd Mag
    "6Rnd_45ACP_Cylinder" // .45 ACP 6Rnd Cylinder
];
