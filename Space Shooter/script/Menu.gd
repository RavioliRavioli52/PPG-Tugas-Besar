extends Control

func _on_StartButton_pressed():
	get_tree().change_scene("res://tscn/Arena.tscn")

func _on_OptionButton_pressed():
#	var option = load("res://tscn/Arena.tscn").instance()
#	get_tree().current_scene.add_child(option)
	get_tree().quit()
	
func _on_QuitButton_pressed():
	get_tree().quit()
