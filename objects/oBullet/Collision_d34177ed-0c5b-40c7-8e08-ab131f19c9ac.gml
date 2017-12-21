/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
with (other) //depending on when and how it's used: it will apply to the enemy
{
	hp--;
	flash = 3;
	sprite_index = sFlash;
	audio_play_sound(sndBullet, 0, 0);
	instance_create_layer(random_range(100, 1900) , oPlayer.y, "Enemy", oZombie);
	instance_create_layer(random_range(100, 1900), oPlayer.y,"Enemy", oEnemy);
	instance_create_layer(random_range(100, 1900), oPlayer.y,"Enemy", oEnemy);

	oZombie.hsp += 1;
}


instance_destroy();
