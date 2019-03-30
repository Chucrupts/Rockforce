
// Basic Scripts
ScrCollision();
// Animation
if (!place_meeting(x, y + 1, oWall))
{
	image_speed  = 0;
}
else
{
	image_speed  = 1;
	if (hspd == 0)
	{
		sprite_index = sEnemy;
	}
	else
	{
		sprite_index = sEnemyRun
	}
}

if (hspd != 0) image_xscale = sign(hspd);

