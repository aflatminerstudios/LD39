/// @description scrPlaySoundForAmbienceLevel(minimumAmbienceLevel)

var minimumAmbienceLevel = argument0;

if(scrCurrentAmbienceLevel() > minimumAmbienceLevel)
	scrPlayRandomCabinetSound();
