/// scrFindCabinetToPlayForVisitor(visitorInstance)

var visitorInstance = argument0;

var openCabinet = scrGetRandomOpenPoweredCabinet();
if(openCabinet != noone) {
	scrSetTargetCabinetForVisitor(openCabinet, visitorInstance);
}