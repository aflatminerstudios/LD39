/// @description Insert description here
// You can write your code in this editor

//call parent event
event_inherited();

powerUsage = 50.0;
incomePerTimeStep = 7.0;
if (instance_number(objGameControl) > 0) {
  incomePerStep = incomePerTimeStep / objGameControl.timeStep;
}

style = STYLE_SHMUP;
baseHappiness = 0.25;


onSprite = sprOtherCabinet;
offSprite = sprOtherCabinetOff;