x = room_width / 2;
y = room_height / 2;

max_score = 100000; //Made up number, determine later.

score_raw = global.score;

score_raw_fraction = max_score / score_raw;

final_score_percent = round(score_raw_fraction * 0.01);

