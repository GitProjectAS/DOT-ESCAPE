extends Control

func _ready() -> void:
	$TimerLabel.text = "TIME: " + str(GameData.completion_time)
	$LevelLabel.text = "LEVEL: " + str(GameData.current_level)


func _on_menu_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/MainScreen.tscn")


func _on_retry_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/level.tscn")


func _on_next_level_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/level2.tscn")
