/// @description Insert description here
// You can write your code in this editor
if (hp = 0)
{	
	next = instance_nearest(x, y - 10 , object_index);
	ScrParticleDirt(50);
	instance_destroy();
		with(next) 
		{
			instance_destroy();
			ScrParticleDirt(50);
		}

}

//if (instance_exists(oEnemyDead))
//{
//	if(place_meeting(x, y -1, oEnemyDead))
//	{
//		sprite_index = sprite;
//	}
//}