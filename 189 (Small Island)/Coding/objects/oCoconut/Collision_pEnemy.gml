/// @description Insert description here
with (other)
{
	audio_play_sound(snHit,5,false);
	hp--;
	flash = 3;
	hitFrom = other.direction;
	state = "chase";
}
instance_destroy();