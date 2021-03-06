/// scrGetPoweredCabinetCount()


var poweredCabinetCount = 0;

var numCabinets = instance_number(objCabinet);
var checkedCabinets = 0;

var startingPoint = irandom(numCabinets - 1);
var currentCabinet = startingPoint;

while(checkedCabinets < numCabinets) {
	var cabinetInstance = instance_find(objCabinet, currentCabinet);
	if(cabinetInstance.isPowered) {
		poweredCabinetCount++;
	}

	checkedCabinets++;
	currentCabinet++;
	if(currentCabinet >= numCabinets)
		currentCabinet = 0;
}

return poweredCabinetCount;