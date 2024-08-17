
// These variable calculate dimensions
minimap_px_height = oMinimap.minimap_height_y2 - oMinimap.minimap_height_y1;
minimap_px_length = oMinimap.minimap_width_x2 - oMinimap.minimap_width_x1;

// A variable that works in tandem with the minimap_tracker_spd in the STEP EVENT
minimap_spd_percent_x = room_width / minimap_px_length;
minimap_spd_percent_y = room_height / minimap_px_height;

//Minimap Dot Location

	//Calculates the difference between the room and minimap size into a percent
relative_x_percent = minimap_px_length / room_width;
relative_y_percent = minimap_px_height / room_height;

	// Stores the position of the player on the screen
player_x_relative_width = 0 + oPlayer_Board.x;
player_y_relative_height = 0 + oPlayer_Board.y;

	// Sets the tracker spawn point to be relative to where the player is in the room
x = (player_x_relative_width * relative_x_percent);
y = oMinimap.minimap_height_y1 + (player_y_relative_height * relative_y_percent);

