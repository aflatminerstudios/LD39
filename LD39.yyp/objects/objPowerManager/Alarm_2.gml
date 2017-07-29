/// @description Actually change power
// You can write your code in this editor

var change = clamp(powerDifference, -5, 5);

totalPower += change;
powerDifference -= change;

if (totalPower < 20) 
	totalPower = 20;

if (powerDifference == 0) {
  alarm[1] = room_speed / 2;
} else {
  alarm[0] = irandom_range(1, 5) * room_speed;
}