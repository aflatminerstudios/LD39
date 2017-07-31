/// @description Set up initial state
// You can write your code in this editor



maxVisitors = 10;


//Spawn initial visitors
instance_create_layer(320, 544, "Instances", objVisitor);
instance_create_layer(585, 358, "Instances", objVisitor);
instance_create_layer(815, 500, "Instances", objVisitor);
numVisitors= 3;


minTime = objGameControl.timeStep * 1;
maxTime = objGameControl.timeStep * 4;

alarm[0] = random_range(minTime, maxTime);