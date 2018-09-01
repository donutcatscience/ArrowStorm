/// @description Insert description here
// You can write your code in this editor

if(!deflected)
{

	destPointX = startPointX
	destPointY = startPointY
	
	// negate the slope to deflect back to source
	rise *= -1
	run *= -1

	image_angle = point_direction(x,y,destPointX,destPointY)
	
	deflected = true
	
	audio_play_sound(snd_arrow_Block,100,false)
}