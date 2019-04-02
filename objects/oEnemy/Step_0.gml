
// Basic Scripts
ScrCollision();
ScrAnimation(sEnemy,sEnemyRun,sEnemy);


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
	if (collision_rectangle(100, 10, 100, 5, oPlayer, false, false))
	{
		states = states.alert;
	}
	#endregion
}
else if (state == states.wander)
{
	#region Wander
	// Behaviour
	counter +=1;
	
	if (x > beginPosition + 20 || x < beginPosition - 20) hspd = hspd * -1;
	
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
	if (collision_rectangle(100, 10, 100, 5, oPlayer, false, false))
	{
		states = states.alert;
	}
	//srpite
	
	#endregion
}


