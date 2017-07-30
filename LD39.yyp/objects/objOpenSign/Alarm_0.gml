/// @description Flash sprite off/on
// You can write your code in this editor

if (numberFlashes = 0)
  numberFlashes = irandom_range(5, 10);
  
flashCount += 1;

if (sprite_index = sprOpenSignOn) {
  sprite_index = spriteOff;
} else {
  sprite_index = spriteOn;
}

if (flashCount != numberFlashes) {
  alarm[0] = clamp(room_speed / 3 + currentTime, 1, 10000);//irandom_range(-20, 20);
  currentTime = currentTime - 30 / numberFlashes;
} else {
  flashCount = 0;
  numFlashes = 0;
  sprite_index = spriteOn;
  currentTime = baseTime;
}