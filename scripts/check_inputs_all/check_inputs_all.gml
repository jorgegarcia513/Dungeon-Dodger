if (Input.up) state = "UP";
if (Input.down) state = "DOWN";
if (Input.left) state = "LEFT";
if (Input.right) state = "RIGHT";
if (!Input.up && !Input.down && !Input.left && !Input.right) state = "IDLE";
if (Input.buttonB && oPlayer.magic > 1) {
	oPlayer.magic -= 5;
	state = "ATTACK_START";
}