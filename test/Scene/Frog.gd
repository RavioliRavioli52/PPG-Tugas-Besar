extends KinematicBody2D

export var speed = 100
var movement = Vector2(0,0)
const accel = 50
const max_speed = 100
const gravity = 10 
var jump_force = -250
const max_jump = 2
var jump_count = 0

func _physics_process(delta):
	
	if(not is_on_floor()):
		movement.y += gravity
		print(movement.y)
		
	else:
		movement.y = 0
		jump_count = 0
		movement.x = lerp(movement.x, 0, 0.1)
	
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
		print("bawahhh")
#		if (is_on_floor()):
#			$Cam.offset.y = clamp($Cam.offset.y + 10, 0, 100)
#	else:
#		if ($Cam.offset.y != 0):
#			$Cam.offset.y = lerp($Cam.offset.y , 0, 0.1)
			
	if (Input.is_action_just_pressed("Lompat") and
		(is_on_floor() or (jump_count < max_jump))):
		movement.y = jump_force
		jump_count += 1
		
	if (is_on_ceiling()):
		print("di atap")
		movement.y = 0
		
	elif (is_on_wall()):
		print("di tembok")
	
	move_and_slide_with_snap(movement, Vector2(0, -2) , Vector2(0,-1), false, 4, PI/4, false)
	
	if (get_slide_count() >0):
		for i in get_slide_count():
			var benda = get_slide_collision(i)
			if (benda.collider is RigidBody2D) :
				benda.collider.apply_central_impulse(movement)
