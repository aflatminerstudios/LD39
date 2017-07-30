/// @description Sets up variables


money = 120;
rent = 100;
powerCost = 0;
powerIncrement = 5;


paymentPopupTime = 0;
paymentPopupMaxTime = room_speed * 1;
displayPayment = false;
paymentAmount = 0;

alarm[0] = objGameControl.timeStep;
alarm[1] = objGameControl.timeStepsInDay * objGameControl.timeStep;
