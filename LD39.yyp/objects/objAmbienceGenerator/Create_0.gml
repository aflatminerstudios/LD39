/// @description Insert description here
// You can write your code in this editor

numSimultaneousSounds = 8; // 0-8 simultaneous sounds 
alarmMinTime = floor(room_speed*0.4);
alarmMaxTime = floor(room_speed*0.6);

for(var i = 0; i < numSimultaneousSounds; i++) {
	alarm[i] = irandom_range(0, alarmMaxTime);
}