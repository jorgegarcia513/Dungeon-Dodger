/// @description Soft Collide
// If two enemies collide they will push away from one another
var dir = point_direction(other.x, other.y, x, y);
vx = lengthdir_x(1, dir);
vy = lengthdir_y(1, dir);

x += vx;
y += vy;

