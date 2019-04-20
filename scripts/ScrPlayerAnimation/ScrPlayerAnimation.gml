/// @param firstSprite
/// @param runSprite
/// @param jumpSprite

// Animation
var sprite_speed = 1;

if (!place_meeting(x, y + 1, oSolid) && ladder)
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
if (place_meeting(x, y + 1, oSolid) && ladder)
{
	image_speed  = sprite_speed;
	if (hspd == 0)
	{
		sprite_index = argument0;
		oGun.image_index = 0;
	}
	else
	{
		sprite_index = argument0;
		oGun.sprite_index = sGun;
	}
}

if (!place_meeting(x, y + 1, oSolid) && !ladder)
{
	sprite_index = argument2;
	oGun.image_index = 0;
	image_speed  = 0;
	//if (sign(vspd) > 0) image_index = 1; else image_index = 0;
}
if (place_meeting(x, y + 1, oSolid) && !ladder)
{
	image_speed  = sprite_speed;
	if (hspd == 0 && !ladder)
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

if (hspd != 0) image_xscale = sign(hspd);