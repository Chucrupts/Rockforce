/// @description Move the players

// Player Input
key_left  = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check(vk_space);

// Calcula Movimento
//var move = round(oJoy.normalx * 1.5); ---------------- jogo

var move = key_right - key_left
// movimento
hspd = move * walkspd;

// pulo
if place_meeting(x, y + 1, oWall) && ((jump) || (key_jump))
{
	//altura do pulo
	vspd = -6;
	
}
	