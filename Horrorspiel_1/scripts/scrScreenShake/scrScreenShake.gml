///@desc ScreenShake (magnitude, frames)
/// @arg Magnitude sets the strength of the shake (pixels)
// @arg Frames sets the length of the shake (60 = 1 second)

with(objCamera){
	if(argument[0] > shake_remain){
		shake_magnitude = argument[0];
		shake_remain = argument[0];
		shake_length = argument[1];
	}
}
