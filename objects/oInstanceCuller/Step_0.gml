if (oPlayer_Board.x < room_width - oMinimap.gui_width)
{
	instance_deactivate_object(oBlade);

	var vx = camera_get_view_x(view_camera[0]);
	var vy = camera_get_view_y(view_camera[0]);
	var vh = camera_get_view_height(view_camera[0]);
	var vw = camera_get_view_width(view_camera[0]) - 800;

	instance_activate_region(vx,vy,vw,vh,true);
}
else
{
	instance_deactivate_object(oBlade);

	var vx = camera_get_view_x(view_camera[0]);
	var vy = camera_get_view_y(view_camera[0]);
	var vh = camera_get_view_height(view_camera[0]);
	var vw = camera_get_view_width(view_camera[0]);

	instance_activate_region(vx,vy,vw,vh,true);
}