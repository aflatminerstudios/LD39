/// @description scrCurrentAmbienceLevel()

var baseAmbienceLevel = 1;
var cabinetMultiplier = 1.5; // Each cabinet adds this many levels to the total ambience level

return baseAmbienceLevel + cabinetMultiplier*scrGetPoweredCabinetCount()