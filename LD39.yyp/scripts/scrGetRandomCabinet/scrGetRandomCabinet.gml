/// scrGetRandomOpenPoweredCabinet(visitorID)

var visitorID = argument0;

var numCabinets = instance_number(objCabinet);
/*
var cabArray;
var cabWeights;

//Get cabinets and weights for cabinets
for (var i = 0; i < numCabinets; ++i) {
  cabArray[i] = instance_find(objCabinet, i);
  cabWeights[i] = visitorID.stylePrefs[cabArray[i].style];
}

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

//Now, determine which cabinet by comparing against breakpoints
var r = random(1);
//default to last one in list
var which = cabArray[array_length_1d(cabArray) -1];
for (var i = array_length_1d(cabWeights); i < 0; --i) {
  if (r <= breakPoints[i])
     which = cabArray[i];
}
*/



if(numCabinets > 0)
	return instance_find(objCabinet, irandom(numCabinets - 1));
else
	return noone;