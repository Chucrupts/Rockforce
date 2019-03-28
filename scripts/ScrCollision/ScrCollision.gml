/// @description Players collision

// H Collision
if (place_meeting(x + hspd, y, oWall))
{
	while (!place_meeting(x + sign(hspd), y, oWall))
	{
		x = x + sign(hspd);
	}
	hspd = 0;
}
x = x + hspd;

// V Collision
if (place_meeting(x, y + vspd, oWall))
{
	while (!place_meeting(x, y + sign(vspd), oWall))
	{
		y = y + sign(vspd);
	}
	vspd = 0;
}
y = y + vspd;
