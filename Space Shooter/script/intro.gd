extends Node2D

func _ready():
	
	$AnimationPlayer.play("Fade In")
	yield(get_tree().create_timer(6), "timeout")
	$AnimationPlayer.play("Fade Out")
	yield(get_tree().create_timer(3), "timeout")
	get_tree().change_scene("res://tscn/Menu.tscn")
