/// @description Insert description here
// You can write your code in this editor

//call parent event
event_inherited();

powerUsage = 50.0;
incomePerTimeStep = 10.0;
if (instance_number(objGameControl) > 0) {
  incomePerStep = incomePerTimeStep / objGameControl.timeStep;
}

style = STYLE_ACTION;
baseHappiness = 0.25;


onSprite = sprSSCabinetOn;
offSprite = sprSSCabinetOff;
playingSprite = sprSSCabinetPlaying;
friedSprite = sprSSCabinetFried;

reflection.sprite_index = sprSSCabinetReflection;

playPos[0] = x + 37;
playPos[1] = y + 5;

playDirection = PLAY_LEFT;