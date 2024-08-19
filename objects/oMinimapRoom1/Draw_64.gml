
var x_scale = (oMinimapTrackerMap.relative_x_percent) * 0.01;
var y_scale = (oMinimapTrackerMap.relative_y_percent) * 0.01;
var _width = oMinimapTrackerMap.minimap_px_length;
var _height = oMinimapTrackerMap.minimap_px_height;

// the left & top are ON the sprite not the screen
// width and height dont scale down

draw_sprite_part_ext(sLevel1Outline_1,0,_left,0,diff_x2,diff_y3,x,y,x_scale,y_scale,c_white,1);

// draw_sprite_ext(sLevel1Outline_1,0,x,y,x_scale,y_scale,0,c_grey,1);

// show_debug_message("diff_x2:{0},diff_y3:{1},_left:{2},_top:{3}",diff_x2,diff_y3,_left,0);

// show_debug_message("{0},{1}",x,y);


