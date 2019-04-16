 
// Basic Scripts
ScrEnemiesCollision();
//ScrAnimation(sEnemy,sEnemyRun,sEnemy);

// Attach enemy vision
enemy_vision.x = x;
enemy_vision.y = y;
enemy_gun.x = x;
enemy_gun.y = y;
if (hspd != 0) enemy_gun.image_xscale = sign(hspd);

if (state == states.idle)
{
	#region Idle 
	// Behaviour
	counter +=1;
	hspd = 0;
	
	// Transition Triggers
	if (counter >= room_speed * 2)
	{
		var change = choose(0,1);
		switch(change)
		{
			case 0 : state = states.wander;
			case 1 : counter = 0; break;
		}  
	}
	with (enemy_vision)
	{
		if (place_meeting(x, y, oPlayer))
		{
			other.state = states.attack;
		}
	}
	#endregion
}
else if (state == states.wander)
{
	#region Wander
	// Behaviour
	counter +=1;
	
	if (x > begin_position + 20 || x < begin_position - 20) hspd = hspd * -1;
	
	// Transition Triggers
	if (counter >= room_speed * 3)
	{
		var change = choose(0,1);
		switch(change)
		{
			case 0 : state = states.idle;
			case 1 :
				hspd = choose(1, -1);
				counter = 0;
		}
	}
	with (enemy_vision)
	{
		if (place_meeting(x, y, oPlayer))
		{
			other.state = states.attack;
		}
	}
	
	#endregion
}
else if (state == states.attack)
{
	#region Attack
	// Behaviour
	hspd = 0;
	image_xscale = sign( x - oPlayer.x ) * -1;
	enemy_gun.image_xscale = sign( x - oPlayer.x ) * -1;
	
	var imageAngle  = 0;
	var bulletCreation = 0;
	if (image_xscale < 0) imageAngle	  = 180; else imageAngle     = 0;
	if (image_xscale < 0) bulletCreation  = -20; else bulletCreation  = +20;
	
	firingdelay = firingdelay - 1;

	if (firingdelay < 0 && counter != 0)
	{
		firingdelay = irandom_range(40, 80);
		with (instance_create_layer(x + bulletCreation, y + 8, "Bullet", oBulletEnemy))
		{
			speed = 8;
			direction = imageAngle + random_range(-1,1);
			image_xscale = other.image_xscale;
		}
	}
	with (enemy_vision)
	{
		if (!place_meeting(x, y, oPlayer))
		{ 
			other.counter +=1;
			if (other.counter >= room_speed * 20) 
			{
				other.state = states.idle;
				counter = 0;
			}
		}
	}
	
	#endregion
}
	

