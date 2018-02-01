

with(other){//instance id of enemy we hit
	if(other.hittedBefore == false){
		hp--;
		flash = 3;
		hitfrom = other.direction; //refer to the bullet colliding with enemy
		other.hittedBefore = true;
	}
}
