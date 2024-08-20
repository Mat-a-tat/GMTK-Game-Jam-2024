/// @description Insert description here

var _arr = layer_get_all_elements("Assets_1");
var _eid = _arr[0];
if layer_sequence_is_finished(_eid) 
{
	room_goto_next();
}