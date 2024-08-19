depth = 100;

diff_x1 = 0 + oPathFullLevel1_1.x;
diff_y1 = 0 + oPathFullLevel1_1.y;
diff_y2 = (diff_y1 + oPathFullLevel1_1.sprite_height) - (oMinimap.gui_height);
diff_y3 = (oPathFullLevel1_1.sprite_height - diff_y2); //need to scale?
diff_x2 = (oPathFullLevel1_1.sprite_width + diff_x1);  //need to scale?
_left = 0 + abs(diff_x1);
_top = 0;

map_top_right_x = oMinimap.minimap_width_x1;
map_top_right_y = oMinimap.minimap_height_y2;

x = (map_top_right_x + (((0 + oPathFullLevel1_1.x) / oMinimapTrackerMap.relative_x_percent) - 20) + 22);
y = ((map_top_right_y + ((0 + oPathFullLevel1_1.y) / oMinimapTrackerMap.relative_y_percent)));

// X: 418.20, Y:46.40
