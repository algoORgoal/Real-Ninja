

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
		//hsp = 0;
		//if there's no space between them = if they meet each other
		//move the opposite
		hsp *= -1;
	
	}
	x = x + random_range(0,hsp * 2);

	//Vertical Collision
	if (place_meeting(x,y+vsp,oWall)) //if there's about to be a collision between oWall and oPlayer
	{
		//There's a libble bit of pixels between oPlyaer and oWall.
		//We wanna remove the spaces by place them in the closest position.
		while (!place_meeting(x,y+sign(vsp),oWall)) { //sign(): return 1 or 0 depending on if hsp is positive or negative
			y = y + sign(vsp); //increase/decrease x to 1
		}
	
		//if there's no space between them
		vsp = 0;
	}
	y = y + vsp;

	//Animation
	if (!place_meeting(x, y+1,oWall)) {//why typing the same code: just trying to keep things straightforward
		sprite_index = sEnemyA;
		image_speed = 0; //multiply speed of sprites * 0
		if (sign(vsp) > 0) sprite_index = 2; else sprite_index = 3;
	}
	else
	{
		image_speed = 1;
		if(hsp == 0){
			sprite_index = sEnemy;
		}else{
			sprite_index = sEnemyR;
		}		
	}

	if (hsp != 0) image_xscale = sign(hsp);


