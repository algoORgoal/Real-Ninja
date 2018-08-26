/// @description Insert description here
// You can write your code in this editor


	vsp = vsp; //move by gravity so that it goes down on the wall, the oPlayer's gonna go up if it's vsp-grv;
	//How poisition workds in this studio: the more y coordinate is bigger, the lower the object itself is. 
if (x<= 55 or x >= 2040) or (y <= 318 or y >= 720)  {
	x = random_range(56,2039);
	y = random_range(319,719);
}
dirDelay--;
if (dirDelay<0){
vspd = sign(random_range(-1,1));
hspd = sign(random_range(-1,1));
dirDelay = 10;
}

x = x + vspd * 7;
y = y + hspd * 7;
	//Horizontal Collision
//	if (place_meeting(x-10,y,oWall)) //if there's about to be a collision between oWall and oPlayer
//	{
		//There's a libble bit of pixels between oPlyaer and oWall.
		//We wanna remove the spaces by place them in the closest position.
		/*while (!place_meeting(x+sign(hsp),y,oWall)) { //sign(): return 1 or 0 depending on if hsp is positive or negative
			x = x + sign(hsp); //increase/decrease x to 1
		}*/
		//hsp = 0;
		//if there's no space between them = if they meet each other
		//move the opposite
	//	hsp *= -1;
	
	//}
/*	if (place_meeting(x+hsp,y,oWall2)) //if there's about to be a collision between oWall and oPlayer
	{
		//There's a libble bit of pixels between oPlyaer and oWall.
		//We wanna remove the spaces by place them in the closest position.
		/*while (!place_meeting(x+sign(hsp),y,oWall2)) { //sign(): return 1 or 0 depending on if hsp is positive or negative
			x = x + sign(hsp); //increase/decrease x to 1
		}*/
		//hsp = 0;
		//if there's no space between them = if they meet each other
		//move the opposite
//		hsp *= -1;
	
//	}
	

	//Vertical Collision
	/*if (place_meeting(x,y+vsp,oWall)) //if there's about to be a collision between oWall and oPlayer
	{
		//There's a libble bit of pixels between oPlyaer and oWall.
		//We wanna remove the spaces by place them in the closest position.
		/*while (!place_meeting(x,y+sign(vsp),oWall)) { //sign(): return 1 or 0 depending on if hsp is positive or negative
			y = y + sign(vsp); //increase/decrease x to 1
		}*/
	
		//if there's no space between them
	//	vsp = 0;
//	}
//	if (place_meeting(x,y+vsp,oWall2)) //if there's about to be a collision between oWall and oPlayer
	//{
		//There's a libble bit of pixels between oPlyaer and oWall.
		//We wanna remove the spaces by place them in the closest position.
		/*while (!place_meeting(x,y+sign(vsp),oWall2)) { //sign(): return 1 or 0 depending on if hsp is positive or negative
			y = y + sign(vsp); //increase/decrease x to 1
		}*/
	
		//if there's no space between them
	//	vsp = 0;
//	}*/
	

	//Animation
	if (!place_meeting(x, y+1,oWall)) {//why typing the same code: just trying to keep things straightforward

		image_speed = 0; //multiply speed of sprites * 0
		//if (sign(vsp) > 0) sprite_index = 0; else sprite_index = 1;
	}
	else
	{
		//image_speed = 1;
	}


	if (hsp != 0) image_xscale = sign(hsp);

imageDelay--;
if (imageDelay < 0){
	image_index = 0;
}
if (imageDelay < -5){
	imageDelay = 5;
	image_index = 1;
}
