/// @description Sets up base variables
// You can write your code in this editor

timeStep = room_speed * 5;
timeStepsInDay = 24;

instance_create_layer(x, y, "Managers", objMoneyManager);
instance_create_layer(x, y, "Managers", objPowerManager);