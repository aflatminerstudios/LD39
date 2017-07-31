/// @description Insert description here
// You can write your code in this editor

//call parent event
event_inherited();

powerUsage = 50.0;
incomePerTimeStep = 10.0;
if (instance_number(objGameControl) > 0) {
  incomePerStep = incomePerTimeStep / objGameControl.timeStep;
}

style = STYLE_FOOD;
baseHappiness = 0.25;


onSprite = sprVendingMachineOn;
offSprite = sprVendingMachineOff;
playingSprite = sprVendingMachinePlaying;
friedSprite = sprVendingMachineFried;

reflection.sprite_index = sprVendingMachineReflection;

playPos[0] = x;
playPos[1] = y + 10;