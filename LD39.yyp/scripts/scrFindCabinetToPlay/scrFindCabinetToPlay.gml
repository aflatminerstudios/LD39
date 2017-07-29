/// scrFindCabinetToPlay(visitorInstance)

var visitorInstance = argument0;

with(objCabinet) {
	if(!isBeingPlayed) {
		// Turn this all into a script  -- Micha TODO
		visitorInstance.currentActivity = self.id;
		visitorInstance.x = x;
		visitorInstance.y = y + 100;
		isBeingPlayed = true;
		return;
	}
}