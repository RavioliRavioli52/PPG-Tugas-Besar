extends Area2D


func _on_box_body_entered(_body):
	$AnimationPlayer.play("taken")

func _die() :
	queue_free()
