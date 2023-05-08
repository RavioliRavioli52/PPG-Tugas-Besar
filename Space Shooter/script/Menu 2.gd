extends Control

func _on_Retrybutton_pressed():
	get_tree().change_scene("res://tscn/Arena.tscn")


func _on_ExitButton_pressed():
	get_tree().change_scene("res://tscn/Menu.tscn")
