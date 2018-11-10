/// @description OnTick events for the Necromancer objext

switch (state) {
	// Normal state for the sprite, constantly moving
	case "NORMAL": {
		sprite_index = sNecromancer;
		var dir = point_direction(x, y, oPlayer.x, oPlayer.y);
		vx = lengthdir_x(enemy_speed, dir);
		vy = lengthdir_y(enemy_speed, dir);
		x += vx;
		y += vy;
		break;
	}
	// Sprite hurt animation
	case "HURT": {
		vx = 0;
		vy = 0;
		sprite_index = sHurtNecro;
		if(!(anim_timer > 0)) {
			state = "NORMAL";
			anim_timer = 5;
			break;
		}
		anim_timer -= 1;
		break;
	}
	// Stop object from moving, shrinks for a set amount of time, then destroys the object
	case "DEATH": {
		vx = 0;
		vy = 0;
		sprite_index = sDyingNecro
		if(!(death_anim_timer > 0)) {
			instance_destroy();
			break;
		}
		image_xscale -= 0.025;
		image_yscale -= 0.025;
		death_anim_timer -= 1;
		break;
	}
}

// If this objects hp drops below zero then it will be put into the "DEATH" state
if(hp <= 0) {
	state = "DEATH"
}

check_collisions();