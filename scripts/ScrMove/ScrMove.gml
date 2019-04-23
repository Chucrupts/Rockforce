/// @description Move the players

// Player Input
//key_left  = keyboard_check(ord("A"));
//key_right = keyboard_check(ord("D"));
//key_jump = keyboard_check(vk_space);
key_down = false;
key_up = false;
key_jump = jump;

// Calcula Movimento
var move = round(oJoy.normalx * 1.5); 
var moveV = round(oJoy.normaly); 

if (sign(moveV) < 0) key_up = true; else key_down = true;
//if (sign(moveV) > 0) key_down = true;


// gravidade
vspd = vspd + grv;

// movimento
hspd = move * walkspd;

// pulo
if place_meeting(x, y + 1, oSolid) && ((jump))
{
	//altura do pulo
	vspd = jump_height;
	
}

// wall jump
if (place_meeting(x - 1, y, oSolid) || place_meeting(x + 1, y, oSolid) && !place_meeting(x, y, oLadder) && !place_meeting(x, y + 1, oSolid))
{
	if(key_jump) vspd = jump_height / 1.5;
	if( vspd > 0) grv = 0.03; else grv = 0.3;
	if(key_jump) wall_jump = false; else wall_jump = true;
}
else
{
	grv = 0.3;
	wall_jump = false;
}

// Escada
// ojeto solido da escada
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