
image_xscale = image_xscale * 10;
image_yscale = image_yscale * 10;

// These variable calculate dimensions
minimap_px_height = oMinimap.minimap_height_y2 - oMinimap.minimap_height_y1;
minimap_px_length = oMinimap.minimap_width_x2 - oMinimap.minimap_width_x1;
gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

// A variable that works in tandem with the minimap_tracker_spd in the STEP EVENT
minimap_spd_percent = room_width / minimap_px_length;


//Minimap Dot Location
x = oMinimap.minimap_width_x1;
y = oMinimap.minimap_height_y1 + (minimap_px_height / 2);

