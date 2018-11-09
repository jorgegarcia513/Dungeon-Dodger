// Controls staying on the platform. If the player goes off the platform,
// enter a "FALLING" state;
if (!place_meeting(x + vx, y, oFloor)) {
	state = "FALLING";
}