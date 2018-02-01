/// @description Move to next room

with(objPlayer){
	if(hascontrol){
		hascontrol = false;
		scrSlideTransition(TRANS_MODE.GOTO,other.target);
	
	}
}
