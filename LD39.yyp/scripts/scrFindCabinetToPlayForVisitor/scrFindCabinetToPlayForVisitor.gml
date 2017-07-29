/// scrFindCabinetToPlayForVisitor(visitorInstance)

var visitorInstance = argument0;

var numCabinets = instance_number(objCabinet);
var checkedCabinets = 0;

var startingPoint = irandom(numCabinets - 1);
var currentCabinet = startingPoint;

while(checkedCabinets < numCabinets) {
	var cabinetInstance = instance_find(objCabinet, currentCabinet);
	if(cabinetInstance.isPowered && !cabinetInstance.isBeingPlayed) {
	//if(!cabinetInstance.isBeingPlayed) {
		scrSetTargetCabinetForVisitor(cabinetInstance, visitorInstance);
		return;
	}

	checkedCabinets++;
	currentCabinet++;
	if(currentCabinet >= numCabinets)
		currentCabinet = 0;
}

/*
with(objCabinet) {
	if(isPowered && !isBeingPlayed) {
		scrSetTargetCabinetForVisitor(self.id, visitorInstance);
		return;
	}
}
*/