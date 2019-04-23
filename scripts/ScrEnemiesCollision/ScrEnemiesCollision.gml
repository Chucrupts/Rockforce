 /// @description Enemies collision

// gravidade
vspd = vspd + grv;

// H Collision
if (place_meeting(x + hspd, y, oSolid))
{
	while (!place_meeting(x + sign(hspd), y, oSolid))
	{
		x = x + sign(hspd);
	}
	hspd = 0;
}

x = x + hspd;

// V Collision
if (place_meeting(x, y + vspd, oSolid))
{
	while (!place_meeting(x, y + sign(vspd), oSolid))
	{
		y = y + sign(vspd);
	}
	vspd = 0;
}

y = y + vspd;
//if (place_meeting(x, y + vspd, oLadder) || place_meeting(x, y + vspd, oLadderSolid)) vspd = 0;