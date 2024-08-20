depth = 100;

x_scale = (oMinimapTrackerMap.relative_x_percent) * 0.01;
y_scale = (oMinimapTrackerMap.relative_y_percent) * 0.01;
_width = oMinimapTrackerMap.minimap_px_length;
_height = oMinimapTrackerMap.minimap_px_height;

map_top_right_x = oMinimap.minimap_width_x1;
map_top_right_y = oMinimap.minimap_height_y2;

x = map_top_right_x + ((0 + oPathFullLevel1_4.x) / oMinimapTrackerMap.relative_x_percent);
y = ((map_top_right_y + ((0 + oPathFullLevel1_4.y) / oMinimapTrackerMap.relative_y_percent)));

