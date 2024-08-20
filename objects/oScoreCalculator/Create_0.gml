
max_score = 9000; //Made up number, determine later.

score_raw = global.score;

score_raw_fraction = score_raw / max_score;

final_score_percent = round(score_raw_fraction * 100);

//TODO if the player gets s higher score than the max scopre
// they get a special msg that says
//Congrats you beat the devs at their own game!
/*
if (final_score_percent > 100)
{
	special_end_msg = true;
}
*/