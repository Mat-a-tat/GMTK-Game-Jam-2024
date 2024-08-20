draw_sprite(sInGameScore,0,percent_x_box,percent_y_box);
draw_set_font(Font3);
draw_text_color(percent_x,percent_y,string(final_score_percent) + "%", c_black,c_black,c_black,c_black,1);
draw_set_font(-1);
