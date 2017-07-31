/// @description Spawn and set up points
// You can write your code in this editor

//These will be in groups of the "same" nodes, starting at similar positions and moving on
//Will use data in objWalkPoint on similar nodes to populate
numGroups = 8;


//Starting points 0
nodeArray[0] = instance_create_layer(320, 600, "WalkPoints", objWalkPoint);
nodeArray[9] = instance_create_layer(266, 576, "WalkPoints", objWalkPoint);
nodeArray[18] = instance_create_layer(390, 560, "WalkPoints", objWalkPoint);
nodeArray[27] = instance_create_layer(264, 509, "WalkPoints", objWalkPoint);
indexArray[0] = 0;
indexArray[1] = 9;
indexArray[2] = 18;
indexArray[3] = 27;
scrSetupNodeSameListsViaArray(nodeArray, indexArray, 0); 


//Points 1
nodeArray[1] = instance_create_layer(415, 490, "WalkPoints", objWalkPoint);
nodeArray[10] = instance_create_layer(410, 480, "WalkPoints", objWalkPoint);
nodeArray[19] = instance_create_layer(511, 496, "WalkPoints", objWalkPoint);
nodeArray[28] = instance_create_layer(345, 505, "WalkPoints", objWalkPoint);
indexArray[0] = 1;
indexArray[1] = 10;
indexArray[2] = 19;
indexArray[3] = 28;
scrSetupNodeSameListsViaArray(nodeArray, indexArray, 1);

//Points 2
nodeArray[2] = instance_create_layer(605, 475, "WalkPoints", objWalkPoint);
nodeArray[11] = instance_create_layer(650, 515, "WalkPoints", objWalkPoint);
nodeArray[20] = instance_create_layer(750, 427, "WalkPoints", objWalkPoint);
nodeArray[29] = instance_create_layer(676, 453, "WalkPoints", objWalkPoint);
indexArray[0] = 2;
indexArray[1] = 11;
indexArray[2] = 20;
indexArray[3] = 29;
scrSetupNodeSameListsViaArray(nodeArray, indexArray, 2);

//Points 3
nodeArray[3] = instance_create_layer(870, 520, "WalkPoints", objWalkPoint);
nodeArray[12] = instance_create_layer(750, 500, "WalkPoints", objWalkPoint);
nodeArray[21] = instance_create_layer(850, 445, "WalkPoints", objWalkPoint);
nodeArray[30] = instance_create_layer(711, 411, "WalkPoints", objWalkPoint);
indexArray[0] = 3;
indexArray[1] = 12;
indexArray[2] = 21;
indexArray[3] = 30;
scrSetupNodeSameListsViaArray(nodeArray, indexArray, 3);

//Points 4
nodeArray[4] = instance_create_layer(890, 404, "WalkPoints", objWalkPoint);
nodeArray[13] = instance_create_layer(900, 450, "WalkPoints", objWalkPoint);
nodeArray[22] = instance_create_layer(800, 397, "WalkPoints", objWalkPoint);
nodeArray[31] = instance_create_layer(824, 476, "WalkPoints", objWalkPoint);
indexArray[0] = 4;
indexArray[1] = 13;
indexArray[2] = 22;
indexArray[3] = 31;
scrSetupNodeSameListsViaArray(nodeArray, indexArray, 4);

//Points 5
nodeArray[5] = instance_create_layer(670, 390, "WalkPoints", objWalkPoint);
nodeArray[14] = instance_create_layer(620, 310, "WalkPoints", objWalkPoint);
nodeArray[23] = instance_create_layer(603, 364, "WalkPoints", objWalkPoint);
nodeArray[32] = instance_create_layer(750, 391, "WalkPoints", objWalkPoint);
indexArray[0] = 5;
indexArray[1] = 14;
indexArray[2] = 23;
indexArray[3] = 32;
scrSetupNodeSameListsViaArray(nodeArray, indexArray, 5);

//Points 6
nodeArray[6] = instance_create_layer(460, 290, "WalkPoints", objWalkPoint);
nodeArray[15] = instance_create_layer(520, 270, "WalkPoints", objWalkPoint);
nodeArray[24] = instance_create_layer(489, 280, "WalkPoints", objWalkPoint);
nodeArray[33] = instance_create_layer(487, 297, "WalkPoints", objWalkPoint);
indexArray[0] = 6;
indexArray[1] = 15;
indexArray[2] = 24;
indexArray[3] = 33;
scrSetupNodeSameListsViaArray(nodeArray, indexArray, 6);

//Points 7
nodeArray[7] = instance_create_layer(210, 425, "WalkPoints", objWalkPoint);
nodeArray[16] = instance_create_layer(260, 430, "WalkPoints", objWalkPoint);
nodeArray[25] = instance_create_layer(312, 398, "WalkPoints", objWalkPoint);
nodeArray[34] = instance_create_layer(192, 462, "WalkPoints", objWalkPoint);
indexArray[0] = 7;
indexArray[1] = 16;
indexArray[2] = 25;
indexArray[3] = 34;
scrSetupNodeSameListsViaArray(nodeArray, indexArray, 7);

//Points 8
nodeArray[8] = instance_create_layer(190, 535, "WalkPoints", objWalkPoint);
nodeArray[17] = instance_create_layer(180, 490, "WalkPoints", objWalkPoint);
nodeArray[26] = instance_create_layer(338, 540, "WalkPoints", objWalkPoint);
nodeArray[35] = instance_create_layer(281, 449, "WalkPoints", objWalkPoint);
indexArray[0] = 8;
indexArray[1] = 17;
indexArray[2] = 26;
indexArray[3] = 35;
scrSetupNodeSameListsViaArray(nodeArray, indexArray, 8);

/*
//Starting points 0
nodeArray[0] = instance_create_layer(320, 600, "WalkPoints", objWalkPoint);
//nodeArray[9] = instance_create_layer(266, 576, "WalkPoints", objWalkPoint);
//nodeArray[18] = instance_create_layer(390, 560, "WalkPoints", objWalkPoint);
//nodeArray[27] = instance_create_layer(264, 509, "WalkPoints", objWalkPoint);
indexArray[0] = 0;
//indexArray[1] = 9;
//indexArray[2] = 18;
//indexArray[3] = 27;
scrSetupNodeSameListsViaArray(nodeArray, indexArray, 0); 


//Points 1
nodeArray[1] = instance_create_layer(415, 490, "WalkPoints", objWalkPoint);
//nodeArray[10] = instance_create_layer(440, 480, "WalkPoints", objWalkPoint);
//nodeArray[19] = instance_create_layer(511, 496, "WalkPoints", objWalkPoint);
//nodeArray[28] = instance_create_layer(345, 505, "WalkPoints", objWalkPoint);
indexArray[0] = 1;
//indexArray[1] = 10;
//indexArray[2] = 19;
//indexArray[3] = 28;
scrSetupNodeSameListsViaArray(nodeArray, indexArray, 1);

//Points 2
nodeArray[2] = instance_create_layer(605, 475, "WalkPoints", objWalkPoint);
//nodeArray[11] = instance_create_layer(650, 515, "WalkPoints", objWalkPoint);
//nodeArray[20] = instance_create_layer(750, 427, "WalkPoints", objWalkPoint);
//nodeArray[29] = instance_create_layer(676, 453, "WalkPoints", objWalkPoint);
indexArray[0] = 2;
//indexArray[1] = 11;
//indexArray[2] = 20;
//indexArray[3] = 29;
scrSetupNodeSameListsViaArray(nodeArray, indexArray, 2);

//Points 3
nodeArray[3] = instance_create_layer(870, 520, "WalkPoints", objWalkPoint);
//nodeArray[12] = instance_create_layer(750, 500, "WalkPoints", objWalkPoint);
//nodeArray[21] = instance_create_layer(850, 445, "WalkPoints", objWalkPoint);
//nodeArray[30] = instance_create_layer(711, 411, "WalkPoints", objWalkPoint);
indexArray[0] = 3;
//indexArray[1] = 12;
//indexArray[2] = 21;
//indexArray[3] = 30;
scrSetupNodeSameListsViaArray(nodeArray, indexArray, 3);

//Points 4
nodeArray[4] = instance_create_layer(890, 404, "WalkPoints", objWalkPoint);
//nodeArray[13] = instance_create_layer(900, 450, "WalkPoints", objWalkPoint);
//nodeArray[22] = instance_create_layer(786, 396, "WalkPoints", objWalkPoint);
//nodeArray[31] = instance_create_layer(824, 476, "WalkPoints", objWalkPoint);
indexArray[0] = 4;
//indexArray[1] = 13;
//indexArray[2] = 22;
//indexArray[3] = 31;
scrSetupNodeSameListsViaArray(nodeArray, indexArray, 4);

//Points 5
nodeArray[5] = instance_create_layer(670, 390, "WalkPoints", objWalkPoint);
//nodeArray[14] = instance_create_layer(600, 330, "WalkPoints", objWalkPoint);
//nodeArray[23] = instance_create_layer(603, 364, "WalkPoints", objWalkPoint);
//nodeArray[32] = instance_create_layer(817, 428, "WalkPoints", objWalkPoint);
indexArray[0] = 5;
//indexArray[1] = 14;
//indexArray[2] = 23;
//indexArray[3] = 32;
scrSetupNodeSameListsViaArray(nodeArray, indexArray, 5);

//Points 6
nodeArray[6] = instance_create_layer(460, 290, "WalkPoints", objWalkPoint);
//nodeArray[15] = instance_create_layer(520, 270, "WalkPoints", objWalkPoint);
//nodeArray[24] = instance_create_layer(489, 280, "WalkPoints", objWalkPoint);
//nodeArray[33] = instance_create_layer(487, 297, "WalkPoints", objWalkPoint);
indexArray[0] = 6;
//indexArray[1] = 15;
//indexArray[2] = 24;
//indexArray[3] = 33;
scrSetupNodeSameListsViaArray(nodeArray, indexArray, 6);

//Points 7
nodeArray[7] = instance_create_layer(210, 425, "WalkPoints", objWalkPoint);
//nodeArray[16] = instance_create_layer(260, 430, "WalkPoints", objWalkPoint);
//nodeArray[25] = instance_create_layer(312, 398, "WalkPoints", objWalkPoint);
//nodeArray[34] = instance_create_layer(192, 462, "WalkPoints", objWalkPoint);
indexArray[0] = 7;
//indexArray[1] = 16;
//indexArray[2] = 25;
//indexArray[3] = 34;
scrSetupNodeSameListsViaArray(nodeArray, indexArray, 7);

//Points 8
nodeArray[8] = instance_create_layer(190, 535, "WalkPoints", objWalkPoint);
//nodeArray[17] = instance_create_layer(180, 490, "WalkPoints", objWalkPoint);
//nodeArray[26] = instance_create_layer(338, 540, "WalkPoints", objWalkPoint);
//nodeArray[35] = instance_create_layer(281, 449, "WalkPoints", objWalkPoint);
indexArray[0] = 8;
//indexArray[1] = 17;
//indexArray[2] = 26;
//indexArray[3] = 35;
scrSetupNodeSameListsViaArray(nodeArray, indexArray, 8);
*/

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