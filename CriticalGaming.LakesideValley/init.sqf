tf_no_auto_long_range_radio = true; 
tf_west_radio_code = "";
tf_east_radio_code = tf_west_radio_code;
tf_guer_radio_code = tf_west_radio_code;
tf_civ_radio_code = tf_west_radio_code;

if (isServer) then {
racemachine setVariable["start",false,true];
racemachine2 setVariable["start",false,true];
	cgbankvault setvariable ["robbed",false,true];
	stash1 setvariable ["robbed",false,true];
	stash2 setvariable ["robbed",false,true];
	stash3 setvariable ["robbed",false,true];
	stash4 setvariable ["robbed",false,true];
	stash5 setvariable ["robbed",false,true];
	stash6 setvariable ["robbed",false,true];
	stash7 setvariable ["robbed",false,true];
	stash8 setvariable ["robbed",false,true];
	stash9 setvariable ["robbed",false,true];
	pstash1 setvariable ["robbed",false,true];
	pstash2 setvariable ["robbed",false,true];
	pstash3 setvariable ["robbed",false,true];
	pstash4 setvariable ["robbed",false,true];
	pstash5 setvariable ["robbed",false,true];
	pstash6 setvariable ["robbed",false,true];
	pstash7 setvariable ["robbed",false,true];
	pstash8 setvariable ["robbed",false,true];
	pstash9 setvariable ["robbed",false,true];
	pstash10 setvariable ["robbed",false,true];
	jobstand setvariable ["job1",false,true];
	jobstand setvariable ["job2",false,true];
	jobstand setvariable ["job3",false,true];
	jobstand setvariable ["job4",false,true];
};

enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;
introSpawn = nil;
if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "CG Life 0.3";
[] execVM "briefing.sqf";
[] execVM "KRON_Strings.sqf";

StartProgress = true;

"BIS_fnc_MP_packet" addPublicVariableEventHandler {_this call life_fnc_MPexec};

[] spawn {
	if (isServer) then {
		while{true} do {
		sleep 60;
			if(daytime > 19 && daytime < 22) then {
				skiptime 3.5;
			};
		};
	};
};