/// @description Insert description here
// You can write your code in this editor

// Player movement sounds
if (((x != prevX) || (y != prevY)) && (!audio_is_playing(snd_horse_Gallop))){
	audio_play_sound(snd_horse_Gallop,100,false);
	
} else if (((x == prevX) && (y == prevY)) && (audio_is_playing(snd_horse_Gallop))){
	audio_stop_sound(snd_horse_Gallop);
}