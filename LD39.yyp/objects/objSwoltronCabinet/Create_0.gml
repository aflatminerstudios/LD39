/// @description Insert description here
// You can write your code in this editor

//call parent event
event_inherited();

powerUsage = 20.0;
incomePerTimeStep = 4.0;
if (instance_number(objGameControl) > 0) {
  incomePerStep = incomePerTimeStep / objGameControl.timeStep;
}

style = STYLE_SWOLTRON;
baseHappiness = 0.25;


onSprite = sprSwoltronCabinetOn;
offSprite = sprSwoltronCabinetOff;
playingSprite = sprSwoltronCabinetPlaying;
friedSprite = sprSwoltronCabinetFried;

reflection.sprite_index = sprSwoltronCabinetReflection;

playPos[0] = x - 33 * sign(image_xscale);
playPos[1] = y;

playDirection = PLAY_RIGHT;