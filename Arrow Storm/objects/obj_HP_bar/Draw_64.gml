/// @description Insert description here
// You can write your code in this editor

if(instance_exists(obj_player))
{

draw_set_color(c_gray)
draw_rectangle(displacementX, displacementY,displacementX + bar_width,displacementY + bar_height,false)
draw_set_color(c_red)
draw_rectangle(displacementX, displacementY,displacementX + bar_width*(obj_player.hp/100),displacementY + bar_height,false)

}