/// @description Insert description here
// You can write your code in this editor
if(deflected)
{
	instance_destroy(other)

	audio_play_sound(snd_badguy_Death_Noise,100,false)

	instance_destroy(self)	
}
