extends Node2D


export var tujuan = Vector2(0,0)
export var awal = Vector2(0,0)
export var kecepatan = 121.0
var pergi = true

func _ready():
	pass

func _physics_process(delta):
	var arah = Vector2(0,0)
	if(pergi == true):
		arah = tujuan - $KinematicBody2D.position
	else:
		arah = awal - $KinematicBody2D.position
	if(arah.length() < kecepatan * delta):
		if(pergi == true):
			pergi = false
		else:
			pergi = true
	else:
		arah = arah.normalized()
		$KinematicBody2D.position += arah * kecepatan * delta


