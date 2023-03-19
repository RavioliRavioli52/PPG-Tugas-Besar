extends KinematicBody2D

var speed = 500
const movement = Vector2(0,0)


func _ready():
	pass


func _physics_process(delta):
	if(Input.is_action_pressed("atas")):
		movement.y = -speed
	elif(Input.is_action_pressed("bawah")):
		movement.y = speed
	
	if(Input.is_action_pressed("kiri")):
		movement.x = -speed
	elif(Input.is_action_pressed("kanan")):
		movement.x = speed
		
	move_and_slide(movement)
