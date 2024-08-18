// Calculates the speed that the minimap tracker (red dot) moves
var minimap_tracker_spd_x = oPlayer_Board.surf_spd / minimap_spd_percent_x;
var minimap_tracker_spd_y = oPlayer_Board.vsp / minimap_spd_percent_y;

// Moves the tracker dot along the minimap at the same (downscaled) rate as the player in the level
if (oMinimapTrackerLevel.is_tracking) && (oPlayer_Board.is_surfing)
{
	x += minimap_tracker_spd_x;
	y += minimap_tracker_spd_y;
}

//show_debug_message("{0},{1}",minimap_px_length,minimap_px_height);
//show_debug_message("{0},{1}",x,y);