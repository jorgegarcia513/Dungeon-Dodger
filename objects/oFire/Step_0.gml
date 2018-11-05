if(!place_meeting(x, y, oPlayArea)) {
	speed = 0;
	sprite_index = sFireExplosion;
	if(explosion_timer == 0) {
		instance_destroy();
	}
	explosion_timer -= 1;
}