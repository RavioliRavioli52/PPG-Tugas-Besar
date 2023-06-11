extends Control

var music_bus = AudioServer.get_bus_index("Master")

func _on_BackBtn_pressed():
	get_tree().change_scene("res://tscn/Menu.tscn")


func _on_CheckBox_toggled(button_pressed):
	OS.window_fullscreen = button_pressed


func _on_CheckBox1_toggled(button_pressed):
	AudioServer.set_bus_mute(music_bus, not AudioServer.is_bus_mute(music_bus))
