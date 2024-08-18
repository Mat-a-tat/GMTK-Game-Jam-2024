blade_height = 270;
// Spawn blades at every x in the room
for (i = 0; i < room_width;  i++)
{
	var inst = instance_create_layer(i,blade_height,"Blades",oBlade);
	with (inst)
	{
		image_yscale = 5.6;
	}
}