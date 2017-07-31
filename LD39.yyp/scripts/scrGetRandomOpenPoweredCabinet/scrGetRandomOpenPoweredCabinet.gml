/// scrGetRandomOpenPoweredCabinet()

var visitorID = argument0;
/*
var numCabinets = instance_number(objCabinet);

var cabArray;
var cabWeights;
var counter = 0;
//Get cabinets and weights for cabinets
for (var i = 0; i < numCabinets; ++i) {
  var theCab = instance_find(objCabinet, i);
  if (theCab.isPowered && !theCab.isBeingPlayed) {
    cabArray[counter] = theCab;
    cabWeights[counter] = visitorID.stylePrefs[cabArray[counter].style];
    counter++;
  }
}
show_debug_message(string(counter) + " open powered cabinets");
if (counter == 0)
  return noone;

//get sum
var sum = 0;
for (var i = 0; i < array_length_1d(cabWeights); ++i) {
  sum += cabWeights[i];
}

//get break points
var breakPoints;
breakPoints[0] = cabWeights[0] / sum;
for (var i = 1; i < array_length_1d(cabWeights); ++i) {
  breakPoints[i] = cabWeights[i] / sum + breakPoints[i - 1];  
}
var sum2 = 0;
for (var i = 0; i < array_length_1d(breakPoints); ++i) {
   sum2 += breakPoints[i];
}
//show_debug_message("sum is " + string(sum2));

//Now, determine which cabinet by comparing against breakpoints
var r = random(1);
//show_debug_message("r is " + string(r));
//default to last one in list
var which = cabArray[array_length_1d(cabArray) -1];
for (var i = array_length_1d(cabWeights) - 1; i < 0; --i) {
  if (r <= breakPoints[i])
     which = cabArray[i];
}

return which;
*/

var numCabinets = instance_number(objCabinet);
var checkedCabinets = 0;

var startingPoint = irandom(numCabinets - 1);
var currentCabinet = startingPoint;

while(checkedCabinets < numCabinets) {
	var cabinetInstance = instance_find(objCabinet, currentCabinet);
	if(cabinetInstance.isPowered && !cabinetInstance.isBeingPlayed) {
		return cabinetInstance;
	}

	checkedCabinets++;
	currentCabinet++;
	if(currentCabinet >= numCabinets)
		currentCabinet = 0;
}

return noone;
