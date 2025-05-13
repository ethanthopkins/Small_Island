draw_set_font(Font1);
draw_set_halign(fa_center);
draw_text(viewWidth*.5,viewHeight*.9,"Defeat 30 Sharks. Don't Let HP Drop Below 0!");
draw_text(1280*.15,20,"Health: " + string(oPlayer.hp));
draw_text(1280 * .85,20,"Shark Count: " + string(killCount));
if(oPlayer.hp) <= 0
{ 
	gameOver = true;
	draw_set_color(c_black);
	draw_set_alpha(.75);
	draw_rectangle(0,0,viewWidth,viewHeight,false);
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_text(viewWidth*.5,viewHeight*.5,"Game Over");
	draw_text(viewWidth*.5,viewHeight*.6,"Sharks Defeated: " + string(killCount));
}

if(killCount) >= 30
{
	gameOver = true;
	draw_set_color(c_black);
	draw_set_alpha(.75);
	draw_rectangle(0,0,viewWidth,viewHeight,false);
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_text(viewWidth*.5,viewHeight*.5,"You Won!");
	draw_text(viewWidth*.5,viewHeight*.6,"Sharks Defeated: " + string(killCount));
}

switch (killCount)
	{
		case 20: draw_text(viewWidth*.5,viewHeight*.5,"10"); break;
		case 21: draw_text(viewWidth*.5,viewHeight*.5,"9"); break;
		case 22: draw_text(viewWidth*.5,viewHeight*.5,"8"); break;
		case 23: draw_text(viewWidth*.5,viewHeight*.5,"7"); break;
		case 24: draw_text(viewWidth*.5,viewHeight*.5,"6"); break;
		case 25: draw_text(viewWidth*.5,viewHeight*.5,"5"); break;
		case 26: draw_text(viewWidth*.5,viewHeight*.5,"4"); break;
		case 27: draw_text(viewWidth*.5,viewHeight*.5,"3"); break;
		case 28: draw_text(viewWidth*.5,viewHeight*.5,"2"); break;
		case 29: draw_text(viewWidth*.5,viewHeight*.5,"1"); break;
	}