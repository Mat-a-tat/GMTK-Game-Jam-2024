//draw_text_color(32,32,"Score:" + string(score), c_lime,c_lime,c_green,c_green,1);
//draw_text_color(32,52,"FPS:" + string(fps_real), c_lime,c_lime,c_green,c_green,1);

draw_sprite(sInGameScore,0,percent_x_box,percent_y_box);
draw_set_font(Font3);
draw_text_color(percent_x,percent_y,string(final_score_percent) + "%", c_black,c_black,c_black,c_black,1);
draw_set_font(-1);
