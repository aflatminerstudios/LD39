var c1 = instance_create_layer(768, 512, "Instances", objCabinet);
var c2 = instance_create_layer(512, 416, "Instances", objCabinet);

maxCount = 1;

connectedList = ds_list_create();
ds_list_add(connectedList, c1);
ds_list_add(connectedList, c2);