// If a fire object collides with an enemy then their hp will decrease
// the fire object will be destroyed
// and the necromancer gets put into the "HURT" state
hp -= oFire.dmg;
instance_destroy(other);
anim_timer = 10;
state = "HURT";
