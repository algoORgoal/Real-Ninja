/// @description Insert description here
// You can write your code in this editor
if (hp <= 0) {
	with(instance_create_layer(x,y,layer,oBirdDead)){
		//direction = other.hitfrom; // apply to where where it hits from bullet, watch part 4
		
		hsp = 3 //lengthdir_x(3, direction);
		vsp = 3 //lengthdir_y(3, direction); //or direction-2:for a little bit of shaking
		if (sign(hsp) != 0) image_xscale = sign(hsp);
	}
	instance_destroy();
	
}