/// scrFindCabinetToPlayForVisitor(visitorInstance)

var visitorInstance = argument0;

with(objCabinet) {
	if(!isBeingPlayed) {
		scrPlayCabinetWithVisitor(self.id, visitorInstance);
		return;
	}
}