if(keyboard_check_pressed(vk_space)) {
	if(oPlayer.gameover == true) {
		room_restart();
		oPlayer.gameover = false;
    }
}