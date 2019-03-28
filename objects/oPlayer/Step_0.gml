
// Basic Scripts
ScrMove();
ScrCollision();

// Animation
if (!place_meeting(x, y + 1, oWall))
{
	sprite_index = sPlayerJump;
	image_speed  = 0;
	if (sign(vspd) > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed  = 1;
	if (hspd == 0)
	{
		sprite_index = sPlayer;
	}
	else
	{
		sprite_index = sPlayerRun
	}
}

if (hspd != 0) image_xscale = sign(hspd);
if (hspd != 0) oGun.image_xscale = sign(hspd);

