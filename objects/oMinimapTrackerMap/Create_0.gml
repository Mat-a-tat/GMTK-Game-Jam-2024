// GUI Dimensions
gui_height = display_get_gui_height();
gui_width = display_get_gui_width();

// These variable calculate dimensions
minimap_px_height = oMinimap.minimap_height_y1 - oMinimap.minimap_height_y2;
minimap_px_length = oMinimap.minimap_width_x1 - oMinimap.minimap_width_x2;

// A variable that works in tandem with the minimap_tracker_spd in the STEP EVENT
minimap_spd_percent_x = gui_width / minimap_px_length;
minimap_spd_percent_y = gui_height / minimap_px_height;

//Minimap Dot Location

	//Calculates the difference between the screen and minimap size into a percent
relative_x_percent = minimap_px_length / gui_width;
relative_y_percent = minimap_px_height / gui_height;

	// Stores the position of the player on the screen
player_x_relative_width = 0 + oPlayer_Board.x;
player_y_relative_height = 0 + oPlayer_Board.y;

	// Sets the tracker spawn point to be relative to where the player is in the room
x = (player_x_relative_width * relative_x_percent);
y = oMinimap.minimap_height_y1 + (player_y_relative_height * relative_y_percent);

