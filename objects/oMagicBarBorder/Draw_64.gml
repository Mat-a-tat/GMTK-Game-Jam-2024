var bar_x1 = oMinimap.gui_width - (map_x2-map_x1) - 20 - 5 - 15;  // -minimap length, -room offset, -buffer, -bar width
var bar_x2 = oMinimap.gui_width - (map_x2-map_x1) - 20 - 5;

draw_rectangle_color(bar_x1,map_y1+1,bar_x2,map_y2-1,c_white,c_white,c_white,c_white,true);
draw_healthbar(bar_x1, map_y1, bar_x2, map_y2, magic, c_gray, c_purple, c_blue, 2, true, false);


// length: 28, height:100


