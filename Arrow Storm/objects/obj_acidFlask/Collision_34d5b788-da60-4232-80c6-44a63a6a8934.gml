//// @description Insert description here
// You can write your code in this editor

if(!deflected and instance_exists(obj_player))
{

	destPointX = startPointX
	destPointY = startPointY
	
	

	image_angle = point_direction(x,y,destPointX,destPointY)
	
	move_towards_point(destPointX,destPointY,projectileSpeed)
	
	deflected = true
	
	audio_play_sound(snd_jar_Block,100,false)
}
