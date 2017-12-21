x = oPlayer.x;
y = oPlayer.y+10;



if (oPlayer.controller == 0){
	image_angle = point_direction(x,y,mouse_x, mouse_y);
}
else{
	var controllerh = gamepad_axis_value(0, gp_axisrh);
	var controllerv = gamepad_axis_value(0, gp_axisrv);
	if ((abs(controllerh) > 0.2) || (abs(controllerv) > 0.2))//abs:always return positive
	{
		controllerangle = point_direction(0,0, controllerh, controllerv)
	}
	image_angle = controller_angle; //
}

firingdelay -= 1;
recoil = max(0, recoil - 1);

if (firingdelay = 0){
	with(oPlayer){
		instance_create_layer(x - 20, y + 20, "Player",oTriggered);
	}
}else if(firingdelay > 0){
	with(oTriggered){
		instance_destroy();
	}
}

if(oTriggered){
	with(oTriggered){
		x = oPlayer.x - 20
		y = oPlayer.y - 50
	}
}

if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_shoulderlb)) && (firingdelay < 0){
	recoil = 4;
	firingdelay = 100;
	//with (oPlayer) //it would apply to oPlayer
	with (instance_create_layer(x,y, "Bullets", oBullet)) //the way get an id
	{
		speed = 25;
		direction = other.image_angle + random_range(-3,3) //other offers to oGun Object, Same direction as oGun
		image_angle = direction;	
	}
}


x = x - lengthdir_x(recoil,image_angle);
y = y - lengthdir_y(recoil,image_angle);

if ((image_angle > 90) && (image_angle <270)) {
	image_yscale = -1;
}
else{
	image_yscale = 1;
}
