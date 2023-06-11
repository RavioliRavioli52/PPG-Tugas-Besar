extends Control

func _on_StartButton_pressed():
	get_tree().change_scene("res://tscn/Arena.tscn")


func _on_OptionButton_pressed():
	get_tree().change_scene("res://tscn/OptionMenu.tscn")


func _on_QuitButton_pressed():
	get_tree().quit()
