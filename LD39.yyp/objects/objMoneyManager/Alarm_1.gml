/// @description Remove costs every day
// You can write your code in this editor

paymentAmount = rent + powerCost;
money -= paymentAmount;

powerCost += powerIncrement;

if (money < 0) {
	show_debug_message("YOU LOSE! Money is negative!");
	room_goto(room0);
}

alarm[1] = objGameControl.timeStepsInDay * objGameControl.timeStep;
displayPayment = true;