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
if (instance_number(objGameControl) > 0) {
  incomePerStep = incomePerTimeStep / objGameControl.timeStep;
}

//sprites
onSprite = sprCabinet;
offSprite = sprCabinetOff;
playingSprite = sprCabinet;
friedSprite = sprCabinet;

//user related variables
style = 0;
baseHappiness = 0.10;
baseEnergy = 0.0;

coinBox = 0.0;

lowPowerAdjustment = 0;


//Related objects
reflection = instance_create_layer(x, y, "Reflections", objReflection);

playPos[0] = x;
playPos[1] = y + 75;
