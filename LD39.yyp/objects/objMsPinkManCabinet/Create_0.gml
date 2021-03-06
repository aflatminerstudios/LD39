/// @description Insert description here
// You can write your code in this editor

//call parent event
event_inherited();

powerUsage = 35.0;
incomePerTimeStep = 7.0;
if (instance_number(objGameControl) > 0) {
  incomePerStep = incomePerTimeStep / objGameControl.timeStep;
}

style = STYLE_PACMAN;
baseHappiness = 0.2;


onSprite = sprMsPinkManCabinetOn;
offSprite = sprMsPinkManCabinetOff;
playingSprite = sprMsPinkManCabinetPlaying;
friedSprite = sprMsPinkManCabinetFried;

reflection.sprite_index = sprMsPinkManCabinetReflection;

playPos[0] = x + 47 * image_xscale;
playPos[1] = y + 2;

playDirection = PLAY_LEFT;