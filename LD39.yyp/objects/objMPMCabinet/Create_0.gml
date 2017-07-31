/// @description Insert description here
// You can write your code in this editor

//call parent event
event_inherited();

powerUsage = 15.0;
incomePerTimeStep = 3.0;
if (instance_number(objGameControl) > 0) {
  incomePerStep = incomePerTimeStep / objGameControl.timeStep;
}

style = STYLE_PUZZLE;
baseHappiness = 0.15;


onSprite = sprMPMCabinetOn;
offSprite = sprMPMCabinetOff;
playingSprite = sprMPMCabinetPlaying;
friedSprite = sprMPMCabinetFried;

reflection.sprite_index = sprMPMReflection;

playPos[0] = x + 47 * sign(image_xscale);
playPos[1] = y + 2;

playDirection = PLAY_LEFT;