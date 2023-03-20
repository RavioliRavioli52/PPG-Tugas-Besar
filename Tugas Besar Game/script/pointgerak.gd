extends Area2D

signal point_keambil

func _on_Node2D_body_exited(body):
	$AnimationPlayer.play("menghilang")

func _die():
	emit_signal("point_keambil")
	queue_free()
