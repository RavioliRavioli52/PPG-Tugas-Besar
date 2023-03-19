extends Area2D

var plBullet := preload("res://bullet.tscn")

var speed: float = 100
var vel := Vector2(0,0)


func _ready():
	pass


func _physics_process(delta):
	var dirVec: = Vector2(0,0)
	
	if(	Input.is_action_pressed("kiri")):
		dirVec.x = -1
	elif(Input.is_action_pressed("kanan")):
		dirVec.x = 1
	
	if(Input.is_action_pressed("atas")):
		dirVec.y = -1
	elif(Input.is_action_pressed("bawah")):
		dirVec.y = 1	
	
	vel = dirVec.normalized() * speed
	position += vel * delta
	
	if(Input.is_action_just_pressed("shoot")):
		var bullet := plBullet.instance()
		bullet.position = position
		get_tree().current_scene.add_child(bullet)
