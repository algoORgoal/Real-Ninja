/// @description Insert description here
// You can write your code in this editor
var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
var cw = camera_get_view_width(view_camera[0]);


draw_set_font(fntScore);
draw_set_color(c_red);

//draw_text(cx + cw/2, cy + 50, "alrhg;rhgrhgahgr;harghraghraohorahorawghorahgorhgpahpah");//
with(oPlayer) draw_text(x, y - 50, "Score: " + string(other.thescore));
with(oPlayer) draw_text(x, y - 100, "Death: " + string(oGun.dead));

with(oPlayer)
{
	if(oGun.dead > 5) {
		draw_text(x, y - 200, "GAME OVER");
	}
}
