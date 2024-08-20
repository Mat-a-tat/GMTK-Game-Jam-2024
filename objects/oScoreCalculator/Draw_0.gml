draw_self();

var _x = x + (sprite_width / 2);
var _y = y + (sprite_height / 2);

draw_set_font(Font2);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_color(_x,_y,string(final_score_percent) + "/100% of Sword Schematic Forged",c_blue,c_blue,c_blue,c_blue,1);
draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);