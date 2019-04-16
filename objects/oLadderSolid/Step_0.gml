/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(ord("W")) || keyboard_check(ord("S")))
{
	if (place_meeting(x, y, oPlayer)) instance_deactivate_object(oLadderSolid);
}
//if (!place_meeting(x, y, oPlayer)) instance_activate_object(oLadderSolid);
if (place_meeting(x, y, oPlayer)) instance_deactivate_object(oLadderSolid);