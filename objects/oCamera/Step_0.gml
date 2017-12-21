/// @description Update Camera
// You can write your code in this editor

//update object position
x += (xTo - x)/25; //why dividing it by 25? because we want the camera moving naturally(smoothy)
y += (yTo - y)/25; 


//update destination
//if (instance_exists(oPlayer)){ // this statement turns out to be false
	xTo = follow.x;
	yTo = follow.y;
//}


//x = clamp(x,view_w_half,room_width - view_w_half);
//y = clamp(y,view_h_half,room_height - view_h_half);

//update camera view
var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
camera_set_view_mat(cam, vm); //player player is left in the center rather than top-left
