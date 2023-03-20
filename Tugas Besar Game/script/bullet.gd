extends Node2D


export var speed: float = 1000

func _physics_process(delta):
	position.x += speed * delta
