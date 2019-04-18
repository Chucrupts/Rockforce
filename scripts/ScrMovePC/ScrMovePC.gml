/// @description Move the players

// Player Input
key_left  = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_up    = keyboard_check(ord("W"));
key_down  = keyboard_check(ord("S"));
key_jump = keyboard_check(vk_space);

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

// Escada
if (place_meeting(x, y + vspd, oLadder) && ladder = false) instance_activate_object(oLadderSolid);
if (place_meeting(x + hspd, y, oLadderSolid)) ladder = true

if (key_down || key_up)
{
	if (place_meeting(x, y, oLadder) || place_meeting(x, y + 1, oLadderSolid)) ladder = true;
}

if (ladder)
{
	instance_deactivate_object(oLadderSolid);
	vspd = 0;
	
	if (key_up)     vspd = -ladder_spd;
	if (key_down)   vspd = ladder_spd * 1.5;
	if (!place_meeting(x, y, oLadder)) ladder = false;
}



