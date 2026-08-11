extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$TimerLabel.text = "TIME: " + str(GameData.completion_time)
	$LevelLabel.text = "LEVEL: " + str(GameData.current_level)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_menu_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/MainScreen.tscn")


func _on_retry_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/level.tscn")
