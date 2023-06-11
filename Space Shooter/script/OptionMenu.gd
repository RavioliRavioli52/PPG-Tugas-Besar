extends Control



func _on_BackBtn_pressed():
	get_tree().change_scene("res://tscn/Menu.tscn")


func _on_CheckBox_toggled(button_pressed):
	OS.window_fullscreen = button_pressed


func _on_Master_value_changed(value):
	volume(0, value)
	

func volume(bus_index, value):
	AudioServer.set_bus_volume_db(bus_index, value)
