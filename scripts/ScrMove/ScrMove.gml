/// @description Move the players

// Player Input
//key_left  = keyboard_check(ord("A"));
//key_right = keyboard_check(ord("D"));

// Calcula Movimento
var move = round(oJoy.normalx * 1.5);
// movimento
hspd = move * walkspd;
// gravidade
vspd = vspd + grv;
// pulo
if place_meeting(x, y + 1, oWall) && (jump)
{
	//altura do pulo
	vspd = -6;
	
}
	