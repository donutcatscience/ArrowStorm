/// @description Insert description here
// You can write your code in this editor


switch(deflected)
{
	case true:
	image_index = 1
	
	break
	
	case false:
	image_index = 0
	
	break
}


image_alpha -= 0.01


if(image_alpha < 0.2)
{
	instance_destroy(self)	
}
