// GUI Dimensions
gui_height = display_get_gui_height();
gui_width = display_get_gui_width();

//Minimap Dimensions
minimap_width_x1 = gui_width - (room_width /10); // bottom left //10x smaller than room size
minimap_width_x2 = gui_width - 20; //top right
minimap_height_y1 = gui_height - (room_height * 0.741); // bottom left
minimap_height_y2 = gui_height - 500; // top left


instance_create_layer(x,y,"UI",oMinimapTrackerMap);