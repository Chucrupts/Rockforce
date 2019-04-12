/// @description Destroy bullet
// You can write your code in this editor

timer --;

if (timer <= 0) 
{
	instance_destroy();
	ScrBulletEnd();
}