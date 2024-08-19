// Setting via a global makes it transferable between rooms. 

y = global.player_y
grav = global.player_grav
spd = global.player_spd

// Vertical Speed
vsp = 0;
v_direction = 0;
moveUp = false;
moveDown = false;

// Start Surfing?
is_surfing = true;

surf_spd = 4;

//Acceleration
max_spd = 5;
accel = .5;
decel = 0.2;
grav_high_intensity = .35
grav_low_intensity = .2
lava_pushback = .1

// Min-Max Vertical Movement Height
// IF YOU CHANGE BLADE HEIGHT, CHANGE THESE VARIABLES
blade_height = 270;
//max_y_height = blade_height - 60;
min_y_height = 500;

// Has Collided with first Blade?
is_blade_collide = false;
