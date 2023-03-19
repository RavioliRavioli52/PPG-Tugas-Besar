extends Control


func _ready():
	$VBoxContainer/StartButton.grab_focus()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_StartButton_pressed():
	get_tree().change_scene("res://SpaceShip Fight.tscn")


#func _on_OptionButton_pressed():
#	var option = load("res://Option.tscn").intance()
#	get_tree().current_scene.add_child(option)


func _on_QuitButton_pressed():
	get_tree().quit()
