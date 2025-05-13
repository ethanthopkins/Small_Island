if (hp <= 0)
{
	instance_destroy();	
	oGameManager.killCount ++;
	audio_play_sound(snSharkDead,7,false);
}