//Error: the game gets slow when the player's moving
//Get Player Input
key_left = keyboard_check(ord("A")); //return 1 or 0
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check(ord("W"));

//Calculate Movement
var move = key_right - key_left; //depending on 1, 0, it goes left or right
/*if(key_left){
	x += hsp;
	
}else if(key_right){
	x -= hsp;
}*/



hsp = walksp * move; //4 pixels to the right/left

vsp = vsp + grv; //move with gravity so that it goes down on the wall, the oPlayer's gonna go up if it's vsp-grv;
//How poisition workds in this studio: the more y coordinate is bigger, the lower the object itself is. 

if (place_meeting(x,y+1,oWall)) && (key_jump){ //if oPlayer's on the floor and player presses the jump button
	vsp = -4;
}


//Horizontal Collision
if (place_meeting(x+hsp,y,oWall)) //if there's about to be a collision between oWall and oPlayer
{
	//There's a libble bit of pixels between oPlyaer and oWall.
	//We wanna remove the spaces by place them in the closest position.
	while (!(place_meeting(x+sign(hsp),y,oWall))) { //sign(): return 1 or 0 depending on if hsp is positive or negative
		x = x + sign(hsp); //increase/decrease x to 1
	}
	
	//if there's no space between them
	hsp= 0;
}
x = x + hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,oWall)) //if there's about to be a collision between oWall and oPlayer
{
	//There's a libble bit of pixels between oPlyaer and oWall.
	//We wanna remove the spaces by place them in the closest position.
	while (!place_meeting(x,y+sign(vsp),oWall)) { //sign(): return 1 or 0 depending on if hsp is positive or negative
		y = y + sign(vsp); //increase/decrease x to 1
	}
	
	//if there's no space between them
	vsp= 0;
	
}


y = y + vsp;



//Animation
if (!place_meeting(x, y+1,oWall)) {//why typing the same code: just trying to keep things straightforward
	sprite_index = sPlayerA;
	image_speed = 0; //multiply speed of sprites * 0
	if (sign(vsp) > 0) sprite_index = 2; else sprite_index = 3;
}
else
{
	image_speed = 1;
	if(hsp == 0){
		sprite_index = sPlayer;
	}else{
		sprite_index = sPlayerR;
	}		
}

if (hsp != 0) image_xscale = sign(hsp);
