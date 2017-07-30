/// @description Turn everything into low power or off
// You can write your code in this editor
if (usedPower > totalPower + 25) {
  //Turn them all off
  with (objCabinet) {
  	if (isPowered) {
  		scrToggleCabinet(self.id);
  	}
  }    
    
} else {
  if (!isLowPower) {
  //low power mode
    with (objCabinet) {
    	if (isPowered) {
    		scrLowPower(self.id);
    	}
    }
  }
  isLowPower = true;
}
