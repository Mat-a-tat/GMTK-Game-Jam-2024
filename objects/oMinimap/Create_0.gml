// GUI Dimensions
gui_height = display_get_gui_height();
gui_width = display_get_gui_width();

//Minimap Dimensions
minimap_width_x1 = (gui_width - (room_width / 10)) - 20; // bottom left //10x smaller than room size
minimap_width_x2 = gui_width - 20; //top right
minimap_height_y1 = (room_height / 10) + 40; // bottom left
minimap_height_y2 = 0 + 40; // top right

x = minimap_width_x1;
y = minimap_height_y2;

instance_create_layer(x,y,"UI",oMinimapTrackerMap);