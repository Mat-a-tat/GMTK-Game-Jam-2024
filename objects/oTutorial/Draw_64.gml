
if room == 1
{
	draw_sprite_ext(sTutorial,anim,big_tut_x,big_tut_y,2,2,0,c_white,1);
}

if room > 1
{
	draw_sprite(sTutorial,anim,x,y);
}

draw_sprite(sTutorial2,anim,text_x,text_y);