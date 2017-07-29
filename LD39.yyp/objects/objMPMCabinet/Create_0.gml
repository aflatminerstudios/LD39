/// @description Insert description here
// You can write your code in this editor

//call parent event
event_inherited();

powerUsage = 35.0;
incomePerTimeStep = 6.0;
incomePerStep = incomePerTimeStep / objGameControl.timeStep;

style = STYLE_ACTION;
baseHappiness = 0.15;


onSprite = sprMPMCabinetOn;
offSprite = sprMPMCabinetOff;
playingSprite = sprMPMCabinetPlaying;
friedSprite = sprMPMCabinetFried;

reflection.sprite_index = sprMPMReflection;