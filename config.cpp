/**
 *
 * Addon: yeiijCrash
 * Author: Jason REDUX (@Yeiij)
 * Date: 17/08/2018
 * File: config.cpp
 *
 */

class CfgPatches
{
	class YeiijCrash
	{
		name = "Yeiij Crash Addon";
		units[] = {};
		weapons[] = {};
		requiredVersion = 1.0;
		requiredAddons[] = {};
		author = "Yeiij";
		authors[] = {"Yeiij"};
		url = "https://github.com/yeiij";
		version = "1.0";
		versionStr = "1.0";
		versionAr[] = {1,0};
	};
};

class CfgFunctions
{
	class YeiijCrash
	{
		tag = "YEIIJ";
		class initCrash
		{
			file = "yeiijCrash";
			class CrashPreInit  { preInit  = 1; };
			class CrashPostInit { postInit = 1; };
			class CrashStartAddon {};
		};
		class compilesCrash
		{
			file = "yeiijCrash\functions";
			class CrashCleanWreck {};
			class CrashFillBoxes {};
			class CrashSelectPosition {};
			class CrashSpawnWreck {};
		};
	};
};
