/// @description Insert description here
// You can write your code in this editor
var dir = point_direction(x, y, oPlayer.x, oPlayer.y);
vx = lengthdir_x(enemy_speed, dir);
vy = lengthdir_y(enemy_speed, dir);
x += vx;
y += vy;

sprite_index = sNecromancer;

if(hp <= 0) {
	instance_destroy();
}

check_collisions();