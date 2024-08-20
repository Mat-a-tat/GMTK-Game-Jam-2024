
draw_set_font(Font2);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text_transformed_color(_vx,_vy,"Press [Space] To Start",1,1,0,c_blue,c_blue,c_blue,c_blue,1);
draw_set_font(-1);

draw_set_font(Font1);
draw_text_transformed_color(_vx,_vy-100,"Serf's Up",1,1,0,c_blue,c_blue,c_blue,c_blue,1);

draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);