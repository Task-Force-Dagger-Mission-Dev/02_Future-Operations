//todo replace "time" with "serverTime";

#include "lightShowMain.sqf"
params ["_speaker", "_song", "_distance", "_lightA", "_lightB", "_lightC", "_lightD"];

_lights = [_lightA, _lightB, _lightC, _lightD];
_redLights = [_lightA, _lightB];
_whiteLights = [_lightC, _lightD];
_bpm = 1.683;

if (isServer) then {
	//Turns off all lights and starts the music
	_speaker say3D [_song, _distance];
	{toggleLight(_x, false);} forEach _lights;
	_tempI = 0; //index var

	//execute light show in here
	[_redLights, _bpm/2, 22] spawn togglePerBPM;
	sleep(_bpm/4);
	[_whiteLights, _bpm/2, 22] spawn togglePerBPM;
	sleep (18.513);
	while {_tempI < 26} do {
		toggleLight(_lightA, true);
		toggleLight(_lightB, true);
		sleep(_bpm/8);
		toggleLight(_lightA, false);
		toggleLight(_lightB, false);
		sleep(_bpm/8);
		toggleLight(_lightA, true);
		toggleLight(_lightB, true);
		sleep(_bpm/8);
		toggleLight(_lightA, false);
		toggleLight(_lightB, false);
		sleep(_bpm/8);

		toggleLight(_lightC, true);
		toggleLight(_lightD, true);
		sleep(_bpm/16);
		toggleLight(_lightC, false);
		toggleLight(_lightD, false);
		sleep(_bpm/16);
		toggleLight(_lightC, true);
		toggleLight(_lightD, true);
		sleep(_bpm/16);
		toggleLight(_lightC, false);
		toggleLight(_lightD, false);
		sleep(_bpm/16);
		
		_tempI = _tempI + 1;
	};
	_tempI = 0;
	sleep (_bpm*2);
	sleep (_bpm/2);
	sleep (_bpm/8);

	//--Chorus Start--

	//red light flicker
	while {_tempI < 38} do {
		toggleLight(_lightA, true);
		toggleLight(_lightB, true);
		sleep(_bpm/16);
		toggleLight(_lightA, false);
		toggleLight(_lightB, false);
		sleep(_bpm/16);
		_tempI = _tempI + 1;
	};
	_tempI = 0;
	//white light flicker
	while {_tempI < 6} do {
		toggleLight(_lightC, true);
		toggleLight(_lightD, true);
		sleep(_bpm/16);
		toggleLight(_lightC, false);
		toggleLight(_lightD, false);
		sleep(_bpm/16);
		_tempI = _tempI + 1;
	};
	_tempI = 0;
	//red light flicker
	while {_tempI < 36} do {
		toggleLight(_lightA, true);
		toggleLight(_lightB, true);
		sleep(_bpm/16);
		toggleLight(_lightA, false);
		toggleLight(_lightB, false);
		sleep(_bpm/16);
		_tempI = _tempI + 1;
	};
	_tempI = 0;
	//white light flicker
	while {_tempI < 6} do {
		toggleLight(_lightC, true);
		toggleLight(_lightD, true);
		sleep(_bpm/16);
		toggleLight(_lightC, false);
		toggleLight(_lightD, false);
		sleep(_bpm/16);
		_tempI = _tempI + 1;
	};
	_tempI = 0;

	//--Chorus End--

	while {_tempI < 7} do {
		toggleLight(_lightA, true);
		toggleLight(_lightB, true);
		sleep(_bpm/8);
		toggleLight(_lightA, false);
		toggleLight(_lightB, false);
		sleep(_bpm/8);
		toggleLight(_lightA, true);
		toggleLight(_lightB, true);
		sleep(_bpm/8);
		toggleLight(_lightA, false);
		toggleLight(_lightB, false);
		sleep(_bpm/8);

		toggleLight(_lightC, true);
		toggleLight(_lightD, true);
		sleep(_bpm/16);
		toggleLight(_lightC, false);
		toggleLight(_lightD, false);
		sleep(_bpm/16);
		toggleLight(_lightC, true);
		toggleLight(_lightD, true);
		sleep(_bpm/16);
		toggleLight(_lightC, false);
		toggleLight(_lightD, false);
		sleep(_bpm/16);
		
		_tempI = _tempI + 1;
	};

	_tempI = 0;
	sleep (_bpm*2);
	//sleep (_bpm/2);

	//--Chorus Dos Start--

	//red light flicker
	while {_tempI < 38} do {
		toggleLight(_lightA, true);
		toggleLight(_lightB, true);
		sleep(_bpm/16);
		toggleLight(_lightA, false);
		toggleLight(_lightB, false);
		sleep(_bpm/16);
		_tempI = _tempI + 1;
	};
	_tempI = 0;
	//white light flicker
	while {_tempI < 6} do {
		toggleLight(_lightC, true);
		toggleLight(_lightD, true);
		sleep(_bpm/16);
		toggleLight(_lightC, false);
		toggleLight(_lightD, false);
		sleep(_bpm/16);
		_tempI = _tempI + 1;
	};
	_tempI = 0;
	//red light flicker
	while {_tempI < 36} do {
		toggleLight(_lightA, true);
		toggleLight(_lightB, true);
		sleep(_bpm/16);
		toggleLight(_lightA, false);
		toggleLight(_lightB, false);
		sleep(_bpm/16);
		_tempI = _tempI + 1;
	};
	_tempI = 0;
	//white light flicker
	while {_tempI < 6} do {
		toggleLight(_lightC, true);
		toggleLight(_lightD, true);
		sleep(_bpm/16);
		toggleLight(_lightC, false);
		toggleLight(_lightD, false);
		sleep(_bpm/16);
		_tempI = _tempI + 1;
	};
	_tempI = 0;

	//--Chorus Dos End--
};