// Controls staying on the platform. If the player goes off the platform,
// enter a "FALLING" state;
if (!place_meeting(oPlayer.x + vx, oPlayer.y, oFloor)) {
	state = "FALLING";
}