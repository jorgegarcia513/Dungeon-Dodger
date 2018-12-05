image_yscale = 1;
image_xscale = 1;
speed = 5;
explosion_timer = 10;
dmg = 10;

direction = point_direction(oPlayer.x, oPlayer.y, mouse_x, mouse_y);
image_angle = point_direction(oPlayer.x, oPlayer.y, mouse_x, mouse_y) - 90;