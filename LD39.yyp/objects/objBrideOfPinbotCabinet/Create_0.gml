/// @description Insert description here
// You can write your code in this editor

//call parent event
event_inherited();

powerUsage = 50.0;
incomePerTimeStep = 12.0;
if (instance_number(objGameControl) > 0) {
  incomePerStep = incomePerTimeStep / objGameControl.timeStep;
}

style = STYLE_PINBALL;
baseHappiness = 0.3;


onSprite = sprBrideOfPinbotCabinetOn;
offSprite = sprBrideOfPinbotCabinetOff;
playingSprite = sprBrideOfPinbotCabinetPlaying;
friedSprite = sprBrideOfPinbotCabinetFried;

reflection.sprite_index = sprBrideOfPinbotCabinetReflection;

playPos[0] = x - 45 * sign(image_xscale);
playPos[1] = y + 10;

playDirection = PLAY_RIGHT;