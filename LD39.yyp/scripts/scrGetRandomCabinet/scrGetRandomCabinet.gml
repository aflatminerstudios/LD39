/// scrGetRandomOpenPoweredCabinet()


var numCabinets = instance_number(objCabinet);

if(numCabinets > 0)
	return instance_find(objCabinet, irandom(numCabinets - 1));
else
	return noone;