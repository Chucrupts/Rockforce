
// Player Input
//key_left  = keyboard_check(ord("A"));
//key_right = keyboard_check(ord("D"));
key_jump = false;

if (oJoy.normaly < -0.7) key_jump = true;

// Calcula Movimento
var move = round(oJoy.normalx);
// movimento
hspd = move * walkspd;
// gravidade
vspd = vspd + grv;
// pulo
if place_meeting(x, y + 1, oWall) && (key_jump)
{
	//altura do pulo
	vspd = -6;
}
	
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

