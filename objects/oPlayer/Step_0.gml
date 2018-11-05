/// @description Insert description here
anim_speed = 2;
attack_cooldown -= 1;
switch (state) {
	// 
	case "ATTACK_START": {
		image_speed = 0;
		vx = 0;
		vy = 0;
		timer = 15;
		sprite_index = sPlayerAttackSide;
		attack_cooldown = 35;
		state = "FIRE_ATTACK";
		break;
	}
	// Using it a timer, this goes through the animation of a fire attack. Once the animation
	// is over, it creates a fire object.
	case "FIRE_ATTACK": {
		if (timer == 8) {
			instance_create_layer(x, y, "Objects", oFire);
		}
		if (timer > 0) {
			timer -= 1;
		} else {
			state = "IDLE";
		}
		break;
	}
	case "IDLE": {
		image_speed = 0;
		sprite_index = sprite_walk;
		vx = 0;
		vy = 0;
		
		check_inputs_all();
		
		break;
	}
	// Moverment Cases: Set sprite to proper one corresponding with direction they are facing.
	// Adjusts speed to represent which direction they are moving.
	case "UP": {
		facing = 0;
		image_speed = anim_speed;
		sprite_walk = sPlayerUp;
		sprite_attack = sPlayerAttackSide;
		sprite_index = sprite_walk;
		image_xscale = 1;
		
		vx = 0;
		vy = -1 * player_speed;
		
		check_inputs_all();
		
		break;
	}
	case "DOWN": {
		facing = 1;
		image_speed = anim_speed;
		sprite_walk = sPlayerDown;
		sprite_attack = sPlayerAttackSide;
		sprite_index = sprite_walk;
		image_xscale = 1;
		
		vx = 0;
		vy = player_speed;
		
		check_inputs_all();
		
		break;
	}
	case "LEFT": {
		facing = 2;
		image_speed = anim_speed;
		sprite_walk = sPlayerSide;
		sprite_attack = sPlayerAttackSide;
		sprite_index = sprite_walk;
		image_xscale = -1;
		
		vy = 0;
		vx = -1 * player_speed;
		
		check_inputs_all();
		
		break;
	}
	case "RIGHT": {
		facing = 3;
		image_speed = anim_speed;
		sprite_walk = sPlayerSide;
		sprite_attack = sPlayerAttackSide;
		sprite_index = sprite_walk;
		image_xscale = 1;
		
		vy = 0;
		vx = player_speed;
		
		check_inputs_all();
		
		break;
	}
	// Changes sprite to the falling sprite, and sets state to "GAME OVER"
	case "FALLING": {
		sprite_index = sPlayerFalling;
		vx = 0;
		vy = 0;
		if(image_yscale <= 0) {
			gameover = true;
			break;
		} else {
			image_xscale -= 0.01;
			image_yscale -= 0.01;
			image_angle -= 5;
		}
		break;
	}
	case "GAME OVER": {
		gameover = true;
		break;
	}
}

if(attack_cooldown <= 0 && magic < max_magic) {
	magic += 0.1;
}

check_collisions();
// Controls player movement.
x += vx;
y += vy;