/// @description Sets up variables


money = 110;
rent = 60;
powerCost = 0;
powerIncrement = 3;


paymentPopupTime = 0;
paymentPopupMaxTime = room_speed * 1;
displayPayment = false;
paymentAmount = 0;

alarm[0] = objGameControl.timeStep;
alarm[1] = objGameControl.timeStepsInDay * objGameControl.timeStep;
