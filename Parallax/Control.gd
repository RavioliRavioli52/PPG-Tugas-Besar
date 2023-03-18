if (Input.is_action_pressed("Maju")):
		movement.x += accel
		movement.x = min(movement.x , max_speed)
		print("majuuu")
		
	elif(Input.is_action_pressed("Mundur")):
		movement.x -= accel
		movement.x = max(movement.x, -max_speed)
		print("mundurrr")
		
	if (Input.is_action_pressed("Atas")):
		movement.y = max(movement.y - accel, -max_speed)
		print("atasss")
		
	elif (Input.is_action_pressed("Bawah")):
		movement.y = min(movement.y + accel, max_speed)
		print("bawahhh")if (Input.is_action_pressed("Maju")):
		movement.x += accel
		movement.x = min(movement.x , max_speed)
		print("majuuu")
		
	elif(Input.is_action_pressed("Mundur")):
		movement.x -= accel
		movement.x = max(movement.x, -max_speed)
		print("mundurrr")
		
	if (Input.is_action_pressed("Atas")):
		movement.y = max(movement.y - accel, -max_speed)
		print("atasss")
		
	elif (Input.is_action_pressed("Bawah")):
		movement.y = min(movement.y + accel, max_speed)
		print("bawahhh")
