if (!oGameManager.gameOver)
{
	if (attackTarget)
	{
		flash = room_speed * 2;
		mp_potential_step(turtInst.x,turtInst.y,4,false);	
		attackTarget = false;
	}
	else
	{
		if (distance_to_object(oPlayer) < 50)
		{
				mp_potential_step(oPlayer.x,oPlayer.y,4,false); 
		}
		else
		{
			mp_potential_step(inst.x,inst.y,rspd,false);
		}

		if (place_meeting(x,y,oPlayerCol)) || (place_meeting(x,y,oWalkingCol))
		{
			audio_play_sound(snPlayerHealth,8,false);
			oPlayer.hp --;	
		}
	}
}