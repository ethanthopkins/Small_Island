if (!gameOver)
{
	if  (killCount > -1) && (killCount < 5)
	{
		instance_create_layer(choose(50,room_width-50,),irandom_range(250,320),"Enemy",oShark);
		alarm_set(0,room_speed*random_range(.5,4));
		with oWater
		image_blend = c_blue;
	}
	
	if (killCount > 4) && (killCount < 10)
	{
		instance_create_layer(choose(50,room_width-50,),irandom_range(250,320),"Enemy",oShark);
		alarm_set(0,room_speed*random_range(.5,3));
		with oWater
		image_blend = c_navy;
	}
	
	if (killCount > 9)
	{
		instance_create_layer(choose(50,room_width-50,),irandom_range(250,320),"Enemy",oShark);
		alarm_set(0,room_speed*random_range(.5,2));
		with oWater
		image_blend = c_purple;
	}
	
	if (killCount > 19)
	{
		instance_create_layer(choose(50,room_width-50,),irandom_range(250,320),"Enemy",oShark);
		alarm_set(0,room_speed*random_range(.5,1));
		with oWater
		image_blend = c_fuchsia;
	}
	
}