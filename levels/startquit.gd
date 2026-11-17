extends Control

func _on_start_pressed() -> void:
	print_debug("Start!")
	get_tree().change_scene_to_file("res://levels/level_0.tscn") 


func _on_quit_pressed() -> void:
	print_debug("Exit!")
	get_tree().quit()
