/// scrFindCabinetToPlayForVisitor(visitorInstance)

var visitorInstance = argument0;

var openCabinet = scrGetRandomOpenPoweredCabinet(self.id);
if(openCabinet != noone) {
	scrSetTargetCabinetForVisitor(openCabinet, visitorInstance);
}