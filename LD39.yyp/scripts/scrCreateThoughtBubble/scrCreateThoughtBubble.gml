///@func scrCreateThoughtBubble(parentID, subSprite)
///@desc Creates a bubble and attaches it to parent
///@param parentID parent to attach to
///@subsprite which sprite to draw in the middle

var parentID = argument0;
var subSprite = argument1;

var b = instance_create_layer(parentID.x, parentID.y, "Instances", objThoughtBubble);
b.parent = parentID;
b.insideSprite = subSprite;
