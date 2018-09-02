/// @description checkInView(agent)
/// @param agent - AI Agent that has a obj_enemy_parent Parent
agent = argument0
var cx = camera_get_view_x(view_camera[0])
var cy = camera_get_view_y(view_camera[0])
var cw = camera_get_view_width(view_camera[0])
var ch = camera_get_view_height(view_camera[0])
//show_debug_message(string(camera_get_view_x(view_camera[0])))
if (agent.x > cx && agent.x < cx+cw
&& agent.y > cy && agent.y < cy+ch)
{
	return true
}
else
{ 
	return false
}