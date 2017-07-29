/// @description Setup variables
// You can write your code in this editor

//state variables
isPowered = false;
isFunctional = true;
isBeingPlayed = false;

//Power variables
powerUsage = 30.0;

//Income variables
incomePerPlay = 0.25;
incomePerTimeStep = 5.0;
incomePerStep = incomePerTimeStep / objGameControl.timeStep;

//sprites
onSprite = sprCabinet;
offSprite = sprCabinetOff;

//user related variables
style = 0;
baseHappiness = 10;

coinBox = 0.0;


