extends AnimatedSprite

var speed = 75

var velocty = Vector2()

var stun = false
var hp = 3

func _process(delta):
	if(Global.player != null and stun == false):
		velocty = global_position.direction_to(Global.player.global_position)
	elif(stun):
		velocty = lerp(velocty, Vector2(0, 0), 0.3)

	global_position += velocty * speed * delta

	if(hp <= 0):
		if(Global.camera != null):
			Global.camera.screen_shake(20, 0.1)
		
		Global.points += 10
		queue_free()

func _on_Hitbox_area_entered(area):
	if(area.is_in_group("Enemy_damager")):
		modulate = Color.white
		velocty = -velocty * 6
		hp -= 1
		stun = true
		$Stun_timer.start()
		area.get_parent().queue_free()

func _on_Stun_timer_timeout():
	modulate = Color("f9133e")
	stun =  false
