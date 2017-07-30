/// @description Insert description here
// You can write your code in this editor

//call parent event
event_inherited();

powerUsage = 50.0;
incomePerTimeStep = 10.0;
incomePerStep = incomePerTimeStep / objGameControl.timeStep;

style = STYLE_PUZZLE;
baseHappiness = 0.25;


onSprite = sprBrideOfPinbotCabinetOn;
offSprite = sprBrideOfPinbotCabinetOff;
playingSprite = sprBrideOfPinbotCabinetPlaying;
friedSprite = sprBrideOfPinbotCabinetFried;

reflection.sprite_index = sprBrideOfPinbotCabinetReflection;

playPos[0] = x - 16;
playPos[1] = y + 81;