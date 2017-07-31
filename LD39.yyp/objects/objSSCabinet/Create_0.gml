/// @description Insert description here
// You can write your code in this editor

//call parent event
event_inherited();

powerUsage = 30.0;
incomePerTimeStep = 8.0;
if (instance_number(objGameControl) > 0) {
  incomePerStep = incomePerTimeStep / objGameControl.timeStep;
}

style = STYLE_SOULS;
baseHappiness = 0.35;


onSprite = sprSSCabinetOn;
offSprite = sprSSCabinetOff;
playingSprite = sprSSCabinetPlaying;
friedSprite = sprSSCabinetFried;

reflection.sprite_index = sprSSCabinetReflection;

playPos[0] = x + 47;
playPos[1] = y + 2;

playDirection = PLAY_LEFT;