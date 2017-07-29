/// @description Randomly changes total amount of power
// You can write your code in this editor

totalPower += irandom_range(-20, 20);

if (totalPower < 20) 
	totalPower = 20;

alarm[0] = irandom_range(1, 5) * room_speed;