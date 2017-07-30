/// @description Set up initial state
// You can write your code in this editor



maxVisitors = 20;

//Spawn initial visitors
instance_create_layer(320, 544, "Instances", objVisitor);
instance_create_layer(320, 544, "Instances", objVisitor);
instance_create_layer(320, 544, "Instances", objVisitor);
numVisitors= 3;


alarm[0] = objGameControl.timeStep * random_range(0.5, 1.5);