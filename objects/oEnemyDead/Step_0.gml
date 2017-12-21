/// @description Insert description here
// You can write your code in this editor
if (done == 0){


	vsp = vsp + grv; //move by gravity so that it goes down on the wall, the oPlayer's gonna go up if it's vsp-grv;
	//How poisition workds in this studio: the more y coordinate is bigger, the lower the object itself is. 
	
	
	//Horizontal Collision
	if (place_meeting(x+hsp,y,oWall)) //if there's about to be a collision between oWall and oPlayer
	{
		//There's a libble bit of pixels between oPlyaer and oWall.
		//We wanna remove the spaces by place them in the closest position.
		while (!place_meeting(x+sign(hsp),y,oWall)) { //sign(): return 1 or 0 depending on if hsp is positive or negative
			x = x + sign(hsp); //increase/decrease x to 1
		}
	
		//if there's no space between them
		hsp= 0;
	}
	x = x + hsp;

	//Vertical Collision
	if (place_meeting(x,y+vsp,oWall)) //if there's about to be a collision between oWall and oPlayer
	{
		if (vsp > 0) {
			done = 1;
			image_index = 1;
			}
		//There's a little bit of pixels between oPlyaer and oWall.
		//We wanna remove the spaces by place them in the closest position.
		while (!place_meeting(x,y+sign(vsp),oWall)) { //sign(): return 1 or 0 depending on if hsp is positive or negative
			y = y + sign(vsp); //increase/decrease x to 1
		}
	
		//if there's no space between them
		vsp= 0;
	}
	y = y + vsp;
	
	
}