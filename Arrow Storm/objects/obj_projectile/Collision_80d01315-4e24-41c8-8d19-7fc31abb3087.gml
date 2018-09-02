/// @description Insert description here
// You can write your code in this editor
if(!deflected)
{
	other.hp -= 5

	audio_play_sound(snd_taken_Damage,100,false)

	instance_destroy(self)
}
