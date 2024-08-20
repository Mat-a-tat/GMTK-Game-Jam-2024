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
accel = .1;
accel_floor = .1;
accel_cap = .3;
accel_increase = .01;
last_v_direction = 0;

grav_accel = .35;
grav_decay = .2;
grav_max = 10;
lava_pushback = .1;

//Enviorment 

blade_height = 270;
min_y_height = 500;
bubble_popped = false;

// Has Collided with first Blade?
is_blade_collide = false;

