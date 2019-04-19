/// @description Move the players

// Player Input
key_left  = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_up    = keyboard_check(ord("W"));
key_down  = keyboard_check(ord("S"));
key_jump  = keyboard_check_pressed(vk_space);

var move = key_right - key_left
// movimento
hspd = move * walkspd;

// gravidade
vspd = vspd + grv;

// pulo
if (place_meeting(x, y + 1, oSolid) && (key_jump))
{
	//altura do pulo
	vspd = jump_height;
	
}
// wall jump
if (key_jump)
{
	if (place_meeting(x - 1, y, oSolid) || place_meeting(x + 1, y, oSolid))
	{
		vspd = jump_height / 1.5;
		if( vspd > 0) grv = 0.01; else grv = 0.3;
	}
}
if (place_meeting(x - 1, y, oSolid) || place_meeting(x + 1, y, oSolid))
{
	if( vspd > 0) grv = 0.01; else grv = 0.3;
}
else
{
	grv = 0.3;
}

// Escada
//if (place_meeting(x, y + vspd, oLadder) && ladder = false)
if (ladder = false) instance_activate_object(oLadderSolid);
if (place_meeting(x, y, oLadder) && ladder = false) instance_deactivate_object(oLadderSolid);
if (place_meeting(x + hspd, y, oLadderSolid)) instance_deactivate_object(oLadderSolid);
if (place_meeting(x, y + 1, oLadderSolid)) key_up = false;



if (key_down || key_up)
{
	if (place_meeting(x, y, oLadder) || place_meeting(x, y + 1, oLadderSolid)) ladder = true;
}

if (ladder)
{
	instance_deactivate_object(oLadderSolid);	
	vspd = 0;
	
	if (key_up)     vspd = -ladder_spd;
	if (key_down)   vspd = ladder_spd * 1.3;
	if (!place_meeting(x, y, oLadder)) ladder = false;
}



