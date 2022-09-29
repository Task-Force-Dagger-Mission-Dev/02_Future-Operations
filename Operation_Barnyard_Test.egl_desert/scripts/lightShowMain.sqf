//todo replace "time" with "serverTime";

#define toggleLight(lightName,toggle) if(toggle==true)then{lightName hideObject false}else{lightName hideObject true};

togglePerBPM = {
	params["_lightArray", "_bpmInS", "_beats"];
	_tempBeats = 0;
	while {_tempBeats < _beats} do {
		{
  			toggleLight(_x, true);
  		} forEach _lightArray;
		sleep(_bpmInS/2);
		{
  			toggleLight(_x, false);
  		} forEach _lightArray;
		sleep(_bpmInS/2);
		_tempBeats = _tempBeats + 1;
	};
};

dTime = {
	params["_startTime"];
	serverTime - _startTime
};