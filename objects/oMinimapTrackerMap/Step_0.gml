// Calculates the speed that the minimap tracker (red dot) moves
var minimap_tracker_spd = oPlayer_Board.surf_spd / minimap_spd_percent;

// Moves the tracker dot along the minimap at the same (downscaled) rate as the player in the level
if (oMinimapTrackerLevel.is_tracking) && (oPlayer_Board.is_surfing)
{
	x += minimap_tracker_spd;
}