if ((killCount) >= 30) && (!soundPlaying)
{
	audio_stop_sound(snGamerBoy);
	audio_play_sound(snWaves,10,true);
	
	instance_destroy(oShark);
	soundPlaying = true;
	with oWater
		image_blend = c_blue;
}