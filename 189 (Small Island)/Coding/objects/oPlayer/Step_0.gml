if (!oGameManager.gameOver)
{
#region movement
/// @description get player input
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
attack = keyboard_check(vk_enter);

var hmove = right - left; 
var vmove = down - up; 

hMove = hmove * playerSpeed;
vMove = vmove * playerSpeed;

//horizontal collision
if (place_meeting(x+hMove,y,oWalkingCol)) || (place_meeting(x+hMove,y,oPlayerCol)) 
{
	yPlus = 0;
	while (place_meeting(x+hMove,y-yPlus,oWalkingCol) && yPlus <= abs(10)) yPlus += 1;
	if place_meeting(x+hMove,y-yPlus,oWalkingCol) || place_meeting(x+hMove,y-yPlus,oPlayerCol) 
	{
	//while there is not a collision 1 px away
		while (!place_meeting(x+sign(hMove),y,oWalkingCol)) && (!place_meeting(x+sign(hMove),y,oPlayerCol)) 
		{
			x = x + sign(hMove);
		}
			hMove = 0;
	}
	else
	{
		y -= yPlus;	
	}
}
x = x + hMove;

//verticle collision
if (place_meeting(x,y+vMove,oWalkingCol)) || (place_meeting(x,y + vMove,oPlayerCol))
{
	//while there is not a collision 1 px away
	while (!place_meeting(x,y+sign(vMove),oWalkingCol)) && (!place_meeting(x,y+sign(vMove),oPlayerCol))
	{
		y = y + sign(vMove);
	}
	vMove = 0;
}
y = y + vMove;
#endregion
}
