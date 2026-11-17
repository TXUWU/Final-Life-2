extends Control

func _ready() -> void:
	$VBoxContainer/start.pressed.connect(_on_start_button_pressed)
	$VBoxContainer/quit.pressed.connect(_on_quit_button_pressed)

func _on_start_button_pressed() -> void:
	get_tree().change_scene_to_file("res://levels/level_1/level_1.tscn") 


func _on_quit_pressed() -> void:
	print_debug("Exit!")
	get_tree().quit()
