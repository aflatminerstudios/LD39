/// @description Insert description here
// You can write your code in this editor

with (objCabinet) {
  sprite_index = friedSprite;
}

timer++;

if (timer > canGo && (keyboard_check_pressed(vk_anykey) || mouse_check_button(mb_any))) {
  room_goto(roomMain);
}