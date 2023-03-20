extends Node2D

signal burubur_mati

var hp = 10

var speed = 1
var CircularMovement = Curve2D.new()
var r = 100
var pos = Vector2(200,200)

func _ready():
	pass 


func _physics_process(delta):
	CircularMovement.add_point(pos+Vector2(r,0),Vector2(0,-r))
	CircularMovement.add_point(pos+Vector2(0,r),Vector2(r,0))
	CircularMovement.add_point(pos+Vector2(-r,0),Vector2(0,r))
	CircularMovement.add_point(pos+Vector2(0,-r),Vector2(-r,0))
	CircularMovement.add_point(pos+Vector2(r,0),Vector2(0,-r))
	CircularMovement.set_bake_interval(1)


func tertembak(body):
	hp -= 1
	if(hp == 0):
		$AnimationPlayer.play("mati")
	
func _die():
	emit_signal("burubur_mati")
	queue_free()
