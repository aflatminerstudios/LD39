/// @description Insert description here
// You can write your code in this editor


if (sprite_index == spriteOn) {
  sprite_index = spriteOff;
  audio_group_set_gain(group, 0, 1);
} else {
  sprite_index = spriteOn;
  audio_group_set_gain(group, 1, 1);
}