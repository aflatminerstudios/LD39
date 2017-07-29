/// @description Check if too many circuits on
// You can write your code in this editor

if (ds_exists(connectedList, ds_type_list)) { 

  var count = 0;
  for (var i = 0; i < ds_list_size(connectedList); ++i) {
    if (connectedList[| i].isPowered) {
      ++count;
    }
  }

  if (count > maxCount) {
    for (var i = 0; i < ds_list_size(connectedList); ++i) {
      if (connectedList[| i].isPowered) {
        scrToggleCabinet(connectedList[| i].id);
      }
    }
  }
}