if counter = maxCounter
	{
		counter = 0
		if random(6) > 5 {up = true}
		else {up = false}
	}
	
counter += 1


if up = true {instance_create_layer(x -1, y - 1, waveLayer, oStreak)}
else {instance_create_layer(x -1, y, waveLayer, oStreak)}