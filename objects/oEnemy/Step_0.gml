 // Basic Scripts
ScrEnemiesCollision();
ScrEnemiesAnimation(sEnemy,sEnemyRun,sEnemy);


if (state == states.idle)
{
	#region Idle 
	// Behaviour
	counter +=1;
	hspd = 0;
	
	// Transition Triggers
	counter_attack = 30;
	if (counter >= room_speed * 2)
	{
		var change = choose(0,1);
		switch(change)
		{
			case 0 : state = states.wander;
			case 1 : counter = 0; break;
		}  
	}
	
	if (collision_line(x + 100, y, x - 100, y, oPlayer, false, false))
	{
		other.state = states.attack;
	}
	#endregion
}
else if (state == states.wander)
{
	#region Wander
	// Behaviour
	counter +=1;
	
	if (x > begin_position + 10 || x < begin_position - 10) hspd = hspd * -1;
	
	// Transition Triggers
	if (counter >= room_speed * 2)
	{
		var change = choose(0,1);
		switch(change)
		{
			case 0 : state = states.idle;
			case 1 :
				if (hspd == 1) hspd = 1; else hspd = -1;
				counter = 0;
		}
	}

	if (collision_line(x + 100, y, x - 100, y, oPlayer, false, false))
	{
		other.state = states.attack;
	}
	
	#endregion
}
else if (state == states.attack)
{
	#region Attack
	// Behaviour
	hspd = 0;
	counter_attack --;

	if (!collision_line(x + 100, y, x - 100, y, oPlayer, false, false))
	{ 
		counter +=1;
		if (counter >= room_speed * 20) 
		{
			state = states.idle;
			counter = 0;
		}
	}
	else
	{
		image_xscale = sign( x - oPlayer.x ) * -1;
	}

	var imageAngle  = 0;
	var bulletCreation = 0;
	if (image_xscale < 0) imageAngle	  = 180; else imageAngle     = 0;
	if (image_xscale < 0) bulletCreation  = 2; else bulletCreation  = -2;
	
	firingdelay = firingdelay - 1;
	recoil = 0;

	if (counter_attack <= 0)
	{
		if (firingdelay < 0 && counter != 0)
		{	
			recoil = 2;
			firingdelay = irandom_range(60, 80);
			with (instance_create_layer(x + bulletCreation, y + 4, "Bullet", oBulletEnemy))
			{
				speed = 8;
				direction = imageAngle;
				image_xscale = other.image_xscale;
			}
		}
	}

	#endregion
}