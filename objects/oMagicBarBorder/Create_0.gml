map_y1 = oMinimap.minimap_height_y1; //bottom left
map_y2 = oMinimap.minimap_height_y2; //top right
map_x1 = oMinimap.minimap_width_x1; //bottom left
map_x2 = oMinimap.minimap_width_x2; //top right

//Spawn Point for Progress Bar
/*
bottom_left_x = map_x1-40;
bottom_left_y = map_y1;
*/

// Below variables currently broken
// bar_length = ((map_x2-map_x1) - 10) - (map_x1-40);
// bar_height = map_y1 - map_y2;

// instance_create_layer(bottom_left_x,bottom_left_y,"UI",oMagicProgressBar);

increase_magic = false;
decrease_magic = false;
is_recharging = false;
magic = global.magic;