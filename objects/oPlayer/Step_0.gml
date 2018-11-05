/// @description Insert description here
anim_speed = 2;
switch (state) {
	case "ATTACK_SWORD_START": {
		image_speed = 0;
		vx = 0;
		vy = 0;
		timer = 15;
		sprite_index = sPlayerAttackSide;
		state = "SWORD_ATTACK";
		break;
	}
	case "SWORD_ATTACK": {
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
	case "FALLING": {
		sprite_index = sPlayerFalling;
		vx = 0;
		vy = 0;
		state = "GAME_OVER";
	}
	case "GAME OVER": {
		gameover = true;
		break;
	}
}

if (!place_meeting(oPlayer.x + vx, oPlayer.y, oWall)) {
	state = "FALLING";
}

x += vx;
y += vy;