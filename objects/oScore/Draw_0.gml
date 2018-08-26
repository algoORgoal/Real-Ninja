/// @description Insert description here
// You can write your code in this editor
//var cx = camera_get_view_x(view_camera[0]);
//var cy = camera_get_view_y(view_camera[0]);
//var cw = camera_get_view_width(view_camera[0]);


draw_set_font(fntScore);
draw_set_color(c_red);


with(other) { 
	draw_text(oPlayer.x, oPlayer.y - 50, "Score: " + string(thescore));
	draw_text(oPlayer.x, oPlayer.y - 100, "Death: " + string(oGun.dead));
	if(oGun.dead > 5) {
		draw_text(oPlayer.x, oPlayer.y - 200, "GAME OVER, PRESS R TO RESTART");
	}
}
