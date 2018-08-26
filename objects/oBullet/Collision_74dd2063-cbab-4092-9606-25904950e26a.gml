/// @description Insert description here
// You can write your code in this editor
with (other) //depending on when and how it's used: it will apply to the enemy
{
	hp--;
	flash = 3;
	sprite_index = 1;
	audio_play_sound(sndBullet, 0, 0);
	oGun.dead++;
}


instance_destroy();