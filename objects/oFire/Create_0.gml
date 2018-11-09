image_yscale = 1;
image_xscale = 1;
speed = 5;
explosion_timer = 10;
dmg = 10;
if (oPlayer.facing == 0) {
	direction = 90;
	image_angle = direction - 90;
} else if (oPlayer.facing == 1) {
	direction = 270;
	image_angle = direction - 90;
} else if (oPlayer.facing == 2) {
	direction = 180;
	image_angle = direction - 90;
} else if (oPlayer.facing == 3) {
	direction = 0;
	image_angle = direction - 90;
}