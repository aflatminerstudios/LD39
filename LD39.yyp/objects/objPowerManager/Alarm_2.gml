/// @description For changing brightness
// You can write your code in this editor

if (brightness != 1.0) {
  brightness += 0.05 * sign(1.0 - brightness);
}

if (brightness != 1.0) {
  alarm[2] = room_speed / 10;
}