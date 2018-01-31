with(other){//instance id of enemy we hit
	hp--;
	flash = 3;
	hitfrom = other.direction; //refer to the bullet colliding with enemy
}

instance_destroy();