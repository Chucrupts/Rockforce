/// @param firstSprite
/// @param runSprite
/// @param jumpSprite

// Animation
if (!place_meeting(x, y + 1, oSolid))
{
	sprite_index = argument2;
	image_speed  = 0;
	if (sign(vspd) > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed  = 1;
	if (hspd == 0)
	{
		sprite_index = argument0;
	}
	else
	{
		sprite_index = argument1;
	}
}

if (hspd != 0) image_xscale = sign(hspd);