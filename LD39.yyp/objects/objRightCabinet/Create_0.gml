/// @description Insert description here
// You can write your code in this editor

//call parent event
event_inherited();

powerUsage = 20.0;
incomePerTimeStep = 3.0;
incomePerStep = incomePerTimeStep / objGameControl.timeStep;

style = STYLE_ACTION;
baseHappiness = 0.15;


onSprite = sprRightCabinet;
offSprite = sprRightCabinetOff;