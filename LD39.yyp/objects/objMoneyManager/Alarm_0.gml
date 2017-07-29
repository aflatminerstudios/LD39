/// @description Add money from powered game cabinets
// You can write your code in this editor
with (objCabinet) {	
	other.money += scrGetCabinetIncome(self.id);
}

alarm[0] = objGameControl.timeStep;

