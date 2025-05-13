x = oPlayer.x;
y = oPlayer.y + 5;

if (!oGameManager.gameOver)
{
	image_angle = point_direction(x,y,mouse_x,mouse_y);

	if (image_angle > 90) && (image_angle < 270)
	{
		image_yscale = -1;
	}
		else
	{
		image_yscale = 1;		
	}
	firingdelay = firingdelay - 1;
	if (mouse_check_button_pressed(mb_left)) && (firingdelay < 0)
	{
		ScreenShake(1,5);
		firingdelay = 10;
		audio_play_sound(snShoot,5,false);
		with (instance_create_layer(oGun.x,oGun.y-5,"bullets",oCoconut))
			{
				speed = 10;
				direction = other.image_angle
				image_angle = direction;
			}
	}
}