/// @description Set up Camera
// You can write your code in this editor
//cam = view_camera[0]; //create an initial camera on the top and right of the map

cam = camera_create();

var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
var pm = matrix_build_projection_ortho(1024, 768, 1, 100000);

follow = oPlayer; //contain the point of the object


camera_set_view_mat(cam, vm);
camera_set_proj_mat(cam, pm);

view_camera[0] = cam;
//view_w_half = camera_get_view_width(cam) * 0.5//get it centered on the player
//view_h_half = camera_get_view_height(cam) * 0.5//get it centered on the player
xTo = x;//original destination for the camera
yTo = y;//original destination for the camera,wherever the camera starts

