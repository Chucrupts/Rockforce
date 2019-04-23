/// @param firstSprite
/// @param runSprite
/// @param jumpSprite

// Animation
var sprite_speed = 1;

if (!on_ground_state && ladder)
{
	sprite_index = argument1;
	if(key_down || key_up || hspd !=0)
	{
		image_speed  = sprite_speed;
		oGun.sprite_index = sGun;
	}
	else
	{
		image_speed  = 0; 
		image_index = 3;
		oGun.image_index = 0;
	}
}
if (on_ground_state && ladder)
{
	image_speed  = sprite_speed;
	if (hspd == 0)
	{
		sprite_index = argument0;
		oGun.image_index = 0;
	}
	else
	{
		sprite_index = argument1;
		oGun.sprite_index = sGun;
	}
}
// Air
if (!on_ground_state && !ladder && !wall_jump)
{
	sprite_index = argument2;
	oGun.image_index = 0;
	image_speed  = 0;
	//if (sign(vspd) > 0) image_index = 1; else image_index = 0;
}
// run
if (on_ground_state && !ladder)
{
	image_speed  = sprite_speed;
	if (hspd == 0)
	{
		sprite_index = argument0;
		oGun.image_index = 0;
	}
	else
	{
		sprite_index = argument1;
		oGun.sprite_index = sGun;
	}
}
if(wall_jump)
{
	 sprite_index = sPlayerWallJump;
	 oGun.sprite_index = sGunWallJump;
	 image_speed = 1;
	 if(image_index > 2) image_speed = 0;
}
else
{
	oGun.sprite_index = sGun;
}

if (hspd != 0) image_xscale = sign(hspd);



