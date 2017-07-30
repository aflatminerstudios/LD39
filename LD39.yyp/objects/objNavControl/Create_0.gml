/// @description Spawn and set up points
// You can write your code in this editor


//These will be in groups of the "same" nodes, starting at similar positions and moving on
//Will use data in objWalkPoint on similar nodes to populate

//Starting points 0
nodeArray[0] = instance_create_layer(320, 600, "WalkPoints", objWalkPoint);
nodeArray[9] = instance_create_layer(266, 576, "WalkPoints", objWalkPoint);
indexArray[0] = 0;
indexArray[1] = 9;
scrSetupNodeSameListsViaArray(nodeArray, indexArray); 


//Points 1
nodeArray[1] = instance_create_layer(550, 480, "WalkPoints", objWalkPoint);
nodeArray[10] = instance_create_layer(420, 485, "WalkPoints", objWalkPoint);
indexArray[0] = 1;
indexArray[1] = 10;
scrSetupNodeSameListsViaArray(nodeArray, indexArray);

//Points 2
nodeArray[2] = instance_create_layer(710, 430, "WalkPoints", objWalkPoint);
nodeArray[11] = instance_create_layer(650, 515, "WalkPoints", objWalkPoint);
indexArray[0] = 2;
indexArray[1] = 11;
scrSetupNodeSameListsViaArray(nodeArray, indexArray);

//Points 3
nodeArray[3] = instance_create_layer(870, 480, "WalkPoints", objWalkPoint);
nodeArray[12] = instance_create_layer(850, 520, "WalkPoints", objWalkPoint);
indexArray[0] = 3;
indexArray[1] = 12;
scrSetupNodeSameListsViaArray(nodeArray, indexArray);

//Points 4
nodeArray[4] = instance_create_layer(1050, 420, "WalkPoints", objWalkPoint);
nodeArray[13] = instance_create_layer(900, 420, "WalkPoints", objWalkPoint);
indexArray[0] = 4;
indexArray[1] = 13;
scrSetupNodeSameListsViaArray(nodeArray, indexArray);

//Points 5
nodeArray[5] = instance_create_layer(625, 390, "WalkPoints", objWalkPoint);
nodeArray[14] = instance_create_layer(600, 330, "WalkPoints", objWalkPoint);
indexArray[0] = 5;
indexArray[1] = 14;
scrSetupNodeSameListsViaArray(nodeArray, indexArray);

//Points 6
nodeArray[6] = instance_create_layer(460, 290, "WalkPoints", objWalkPoint);
nodeArray[15] = instance_create_layer(520, 270, "WalkPoints", objWalkPoint);
indexArray[0] = 6;
indexArray[1] = 15;
scrSetupNodeSameListsViaArray(nodeArray, indexArray);

//Points 7
nodeArray[7] = instance_create_layer(210, 425, "WalkPoints", objWalkPoint);
nodeArray[16] = instance_create_layer(260, 430, "WalkPoints", objWalkPoint);
indexArray[0] = 7;
indexArray[1] = 16;
scrSetupNodeSameListsViaArray(nodeArray, indexArray);

//Points 8
nodeArray[8] = instance_create_layer(190, 535, "WalkPoints", objWalkPoint);
nodeArray[17] = instance_create_layer(180, 490, "WalkPoints", objWalkPoint);
indexArray[0] = 8;
indexArray[1] = 17;
scrSetupNodeSameListsViaArray(nodeArray, indexArray);


//Add clockwise directions
scrAddListToListCAdjacent(nodeArray[0].samePointList, nodeArray[1].samePointList);
scrAddListToListCAdjacent(nodeArray[1].samePointList, nodeArray[2].samePointList);
scrAddListToListCAdjacent(nodeArray[2].samePointList, nodeArray[3].samePointList);
scrAddListToListCAdjacent(nodeArray[3].samePointList, nodeArray[4].samePointList);
scrAddListToListCAdjacent(nodeArray[4].samePointList, nodeArray[5].samePointList);
scrAddListToListCAdjacent(nodeArray[5].samePointList, nodeArray[6].samePointList);
scrAddListToListCAdjacent(nodeArray[6].samePointList, nodeArray[7].samePointList);
scrAddListToListCAdjacent(nodeArray[7].samePointList, nodeArray[8].samePointList);
scrAddListToListCAdjacent(nodeArray[8].samePointList, nodeArray[0].samePointList);

//Add counterclockwise directions
scrAddListToListCCAdjacent(nodeArray[0].samePointList, nodeArray[8].samePointList);
scrAddListToListCCAdjacent(nodeArray[1].samePointList, nodeArray[0].samePointList);
scrAddListToListCCAdjacent(nodeArray[2].samePointList, nodeArray[1].samePointList);
scrAddListToListCCAdjacent(nodeArray[3].samePointList, nodeArray[2].samePointList);
scrAddListToListCCAdjacent(nodeArray[4].samePointList, nodeArray[3].samePointList);
scrAddListToListCCAdjacent(nodeArray[5].samePointList, nodeArray[4].samePointList);
scrAddListToListCCAdjacent(nodeArray[6].samePointList, nodeArray[5].samePointList);
scrAddListToListCCAdjacent(nodeArray[7].samePointList, nodeArray[6].samePointList);
scrAddListToListCCAdjacent(nodeArray[8].samePointList, nodeArray[7].samePointList);