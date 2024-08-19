x = room_width / 2;
y = room_height / 2;

max_score = 15000; //Made up number, determine later.

score_raw = global.score;

score_raw_fraction = max_score / score_raw;

final_score_percent = score_raw_fraction * 0.01;

//TODO if the player gets s higher score than the max scopre
// they get a special msg that says
//Congrats you beat the devs at their own game!
if (final_score_percent > 100)
{
	special_end_msg = true;
}
