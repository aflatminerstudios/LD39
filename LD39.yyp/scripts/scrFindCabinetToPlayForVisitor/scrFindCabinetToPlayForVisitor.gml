/// scrFindCabinetToPlayForVisitor(visitorInstance)

var visitorInstance = argument0;

with(objCabinet) {
	if(!isBeingPlayed) {
		scrSetTargetCabinetForVisitor(self.id, visitorInstance);
		return;
	}
}