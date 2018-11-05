
if(oPlayer.gameover == true) {
	draw_set_color(c_black);
	draw_rectangle(0, 0, room_width, room_height, false);
	draw_set_color(c_white);
	draw_text(room_width/2 - 100, room_height/2 - 50, "Game Over");
	draw_text(room_width/2 - 100, room_height/2, "Press 'space' to restart");
}
