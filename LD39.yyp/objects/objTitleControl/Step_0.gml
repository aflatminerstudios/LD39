/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(ord("C"))) {
  room_goto(roomCredits);
} else if (keyboard_check_pressed(vk_anykey)) {
  room_goto(roomInstructions);
}

if (mouse_check_button_pressed(mb_left)) {  
 // show_debug_message(string(position_meeting(mouse_x, mouse_y, objClickForCredits)) + " at (" + mouse_x + ", " + mouse_y + ")"); 
  if (!position_meeting(mouse_x, mouse_y, objClickForCredits)) {
    room_goto(roomInstructions);
  }  
}