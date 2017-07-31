/// @description Insert description here
// You can write your code in this editor

//call parent event
event_inherited();

powerUsage = 40.0;
incomePerTimeStep = 9.0;
if (instance_number(objGameControl) > 0) {
  incomePerStep = incomePerTimeStep / objGameControl.timeStep;
}

style = STYLE_SWOLTRON;
baseHappiness = 0.2;


onSprite = sprSwoltron2CabinetOn;
offSprite = sprSwoltron2CabinetOff;
playingSprite = sprSwoltron2CabinetPlaying;
friedSprite = sprSwoltron2CabinetFried;

reflection.sprite_index = sprSwoltron2CabinetReflection;

playPos[0] = x + 47;
playPos[1] = y + 2;

playDirection = PLAY_LEFT;