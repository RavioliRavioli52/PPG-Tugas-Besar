extends Node2D

signal burubur_mati

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var speed = 1
var CircularMovement = Curve2D.new()
var r = 100
var pos = Vector2(200,200)

func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	CircularMovement.add_point(pos+Vector2(r,0),Vector2(0,-r))
	CircularMovement.add_point(pos+Vector2(0,r),Vector2(r,0))
	CircularMovement.add_point(pos+Vector2(-r,0),Vector2(0,r))
	CircularMovement.add_point(pos+Vector2(0,-r),Vector2(-r,0))
	CircularMovement.add_point(pos+Vector2(r,0),Vector2(0,-r))
	CircularMovement.set_bake_interval(1)


func tertembak(body):
	$AnimationPlayer.play("mati")
	
func _die():
	emit_signal("burubur_mati")
	queue_free()
