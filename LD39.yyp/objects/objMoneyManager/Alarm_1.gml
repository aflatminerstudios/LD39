/// @description Remove costs every day
// You can write your code in this editor

money -= rent + powerCost;

if (money < 0) {
	show_message("YOU LOSE! Money is negative!");
	room_goto(room0);
}