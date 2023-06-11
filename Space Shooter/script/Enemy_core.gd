extends AnimatedSprite

export(int) var speed = 75

var velocty = Vector2()

var stun = false


export(int) var hp = 3
export(int) var knockback = 600
export(int) var screen_shake = 120

onready var current_color = modulate

var blood_particles = preload("res://tscn/Blood_particles.tscn")

func _process(_delta):
	if(hp <= 0):
		if(Global.camera != null):
			Global.camera.screen_shake(screen_shake, 0.2)
		
		Global.points += 10
		if(Global.node_creation_parent != null):	
			var blood_particles_instance = Global.instance_node(blood_particles, global_position, Global.node_creation_parent)
			blood_particles_instance.rotation = velocty.angle()
			blood_particles_instance.modulate = Color.from_hsv(current_color.h, 0.75, current_color.v)
		queue_free()

func basic_movement_towards_player(delta):
	if(Global.player != null and stun == false):
		velocty = global_position.direction_to(Global.player.global_position)
		global_position += velocty * speed * delta
	elif(stun):
		velocty = lerp(velocty, Vector2(0, 0), 0.3)
		global_position += velocty * delta


func _on_Hitbox_area_entered(area):
	if(area.is_in_group("Enemy_damager")):
		modulate = Color.white
		#velocty = -velocty * knockback
		hp -= area.get_parent().damage
		stun = true
		$Stun_timer.start()
		area.get_parent().queue_free()
		
func _on_Stun_timer_timeout():
	modulate = current_color
	stun =  false
